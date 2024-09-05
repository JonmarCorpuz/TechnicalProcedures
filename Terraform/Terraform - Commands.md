# Terraform Workflow

Terraform Initialization Phase
```Terraform
# Ensure that you're authenticated
source .env

# Initialize Terraform in the directory where your Terrform configuration file is
terraform init

#
terraform init -upgrade

# 
terraform init -migrate-state

#
terraform init -backeng-config=<.tfbackend_file> -migrate-state
```

Terraform Plan Phase
```Terraform
# Check the syntax of the Terraform file to verify if it's internally consistent and doesn't contain invalid values
terraform validate

# Automatically format Terraform files to a standard style to ensure consistency and readability
terraform fmt [-recursive]

# Create an execution plan
terraform plan

# Create an execution plan and write it to a file, which can be used in the apply stage
terraform plan -out <filename>

#
terraform plan -var=<variable_id>=<value>

#
terraform plan -var-file="tfvars_file"
```

Terraform Apply Phase
```Terraform
# Apply an execution plan
terraform apply [-auto-approve]

# Apply an execution plan specified in a file (Allows you to skip the plan phase)
terraform apply <filename>
```

Terraform Destroy Phase
```Terraform
# Destroy all resources that are in the Terraform configuration
terraform apply -destroy [-auto-approve]

# Destroy all resources that are in the Terraform configuration
terraform destroy
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Terraform State Manipulation

Refactoring Resources in Terraform
```Terraform
# Automatically update the reference in your state file whenever you change a resource ID
terraform state mv [-dry-run] <resource_type>.<old_resource_id> <resource_type>.<new_resource_id>

#
terraform state mv <resource_type>.<list_id> '<resource_type>.<list_id>[<index>]'

#
terraform mv '<resource_type>.<list_id>[<index>]' '<resource_type>.<list_id>["<new_resource_id>"]'
```

Importing Existing Resources into Terraform
```Terraform
#
terraform import <resource_type>.<resource_id> '<resource_name>'
```

Removing Resources from Your Terraform Configuration Without Destroying Them
```Terraform
#
terraform state rm [-dry-run] <resource_type>.<resource_id>
```

Resource Tainting in Terraform
```Terraform
#
terraform taint <resource_type>.<resource_id>

#
terraform untaint <resource_type>.<resource_id>

#
terraform apply -replace=<resource_type>.<resource_id>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Terraform Operations

Environmental Variables
```Terraform
#
export TF_VARS_<variable_id>=<value>
```

Creating an Alias
```Terraform
#
alias <alias_name>='<value>'

# Use an alias
<alias_name>
```

Output Terraform Configurations
```Terraform
#
terraform output <output_block_id>

#
terraform output -json
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Terraform Workspaces

Create Terraform Workspaces
```Terraform
#
terraform workspace new <workspace_name>
```

Select a Terraform Workspace
```Terraform
#
terraform workspace select <workspace_name>

# 
export TF_WORKSPACE=<workspace_name> // Takes precedence over the command above
unset TF_WORKSPACE
```

Delete a Terraform Workspace
```Terraform
# Delete an empty workspace
terraform workspace delete <workspace_name>

# Force delete a workspace
terraform workspace delete <workspace_name> -force

#
terraform workspace select <workspace_name>
terraform destroy
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Terraform Cloud

Trigger Terraform Runs 
```Terraform
#
terraform login

#
terraform apply
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)


# Troubleshooting

Terraform Version
```Terraform
# Display the version of the installer Terraform and providers
terraform version
```

Terraform Command Help
```Terraform
# Provide help information about Terraform commands
terraform [command] -help
```

Terraform State File
```Terraform
# Provide human-readable output of a state or plan file
terraform show [filename]

#
terraform state show

# List all resources in the state file
terraform state list
```

Terraform Workspaces
```Terraform
#
terraform workspace show

#
terraform workspace list
```
