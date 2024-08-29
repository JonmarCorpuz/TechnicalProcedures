terraform {
  required_providers {
    aws {
      source = <source>
      version = "~> <version>"
    }
  }
}

// VPC
resource "aws_vpc" "<resource_name>" {
  cidr_block = "<ipv4_address>/<prefix_length>"
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
