# Instances

```Bash
#
gcloud config set project <project_name>
```

```Bash

```

# Instance Templates

```Bash
gcloud compute instance-templates create <INSTANCE_TEMPLATE_NAME> \

  # Attach accelerators to the instances
  [--accelerator=count=<ACCELERATOR_COUNT>,type=<ACCELERATOR_TYPE>]
    # ACCELERATOR_COUNT specifies the number of accelerators to attach to each instance (Default value is 1)
    # ACCELERATOR_TYPE specifies the type of accelerator to attach to the instances

  # Automatically delete an instance's boot disks when it gets deleted (Enabled by default)
  [--boot-disk-auto-delete]

  # Preserve an instance's boot disks when it gets deleted
  [--no-boot-disk-auto-delete]

  # Specify the name that the guest operating system will see for the boot disk (Can only be specified if a new boot disk is being created as opposed to mounting an existing persistent disk)
  [--boot-disk-device-name=BOOT_DISK_DEVICE_NAME]

  # Indicate the interface to use for the boot disk
  [--boot-disk-interface={SCSI|NVME}]

  # Set the number of I/O operations per second that the disk can handle
  [--boot-disk-provisioned-iops=<10000-120000>]

  # Set the number of throughput MB per second that the disk can handle
  [--boot-disk-provisioned-throughput=BOOT_DISK_PROVISIONED_THROUGHPUT]

  # Set the size for the boot disk (Can only be specified if a new boot disk is being created as opposed to mounting an existing persistent disk)
  [--boot-disk-size=<SIZE>{KB|MB|GB|TB}]

  # Specify the type of boot disk (Can only be specified if a new boot disk is being created as opposed to mounting an existing persistent disk)
  [--boot-disk-type=BOOT_DISK_TYPE]

  # Allow the created instance to send and receive packets with non-matching destination or source IP addresses
  [--can-ip-forward]

  # Ovveride how the source instance's disks are defined in the template (Works only when used with --source-instance)
  [--configure-disk=<PROPERTY>=<VALUE>[,<PROPERTY>=<VALUE>]]
    // device-name=<DEVICE_NAME> 
    // auto-delete=true
    // instantiate-from={attach-read-only|blank|custom-image|do-not-include|source-image|source-image-family}
    // custom-image=<IMAGE_SOURCE>

  # Create and attach persistent
  [--create-disk=<PROPERTY>=<VALUE>[,<PROPERTY>=<VALUE>]
    // name=<DISK_NAME>
    // description=<DESCRIPTION>
    // mode={ro|rw}
    // image=<IMAGE>
    // image-family=<IMAGE_FAMILY>
    // image-project=<IMAGE_PROJECT>
    // size=<SIZE>{KB|MB|GB|TB}
    // type=<DISK_TYPE>
    // device-name=<DEVICE_NAME>
    // provisioned-throughput=<NUMBER>
    // disk-resource-policy=<RESOURCE_POLICY_URL>
    // auto-delete=yes
    // architecture=<PROCESSOR_TYPE>
    // storage-pool=<STORAGE_POOL_NAME>
    // interface={SCSI|NVME}
    // boot=yes
    // kms-project=<KMS_PROJECT>
    // kms-key=<PATH_TO_KMS_CRYPTOKEY_NAME>
    // kms-location=<KMS_LOCATION>
    // kms-key-ring=<KEYRING>
    // replica-zones=<ZONE_URL>

  # Specify a textual description for the instance template
  [--description=<DESCRIPTION>]

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
Source: [](https://cloud.google.com/sdk/gcloud/reference/compute/instance-templates/create)

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
