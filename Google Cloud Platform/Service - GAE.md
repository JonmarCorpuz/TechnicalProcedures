```Bash
#
gcloud config set project <project_name>

# Deploy application
gcloud app deploy [--version=<version_id>]

# Deploy a new version without switching traffic to it
gcloud app deploy --version=<version_id> --no-promote

# Split traffic between versions (Traffic must equal to 1)
gcloud app services set-traffic --splits=<version_id>=<decimal_value>,<version_id>=<decimal_value> [--split-by={cookie|ip|random}]
```

```Bash
#
gcloud app deploy dispatch.yaml
```

```Bash
#
gcloud app {instances|services|versions} list

#
gcloud app browse [--version=<version_id>]
```
