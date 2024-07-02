# Trunk

```Cisco IOS
enable
configure

interface <interface_id>
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan <vlan_id>,[vlan_id],[...]
switchport trunk native vlan <vlan_id>
```

# Subinterfaces

```Cisco IOS
enable
configure terminal

interface <interface_id>

interface <interface_id>.<subinterface>
encapsulation dot1Q <vlan_id>
ip address {<ipv4_address> <subnet_mask>} | dhcp}
description <description>
no shutdown
```
