```Bash
# Deploy a Cloud Function
gcloud functions deploy <function_name> [--docker-registry-container-registry|--docker-registry-artifact-registry] [--docker-repository <repository_path>] [--gen2] [--runtime <runtime_environment>] [--max-instances <number>] [--minimum-instances <number>]

# Deploy a Cloud Function and associate services 
gcloud functions deploy --service-account <service_account>

# Deploy a Cloud Function and specify the source code
gcloud functions deploy --source <source_path>

# Deploy a Cloud Function and configure a trigger
gcloud functions deploy {--triger-bucket|--trigger-http|--trigger-topic|--trigger-event-filters}
```
