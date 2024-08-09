
VM Instance
```Bash
#
gcloud config set project <project_name>
```

VM Instance Groups
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

Troubleshooting
```Bash
#
gcloud compute instances list

#
gcloud compute instance-groups managed list

#
gcloud compute instance-groups managed describe <group_name> 
```
