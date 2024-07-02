
# L3 SVI

```Cisco IOS
enable
configure terminal

ip routing

! The VLAN must exist first because SVIs won't automatically create it
interface <vlan_id>
ip address <ipv4_address> <subnet_mask>
no shutdown
```
