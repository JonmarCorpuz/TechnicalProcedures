```Bash
sudo apt -y install docker.io
```

Default Bridge Network
```Bash
#
sudo docker run -itd --rm [-p <host_port>:<container_port>] --name <container_name> <docker_image>[:<version>]
```

User-Define Bridge Network
```Bash
#
sudo docker network create <network_name>

#
sudo docker run -itd --rm [-p <host_port>:<container_port>] --network <network_name> --name <container_name> <docker_image>[:<version>]
```

Host Network
```Bash
#
sudo docker run -itd --rm --network host --name <container_name> <docker_image>[:<version>]
```

MACVLAN Bridge Network
```Bash
#
sudo docker network create {-d|--driver} macvlan --subnet <home_network_subnet> --gateway <home_network_gateway> [--ip-range <ip_range>] -o parent=<host_network_interface> <network_name>

#
sudo docker run -itd --rm --network <network_name> --ip <ip_address> --name <container_name> <docker_image>[:<version>]

#
sudo ip link set <host_network_interface> promisc on
```

MACVLAN 802.1q Network
```Bash
#
sudo docker network create {-d|--driver} macvlan --subnet <home_network_subnet> --gateway <home_network_gateway> [--ip-range <ip_range>] -o parent=<host_network_interface>.<subinterface> <network_name>

#
sudo docker run -itd --rm --network <network_name> --ip <ip_address> --name <container_name> <docker_image>[:<version>]
```

IPVLAN L2 Network
```Bash
#
sudo docker network create {-d|--driver} ipvlan --subnet <home_network_subnet> --gateway <home_network_gateway> [--ip-range <ip_range>] -o parent=<host_network_interface>.<subinterface> <network_name>

#
sudo docker run -itd -rm -network <network_name> --ip <ip_address> --name <container_name> <container_image>[:<image_version>]
```

IPVLAN L3 Network
```Bash
#
sudo docker network create {-d|--driver} ipvlan --subnet <home_network_subnet> -o parent=<host_network_interface> -o ipvlan_mode=l3 --subnet=<l3_network_subnet> <network_name>

#
sudo docker run -itd --rm --network <network_name> --ip <ip_address> --name <container_name> <container_image>[:<image_version>]
```

```Bash
#
sudo docker stop <container_name>

#
sudo docker exec -it <container_name> {bash|sh}
```

```Bash
#
sudo docker network ls

# 
sudo docker inspect <network_name>

#
bridge link
```
