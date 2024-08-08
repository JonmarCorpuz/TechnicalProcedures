# Cluster Management

```Bash
# Create a cluster
gcloud container clusters create <cluster_name> --region <region_name> --zone <zone_name>[,<zone_name>]

# Connect to a cluster
gcloud container clusters get-credentials <cluster_name> --region <region_name> --zone <zone_name>[,<zone_name>] --project <project_id>


# Resize a cluster
gcloud container clusters resize <cluster_name> --node-pool <node_pool> --num-nodes <number> [--region <region_name|--zone <zone_name>]

# Autoscale a cluster
gcloud container clusters update <cluster_name> --enable-autoscaling --min-nodes=<number> --max-nodes=<number> [--region <region_name|--zone <zone_name>]

# Delete a cluster
gcloud container clusters delete <cluster_name> [--region <region_name|--zone <zone_name>]
```

```Bash
# Adding a pool node to a cluster
gcloud container node-pools create <node_pool_name> --cluster <cluster_name> [--region <region_name|--zone <zone_name>]
```

```Bash
# List all the images that are present in your GCR
gcloud container images list
```

# Workload Management

```Bash
# List all the Pods in the current Kubernetes cluster
kubectl get pods

# List all the Services in the current Kubernetes cluster
kubectl get services

# List all the ReplicaSets in the current Kubernetes cluster
kubectl get replicasets
```

```Bash
# Create a Deployment from scratch
kubectl create deployment <deployment_name> --image=<container_image>

# Create Deployment using a YAML file
kubectl apply -f <deployment_yaml_file>

# Create a Service
kubectl expose deployment <deployment_name> --type=<deployment_type> --port=<port_number>
```

```Bash
# Scale a Deployment
kubectl scale deployment <deployment_name> --replicas <number_of_replicas>

# Autoscale a Deployment
kubectl autoscale deployment <deployment_name> --max=<number> --min=<number> --cpu-percent=<decimal_number>
```

```Bash
# Delete a Deployment
kubectl delete deployment <deployment_name>
```

```Bash
# Update a Deployment
kubectl apply -f <deployment_yaml_file>

# Rollback a Deployment
kubectl rollout undo deployment <deployment_name> --to-revision=<revision_number>
```
