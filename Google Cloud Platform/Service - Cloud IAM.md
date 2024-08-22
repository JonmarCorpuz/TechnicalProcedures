```Bash
#
gcloud config set project <project_id>

#
gcloud compute project-info describe

#
gcloud auth login

#
gcloud auth revoke

#
gcloud auth list
```

IAM Policy
```Bash
#
gcloud projects get-iam-policy <project_id>

# Add an IAM policy binding for a specific user
gcloud projects add-iam-policy-binding <project_id> --member={user:<user_id>} --role=roles/<role>

# Add an IAM policy binding from a specific user
gcloud projects remove-iam-policy-binding <project_id> --member={user:<user_id>} --role=roles/<role>

# Override an existing IAM policy to set a new one
gcloud projects set-iam-policy <project_id> 
```

IAM Roles
```Bash
# Describe an IAM role
gcloud iam roles describe

# Create an IAM role
gcloud iam roles create

# Copy an existing IAM role
gcloud iam roles copy --source=roles/<role> --destination=<iam_role_name> --dest-project=<project_id>
```
