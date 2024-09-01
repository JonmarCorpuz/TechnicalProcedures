#
locals {
  <local_variable_name> = {
    Name       = "<value>"
    Env        = "<value>"
    ManagedBy  = "<value>"
    Project    = "<value>"
    CostCenter = "<value>"
  }
}

# Terraform block
terraform {
  required_providers {
    aws {
      source  = <provider_source>
      version = "~> <version>"
    }
  }

  backend "s3" {
    bucket           = "<bucket_id>"
    <key>            = "<path_to_state_file>"
    <region>         = "<aws_region>"
    <dynamodb_table> = "<dynamodb_table>" // State locking is done via a DynamoDB table
  }

}

# Default Provider
provider "aws" {
  region = "<aws_region>"
}

# Additional Provider (Ensure that it was specified in the Terraform block)
provider "aws" {
  region = "<aws_region>"
  alias  = "<alias_name>"
}

# Random ID
resource "random_id" "<resource_id>" {
  byte_length = <byte_length>
}

# S3 Bucket 
resource "aws_s3_bucket" "<resource_id>" {
  bucket   = "<bucket_name>" or "<bucket_name>-${random_id.<resource_id>.hex}"
  provider = aws.<alias_name>

  tags = local.<local_variable_name>
}

# S3 Bucket Public Access Block
resource "aws_s3_bucket" "<resource_id>" {
  bucket                  = aws_s3_bucket.<resource_id>.id
  block_public_acls       = {true|false}
  block_public_policy     = {true|false}
  ignore_public_acls      = {true|false}
  restrict_public_buckets = {true|false}
}

# S3 Bucket Policy (Requires the user to have the PutBucketPolicy permission)
resource "s3_bucket_policy" "<resource_id>" {
  bucket = aws_s3_bucket.<s3_bucket_resource_id>.id

  policy = jsonencode({
    Version   = "<version>"
    Statement = [
      {
        Sid       = "<statement_id>"
        Effect    = "{Allow|Deny}"
        Principal = "{*|<user>|<group>}"
        Action    = "s3:<action>"
        Resource  = "${aws_s3_bucket.<s3_bucket_resource_id>.arn}/*" || "aws:aws:s3:::${aws_s3_bucket.<s3_bucket_resource_id>.id}/*"
      }
    ]
  })

  depends_on = [aws_s3_bucket.<s3_bucket_resource_id>, aws_s3_bucket.<s3_bucket_policy_resource_id>]
}

# VPC
resource "aws_vpc" "<resource_id>" {
  cidr_block = "<ipv4_address>/<prefix_length>"

  tags = local.<local_variable_name>
}

# VPC Subnet
resource "aws_subnet" "<resource_id>" {
  vpc_id     = aws_vpc.<vpc_id>.id
  cidr_block = "<ipv4_address>/<prefix_length>"

  tags = local.<local_variable_name>
}

# Internet Gateway
resource "aws_internet_gateway" "<resource_id>" {
  vpc_id = aws_vpc.<vpc_id>.id

  tags = local.<local_variable_name>
}

# Route Table
resource "aws_route_table" "<resource_id>" {
  vpc_id = aws_vpc.<vpc_id>.id

  route {
    cidr_block = "<ipv4_address>/<prefix_length>" 
    gateway_id = aws_internet_gateway.<resource_id>.id
  }

  tags = local.<local_variable_name>
}

# Associate a route table to a subnet
resource "aws_route_table_association" "<resource_id>" {
  subnet_id      = aws_subnet.<subnet_resource_id>.id
  route_table_id = aws_route_table.<route_table_resource_id>.id
} 

# Security Group
resource "aws_security_group" "<resource_id>" {
  description = "<description>"
  name        = "<security_group_name>"
  vpc_id      = aws_vpc.<vpc_id>.id

  tags = local.<local_variable_name>
}

# VPC Security Group Ingress Rule
resource "aws_vpc_security_group_ingress_rule" "<resource_id>" {
  security_group_id = aws_security_group.<resource_id>.id
  cidr_ipv4         = "<ipv4_address>/<prefix_length>"
  from_port         = <port_number>
  to_port           = <port_number>
  ip_protocol       = "{tcp|udp}"

  tags = local.<local_variable_name>
}

# EC2 Instance
resource "aws_instance" "<resource_id>" {
  ami                         = "<ami_id>"
  associate_public_ip_address = {true|false}
  instance_type               = "<instance_type>"
  subnet_id                   = aws_subnet.<subnet_name>.id
  vpc_security_group_ids      = [aws_security_group.<security_group_resource_id>.id]

  root_block_device {
    delete_on_termination = {true|false}
    volume_size           = <volume_size>
    volume_type           = "<volume_type>"
  }

  lifecycle {
    create_before_destroy = {true|false}
    #ignore_changes = [<element>]
  }

  tags = local.<local_variable_name>
}
