```Bash
#
gcloud dns managed-zones create <zone_name> [--description <description>] [--dns-name <dns_name>] [--visibility {private|public}]

# Create a private zone and specify a list of networks that the it should be visible in
gcloud dns managed-zones create <zone_name> [--description <description>] [--dns-name <dns_name>] --visibility private [--networks <network_name>]
```

```Bash
# Start a transaction for a specific zone to start creating DNS records for it
gcloud dns record-sets transaction start --zone <zone_name>

#
gcloud dns record-sets transaction add --name=<record_nme> --ttl <value> --type <dns_record_type> --zone=<zone_name>
```
