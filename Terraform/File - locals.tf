# Local Variables
locals {
  project       = "<project_folder_name>"
  project_owner = "<project_id>"
  cost_center   = "<cost_center>"
  managed_by    = "Terraform"
  sensitive_tag = {true|false}
}

# Local Object Variables
locals {
  <local_object_name> = {
    project       = "<project_folder_name>"
    project_owner = "<project_id>"
    cost_center   = "<cost_center>"
    managed_by    = "Terraform"
    sensitive_tag = {true|false}
  }
}
