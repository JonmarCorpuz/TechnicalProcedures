# Create a VRF

```Cisco IOS
enable
configure terminal

ip vrf <vrf_name>
```

# Assign an Interface to a VRF

```Cisco IOS
enable
configure terminal

interface <interface_id>
ip vrf forwarding <vrf_name>
ip address <ipv4_address> <subnet_mask>
no shutdown
exit
```
