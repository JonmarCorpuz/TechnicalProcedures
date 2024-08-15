```Bash
# Deploy a new container
gcloud run deploy <service_name> --image <image_url> [--revision-suffix <version_id>]
```

```Bash
# Adjust traffic assignments (Must add up to 100)
gcloud run services update-traffic <service_name> --to-revisions=<version_id>=<0-100>,<version_id>=<0-100>
```

```Bash
# List available revisions
gcloud run revisions list
```
