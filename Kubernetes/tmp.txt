```Bash
# Apply a YAML file
kubectl apply -f <yaml_file_path>
```

```Bash
#
kubectl exec -it <pod_name> [--namespace <namespace>] -- sh

# 
kubectl port-forward <resource_type>/<resource_name> <target_port>/<exposed_port>
```

```Bash
#
kubectl get pods [--namespace <namespace>]

# 
kubectl describe pod <pod_name> [--namespace <namespace>]

# View the application logs of the erroring pods
kubectl log <pod_name> [--namespace <namespace>]
```
