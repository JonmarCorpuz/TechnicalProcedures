# Local Variables
locals {
  project       = "<project_name>"
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
