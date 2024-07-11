
# Assign an Interface to a VRF

```Cisco IOS
enable
configure terminal

ip vrf <vrf_name>

interface <interface_id>
ip vrf forwarding <vrf_name>
ip address <ipv4_address> <subnet_mask>
no shutdown
```
