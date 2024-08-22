```Bash
# Install kubectl
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

#
sudo chmod +x ./kubectl

#
sudo mv ./kubectl /usr/local/bin/kubectl
```

Connect to a Master Node
```Bash
# 
export KUBECONFIG=kubeconfig.yaml
```

```Bash
# Run a pod
kubectl run <pod_name> --image=<docker_image>[:<image_version>] --port=<port_number>

# Deploy multiple pods using a Deployment Manifest file
kubectl apply -f <yaml_file>
```

```Bash
#
kubectl edit deployment <deployment_name>
```

```Bash
#
kubectl exec -it <pod_name> [--namespace <namespace>] -- sh

# 
kubectl port-forward <resource_type>/<resource_name> <target_port>/<exposed_port>
```

```Bash
#
kubectl get nodes

#
kubectl cluster-info

#
kubectl get pods [--namespace <namespace>] [-o wide]

# 
kubectl describe pod <pod_name> [--namespace <namespace>]

# View the application logs of the erroring pods
kubectl log <pod_name> [--namespace <namespace>]

#
kubectl get services

#
kubectl describe services <service_name>
```
