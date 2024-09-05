# Locals Block (Usage: local.<local_variable>)
locals {
  <variable> = "<value>"
}

# Terraform Block
terraform {
  required_version = "<terraform_version>"

  backend "<backend>" {
    <variable> = "<argument>"
  }

  required-providers {
    <provider> = {
      <variable> = "<argument>"
    }
  }
}

# Resource Block (Actively managed by us and our Terraform project)
resource "<resource_type>" "<resource_id>" {
  <variable> = "<argument>"
}

# Data Block, which is used to retrieve data from remote APIs (Managed somewhere else and we just want to use it in our project)
data "<resource_type>" "<resource_id>" {
  <variable> = "<argument>"
}

# Variable Block (Usage: <variable> = var.<variable_name>)
variables "<variable_name>" {
  type        = <data_type>
  description = "<description>"
  default     = "<default_value>"

  // Validation Block
  validation {
    condition     = <condition>
    error_message = "<error_message>"
  }
} 

# Output Block
output "<label>" {
  value = <resource_type>.<resource_id>.id
}

# Module Block 
module "<module_name>" {
  source      = "<module_source>"
  //<attribute> = <value>
}

# Move Block
moved {
  from = //idk
  to   = //idk
}

# Import Block
import {
  to = //idk
  id = //idk
}

# Remove Block
removed {
  from = <resource_type>.<resource_id>

  lifecycle {
    destroy = {true|false}
  }
}
