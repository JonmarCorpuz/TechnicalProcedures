// Terraform block
terraform {
  required_providers {
    aws {
      source = <source>
      version = "~> <version>"
    }
  }
}

provider "aws" {
  region = "<aws_region>"
}

// VPC
resource "aws_vpc" "<resource_name>" {
  cidr_block = "<ipv4_address>/<prefix_length>"

  tags = {
    Name = "<vpc_name>"
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
