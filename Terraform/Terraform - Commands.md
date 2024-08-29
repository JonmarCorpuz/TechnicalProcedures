# Terraform Workflow

```Terraform
# Ensure that you're authenticated
source .env

# Initialize Terraform in the directory where your Terrform configuration file is
terraform init 
```

```Terraform
# Create an execution plan
terraform plan

# Create an execution plan and write it to a file, which can be used in the apply stage
terraform plan -out <filename>
```

```Terraform
# Apply an execution plan
terraform apply

# Apply an execution plan specified in a file
terraform apply <filename>
```

```Terraform
# Destroy all resources tracked in the state file
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
# Provide human-readable output from a state or plan file
terraform show

# List all resources in the state file
terraform state list
```
