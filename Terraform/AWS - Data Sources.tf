# External AMI
data "aws_ami" "<resource_id>" {
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
