```Bash
#
gcloud config set project <project_name>

# Create an application
gcloud app create --region=<region> 

# Deploy application
gcloud app deploy [--promote]

# Deploy an application and assign a version to it
gcloud app deploy --version=<version_id>

# Deploy a new version without switching traffic to it
gcloud app deploy --version=<version_id> --no-promote

# Deploy a new version and stop sending traffic to the old version
gcloud app deploy --stop-previous-version
```

```Bash
# Split traffic between versions (Traffic must equal to 1)
gcloud app services set-traffic <service> --splits=<version_id>=<decimal_value>,<version_id>=<decimal_value> [--split-by={cookie|ip|random}]

#
gcloud app services list

#
gcloud app services browse <service> [--version=<version_id>]

#
gcloud app services delete <service>

#
gcloud app services describe <service>
```

```Bash
#
gcloud app deploy dispatch.yaml

# Deploy Docker image
gcloud app --image-url <image_url>
```

```Bash
#
gcloud app instances delete <instance_id> [--service=<service>] [--version=<version_id>]

#
gcloud app instances describe --service=<service> --version=<version_id>

#
gcloud app instances list

#
gcloud app instances scp --service=<service> --version=<version_id> --recurse <local_directory_path> <instance_id>:<target_directory_path>

#
gcloud app instances ssh --service=<service> --version=<version_id> <instance_name>
```

```Bash
#
gcloud app {instances|regions|services|versions} list

#
gcloud app logs tail

#
gcloud app browse [--version=<version_id>]

#
gcloud app {logs|open-console} [--service="<service>" --version=<version_id>
```
