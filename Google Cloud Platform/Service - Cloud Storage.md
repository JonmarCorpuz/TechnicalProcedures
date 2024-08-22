```Bash
#
gcloud config set project <project_id>

# Create a Cloud Storage Bucket
gsutil mb gs://<bucket_name>
```

```Bash
# Copy an object from one bucket to another
gsutil cp gs://<source_bucket/<object_path> gs://<destination_bucket>/<destination_path>

# Copy an object from one bucket to another while encrypting its traffic
gsutil cp gs://<source_bucket/<object_path> gs://<destination_bucket>/<destination_path> -o 'GSUtil:encryption_key=<encryption_key>'

# Rename an object within a bucket
gsutil mv gs://<bucket_name>/<old_object_name> gs://<bucket_name>/<new_object_name>

# Move an object from one bucket to another
gsutil mv gs://<source_bucket_name>/<old_object_name> gs://<destination_bucket_name>/<new_object_name>

# Change the storage class of a specific object within a bucket
gsutil rewrite -s <new_storage_class> gs://<bucket_name>/<object_path>

# Upload an object to a bucket
gsutil cp <local_path> gs://<destination_bucket_name>/

# Download an object from a bucket
gsutil cp gs://<bucket_name>/<path_to_object> <local_destination>

# Enable/Disable versioning
gsutil versioning set {on|off} gs://<bucket_name>

#
gsutil uniformbucketlevelaccess set {on|off} gs://<bucket_name>

#
gsutil acl ch -u {<user>|<scope>}:{R|W|O} gs://<bucket_name>/<object_path>

#
gsutil acl set <json_file> gs://<bucket_name>

# Setup IAM role
gsutil iam ch <member_type>:<member_nanme>:<iam_role> gs://<bucket_name>

#
gsutil signurl -d <minutes>m <service_account_key> gs://<bucket_name>/<object_path> 
```

```Bash
# List all active objects within a bucket
gsutil ls gs://<bucket_name>

# List all current and non-current object versions within a bucket
gsutil ls -a gs://<bucket_name>
```

Signed URL
```Bash
# Step 1: Create a key for the service account with the desired permissions

# Step 2: Create a signed URL with the created key
gsutil signurl -d <time> <key> gs://<bucket_name>/<object_path>
```
