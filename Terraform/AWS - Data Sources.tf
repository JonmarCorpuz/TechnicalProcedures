# External AMI
data "aws_ami" "<data_source_id>" {
  most_recent = {true|false}
  owner       = ["<owner_id>"]
  provider    = <provider>

  filter {
    name   = "name"
    values = ["<ami_id>"]
  }

  filter {
    name   = "virtualization_type"
    values = ["<virtualization_type>"]
  }
}

# 
data "aws_caller_identity" "<data_source_id>" {
  
}

#
data "aws_region" "<data_source_id>" {
  provider = aws.<provider_resource_id>
}

# 
data "aws_vpc" "<data_source_id>" {
  tags = {
    Env = "<environment_tag>"
  }
}

#
data "aws_availability_zones" "<data_source_id>" {
  state = "available"
}

# 
data "aws_iam_policy_document" "<data_source_id>" {

}
