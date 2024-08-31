// 
locals {
  common_tags = {
    Name = "<value>"
    Env = "<value>"
    ManagedBy = "<value>"
    Project = "<value>"
    CostCenter = "<value>"
  }
}

// Terraform block
terraform {
  required_providers {
    aws {
      source = <source>
      version = "~> <version>"
    }
  }

  backend "{s3}" {
    bucket = "<bucket_id>"
    <key> = "<path_to_state_file>"
    <region> = "<aws_region>"
    <dynamodb_table> = "<dynamodb_table>" // State locking is done via a DynamoDB table
  }

}

// Default Provider
provider "aws" {
  region = "<aws_region>"
}

// Additional Provider
provider "aws" {
  region = "<aws_region>"
  alias = "<alias_name>"
}

// S3 Bucket 
resource "aws_s3_bucket" "<resource_name>" {
  bucket = "<bucket_name>"
  provider = aws.<alias_name>

  tags = local.common_tags
}

// VPC
resource "aws_vpc" "<resource_name>" {
  cidr_block = "<ipv4_address>/<prefix_length>"

  tags = local.common_tags
}

// VPC Subnet
resource "aws_subnet" "<resource_name>" {
  vpc_id = aws_vpc.<vpc_id>.id
  cidr_block = "<ipv4_address>/<prefix_length>"

  tags = local.common_tags
}

// Internet Gateway
resource "aws_internet_gateway" "<resource_name>" {
  vpc_id = aws_vpc.<vpc_id>.id

  tags = local.common_tags
}

// Route Table
resource "aws_route_table" "<resource_name>" {
  vpc_id = aws_vpc.<vpc_id>.id

  route {
    cidr_block = "<ipv4_address>/<prefix_length>" 
    gateway_id = aws_internet_gateway.<resource_name>.id
  }

  tags = local.ocmmon_tags
}

// Associate a route table to a subnet
resource "aws_route_table_association" "<resource_name>" {
  subnet_id = aws_subnet.<subnet_resource_name>.id
  route_table_id = aws_route_table.<route_table_resource_name>.id
} 

// EC2 Instance
resource "aws_instance" "<resource_name>" {
  ami = "<ami_id>"
  associate_public_ip_address = {true|false}
  instance_type = "<instance_type>"
  subnet_id = aws_subnet.<subnet_name>.id
  security_group = 

  root_block_device {
    delete_on_termination = {true|false}
    volume_size = <volume_size>
    volume_type = "<volume_type>"
  }
}
