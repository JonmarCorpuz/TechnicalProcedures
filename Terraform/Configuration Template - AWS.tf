# Local Variables
locals {
  project       = "<project_folder_name>"
  project_owner = "<project_id>"
  cost_center   = "<cost_center>"
  managed_by    = "Terraform"
}

# Local Object Variables
locals {
  <local_object_name> = {
    Name       = "<value>"
    Env        = "<value>"
    ManagedBy  = "<value>"
    Project    = "<value>"
    CostCenter = "<value>"
  }
}

# Terraform Block
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
  region = "<aws_region>" || var.<variable_name>
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
  bucket   = "<bucket_name>" || "<bucket_name>-${random_id.<resource_id>.hex}"
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

# S3 Bucket Website Configuration
resource "aws_s3_bucket_website_configuration" "<resource_id>" {
  bucket = aws_s3_bucket.<s3_bucket_resource_id>.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

# S3 Object
resource "aws_s3_object" "<resource_id>" {
  bucket       = aws_s3_bucket.<s3_bucket_resource_id>.id
  key          = "<object_name>"
  source       = "<path_to_object>"
  etag         = filemd5("<path_to_object>")
  content_type = {text/html}
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

# Multiple VPC Subnets Using Meta-Arguments
resource "aws_subnet" "<resource_id>" {
  count      = <number_of_subnets>
  vpc_id     = aws_vpc.<vpc_id>.id
  cidr_block = "<ipv4_address_with_count_index>/<prefix_length>"  // Ex: cidr_block = "10.0.${count.index}.0/24"

  tags = {
    Project = <project_id>
    Name    = "<subnet-name>-${count.index}"
  }
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
  ami                         = "<ami_id>" || data.aws_ami.<ami_data_source_id>.id
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

# Create IAM Users Using a YAML File
locals {
  users_from_yaml = yamldecode(file("${path.module}/<user_roles>.yaml")).users
}

resource "aws_iam_user" "<resource_id>" {
  for_each = toset(local.users_from_yaml[*].username)
  name     = each.value 
}

resource "aws_iam_user_login_profile" "<resource_id>" {
  for_each                = aws_iam_user.users
  user                    = each.value.name
  password_length         = <password_length>
  password_reset_required = {true|false}

  lifecycle {
    # Changing any of the following keys will recreate the login profile for each user, so ignoring them prevents that from happening
    ignore_changes = [
      password_length,
      password_reset_required,
      pgp_key
    ]
  }
}
