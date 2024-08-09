
VM Instance
```Bash
#
gcloud config set project <project_name>

# 
```

VM Instance Groups
```Bash
#
gcloud compute instance-groups create <group_name> --zone <zone> --template <instance_template> --size <number> [--health-check=<url>|--initial-delay <number>]

# Autoscaling 
gcloud compute instance-groups managed set-autoscaling <group_name> --max-num-replicas=<number> [--cool-down-period <seconds>|--scale-based-on-cpu <value>|--target-cpu-utilization <value>|--scale-based-on-load-balancing <value>|--target-load-balancing-utilization <value>|--mode {off|on|only-scale-out}]

#
gcloud compute instance-groups managed delete <group_name>

# Update existing MIG poicies
gcloud compute instance-groups managed update <group_name> [--health-check=<url>|--initial-delay <number>]
```

Troubleshooting
```Bash
#
gcloud compute instance-groups managed list

#
gcloud compute instance-groups managed describe <group_name> 
```
