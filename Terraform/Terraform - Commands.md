# Terraform Workflow

Terraform Initialization Phase
```Terraform
# Ensure that you're authenticated
source .env

# Initialize Terraform in the directory where your Terrform configuration file is
terraform init 
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

# Troubleshooting

```Terraform
# Provide help information about Terraform commands
terraform [command] -help
```

State File
```Terraform
# Provide human-readable output of a state or plan file
terraform show [filename]

# List all resources in the state file
terraform state list
```
