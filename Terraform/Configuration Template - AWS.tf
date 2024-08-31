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

provider "aws" {
  region = "<aws_region>"
  alias = "<alias_name>"
}

// S3 Bucket 
resource "aws_s3_bucket" "<resource_name>" {
  bucket = "<bucket_name>"
  provider = aws.<alias_name>

  tags = {
    Environment = "<environment_name>"
  }
}

// VPC
resource "aws_vpc" "<resource_name>" {
  cidr_block = "<ipv4_address>/<prefix_length>"

  tags = {
    Name = "<value>"
    Env = "<value>"
  }
}

// VPC Subnet
resource "aws_subnet" "<resource_name>" {
  vpc_id = aws_vpc.<vpc_id>
  cidr_block = "<ipv4_address>/<prefix_length>"
}

// Internet Gateway
resource "aws_internet_gateway" "<resource_name>" {
  vpc_id = aws_vpc.<vpc_id>
}

// Route Table
resource "aws_route_table" "<resource_name>" {
  vpc_id = aws_vpc.<vpc_id>

  route {
    cidr_block = "<ipv4_address>/<prefix_length>" // Addresses to route
    gateway_id = aws_internet_gateway.<resource_name>.id
  }
}

// Associate a route table to a subnet
resource "aws_route_table_association" "<resource_name>" {
  subnet_id = aws_subnet.<subnet_resource_name>.id
  route_table_id = aws_route_table.<route_table_resource_name>.id
} 

// VM Instance
resource "aws_instance" "<resource_name>" {
  ami = "<ami_image>"
  instance_type = "<instance_type>"
}
