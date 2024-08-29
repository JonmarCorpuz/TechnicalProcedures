# AWS Authentication

Prerequisites: Create a CLI access key on AWS for the account you want to use

.env
```Bash
#
export AWS_ACCESS_KEY_ID=<aws_access_key_id>
export AWS_SECRET_ACCESS_KEY=<aws_secret_access_key>

# Optional
export AWS_DEFAULT_REGION=<aws_default_region>
```

.gitignore
```Bash
.env
.terrform/
```

Load the credentials
```Bash
# Load the environmental variables that are in the .env file into our current terminal
source .env
```
