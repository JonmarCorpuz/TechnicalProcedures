# Instances

```Bash
#
gcloud config set project <project_name>
```

# Instance Templates

```Bash
gcloud compute instance-templates create <INSTANCE_TEMPLATE_NAME> \

  #
  [--accelerator=[count=COUNT],[type=TYPE]]

  #
  [--no-boot-disk-auto-delete]

  #
  [--boot-disk-device-name=BOOT_DISK_DEVICE_NAME]

  #
  [--boot-disk-interface=BOOT_DISK_INTERFACE]

  #
  [--boot-disk-provisioned-iops=BOOT_DISK_PROVISIONED_IOPS]

  #
  [--boot-disk-provisioned-throughput=BOOT_DISK_PROVISIONED_THROUGHPUT]

  #
  [--boot-disk-size=BOOT_DISK_SIZE]

  #
  [--boot-disk-type=BOOT_DISK_TYPE]

  #
  [--can-ip-forward]

  #
  [--configure-disk=[PROPERTY=VALUE,…]]

  #
  [--create-disk=[PROPERTY=VALUE,…]]

  #
  [--description=DESCRIPTION]

  #
  [--discard-local-ssds-at-termination-timestamp=DISCARD_LOCAL_SSDS_AT_TERMINATION_TIMESTAMP]

  #
  [--disk=[auto-delete=AUTO-DELETE],[boot=BOOT],[device-name=DEVICE-NAME],[interface=INTERFACE],[mode=MODE],[name=NAME]]

  #
  [--[no-]enable-nested-virtualization]

  #
  [--[no-]enable-uefi-networking]

  #
  [--external-ipv6-address=EXTERNAL_IPV6_ADDRESS]

  #
  [--external-ipv6-prefix-length=EXTERNAL_IPV6_PREFIX_LENGTH]

  #
  [--instance-template-region=INSTANCE_TEMPLATE_REGION]

  #
  [--instance-termination-action=INSTANCE_TERMINATION_ACTION]

  #
  [--internal-ipv6-address=INTERNAL_IPV6_ADDRESS]

  #
  [--internal-ipv6-prefix-length=INTERNAL_IPV6_PREFIX_LENGTH]

  #
  [--ipv6-network-tier=IPV6_NETWORK_TIER]

  #
  [--key-revocation-action-type=POLICY]

  #
  [--labels=[KEY=VALUE,…]]

  #
  [--local-ssd=[device-name=DEVICE-NAME],[interface=INTERFACE],[size=SIZE]]

  #
  [--local-ssd-recovery-timeout=LOCAL_SSD_RECOVERY_TIMEOUT]

  #
  [--machine-type=MACHINE_TYPE]

  #
  [--maintenance-policy=MAINTENANCE_POLICY]

  #
  [--max-run-duration=MAX_RUN_DURATION]

  #
  [--metadata=KEY=VALUE,[KEY=VALUE,…]]

  #
  [--metadata-from-file=KEY=LOCAL_FILE_PATH,[…]]

  #
  [--min-cpu-platform=PLATFORM]

  #
  [--min-node-cpu=MIN_NODE_CPU]

  #
  [--network=NETWORK]

  #
  [--network-interface=[PROPERTY=VALUE,…]]

  #
  [--network-performance-configs=[PROPERTY=VALUE,…]]

  #
  [--network-tier=NETWORK_TIER]

  #
  [--performance-monitoring-unit=PERFORMANCE_MONITORING_UNIT]

  #
  [--preemptible]

  #
  [--private-ipv6-google-access-type=PRIVATE_IPV6_GOOGLE_ACCESS_TYPE]

  #
  [--private-network-ip=PRIVATE_NETWORK_IP]

  #
  [--provisioning-model=PROVISIONING_MODEL]

  #
  [--region=REGION]

  #
  [--resource-manager-tags=[KEY=VALUE,…]]

  #
  [--resource-policies=[RESOURCE_POLICY,…]]

  #
  [--no-restart-on-failure]

  #
  [--shielded-integrity-monitoring]

  #
  [--shielded-secure-boot]

  #
  [--shielded-vtpm]

  #
  [--source-instance=SOURCE_INSTANCE]

  #
  [--source-instance-zone=SOURCE_INSTANCE_ZONE]

  #
  [--stack-type=STACK_TYPE]

  #
  [--subnet=SUBNET]

  #
  [--tags=TAG,[TAG,…]]

  #
  [--termination-time=TERMINATION_TIME]

  #
  [--threads-per-core=THREADS_PER_CORE]

  #
  [--turbo-mode=TURBO_MODE]

  #
  [--visible-core-count=VISIBLE_CORE_COUNT]

  #
  [--address=ADDRESS | --no-address]

  #
  [--boot-disk-kms-key=BOOT_DISK_KMS_KEY : --boot-disk-kms-keyring=BOOT_DISK_KMS_KEYRING --boot-disk-kms-location=BOOT_DISK_KMS_LOCATION --boot-disk-kms-project=BOOT_DISK_KMS_PROJECT]

  #
  [--confidential-compute | --confidential-compute-type=CONFIDENTIAL_COMPUTE_TYPE]

  #
  [--custom-cpu=CUSTOM_CPU --custom-memory=CUSTOM_MEMORY : --custom-extensions --custom-vm-type=CUSTOM_VM_TYPE]

  #
  [--image-project=IMAGE_PROJECT --image=IMAGE | --image-family=IMAGE_FAMILY]

  #
  [--node=NODE | --node-affinity-file=PATH_TO_FILE | --node-group=NODE_GROUP]

  #
  [--reservation=RESERVATION --reservation-affinity=RESERVATION_AFFINITY; default="any"]

  #
  [--scopes=[SCOPE,…] | --no-scopes]

  #
  [--service-account=SERVICE_ACCOUNT | --no-service-account]

  #
  [--service-proxy=[enabled],[access-log=ACCESS-LOG],[network=NETWORK],[proxy-port=PROXY-PORT],[serving-ports=SERVING-PORTS],[tracing=TRACING] --service-proxy-labels=[KEY=VALUE, …,…]]
```

# Instance Groups

```Bash
#
gcloud compute instance-groups create <group_name> --zone <zone> --template <instance_template> --size <number> [--health-check=<url>|--initial-delay <number>]

# Resize an instance group
gcloud compute instance-groups managed resize <group_name> --size=<number>

# Autoscaling 
gcloud compute instance-groups managed set-autoscaling <group_name> --max-num-replicas=<number> [--cool-down-period <seconds>|--scale-based-on-cpu <value>|--target-cpu-utilization <value>|--scale-based-on-load-balancing <value>|--target-load-balancing-utilization <value>|--mode {off|on|only-scale-out}]

# Delete and recreate instances
gcloud compute instance-groups managed recreate-instances <group_name> --instances=<instance_name>,<instance_name>[,<instance_name>]

#
gcloud compute instance-groups managed delete <group_name>

# Update existing MIG poicies
gcloud compute instance-groups managed update <group_name> [--health-check=<url>|--initial-delay <number>]

# Update specific instances
gcloud compute instange-groups managed update-instances <group_name> --instances=<instance_name>,<instance_name>[,<instance_name>] [--minimal-action={none|refresh|replace|restart}|--most-disruptive-allowed-action={none|refresh|replace|restart}]

# Update instance template
gcloud compute instance-groups managed set-instance-template <group_name> --template=<instance_template>

#
gcloud compute instance-groups managed rolling-action restart <group_name> [--max-surge=<value>]

#
gcloud compute instance-groups managed rolling-action replace <group_name> [--max-surge=<value>|--max-unavailable=<value>|--replacement-method={recreate|substitute}]

# Update instances to a new template
gcloud compute instance-groups managed rolling-action start-update <group_name> --version=<old_instance_template>=<new_instance_template>

#
gcloud compute instance-groups managed rolling-action start-update <group_name> --version=<old_instance_template>=<new_instance_template> --canary-version=<old_instance_template>=<new_instance_template>,target-size=<value>
```

```Bash
# Enable OS Login
gcloud compute project-info/instances add-metadata --metadata enable-oslogin=TRUE

#
gcloud compute ssh

# Upload a public SSH key to your OS Login profile
gcloud compute os-login ssh-keys add

# Block SSH keys on a specific compute instance
gcloud compute instances add-metadata <instance_name> --metadata block-project-ssh-keys=TRUE
```
