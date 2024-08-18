```Bash
#
gcloud config set project <project_id>

#
gcloud compute disks create <disk_name> --zone=<zone> [--size=<size>] [--type=<disk_type>] [--image=<value>] [--image-family=<value>] [--source-disk=<value>] [--source-snapshot=<value>] [--kms-key=<value>] [--kms-project=<value>] 
```

```Bash
#
gcloud compute disks resize <disk_name> --size=<size> --zone=<zone>
```

Snapshots
```Bash
# Take a snapshot of a disk
gcloud compute disks snapshot <disk_name> --zone=<zone> --snapshot-names=<snapshot_name>

#
gcloud compute disks snapshot delete <snapshot_name>
```

Machine Images
```Bash
#
gcloud compute images create <image_name>

# Create a machine image from a disk
gcloud compute images create <image_name> --source-disk=<disk_name> --source-disk-zone=<zone>

# Create a machine image from a snapshot
gcloud compute images create --source-snapshot=<source_snapshot>

# Create a machine image from another machine image
gcloud compute images create --source-image=<source_image> --source-image-project=<source_image_project>

# Create a machine image from the latest non deprecated image from a family
gcloud compute images create --source-image-family=<source_image_family> --source-image-project=<source_image_project>

# Delete an image
gcloud compute images delete <image_name>

# Deprecate an image
gcloud compute images deprecate <image_name> --state=DEPRECATED

# Export virtual disk images
gcloud compute images export --image=<image_name> --destination-uri=<destination_uri> --export-format=<export_format> --project=<project_id>

#
gcloud compute images import

#
gcloud compute images update
```

```Bash
#
gcloud compute disks list

#
gcloud compute disk-types list

#
gcloud compute snapshots list

#
gcloud compute snapshots describe <snapshot_name>

#
gcloud compute images list
```
