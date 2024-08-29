// Terraform block
terraform {
  required-providers {
    <provider> = {
      <identifier> = "<value>"
    }
  }
}

// Resource block (Actively managed by us and our Terraform project)
resource "<resource_type>" "<resource_name>" {
  <identifier> = "<value>"
}

// Data block, which is used to retrieve data from remote APIs (Managed somewhere else and we just want to use it in our project)

data "<resource_type>" "<resource_name>" {
  <identifier> = "<value>"
}

// Variable block (Usage: <identifier> = var.<variable_name>)
variables "<variable_name>" {
  type = <data_type>
  description = "<description>"
  default = "<default_value>"
} 

// Output block
output "<label>" {
  value = <resource_type>.<resource_name>.id
}

// Locals block (Usage: local.<local_variable>
locals {
  <local_variable> = "<local_value>"
}

// Module block 
module "<module_name>" {
  source = "<module_source>"
}
