#

```Cisco IOS
enable
configure terminal

default interface <interface_id>
```

# Subinterfaces

```Cisco IOS
enable
configure terminal

interface <interface_id>
no shutdown

interface <interface_id>.<subinterface>
encapsulation dot1Q <vlan_id>
ip address {<ipv4_address> <subnet_mask>} | dhcp}

interface <interface_id>.<subinterface>
encapsulation dot1Q <vlan_id> native
ip address {<ipv4_address> <subnet_mask>} | dhcp}
```

```Cisco IOS
enable
configure terminal

interface <interface_id>
no shutdown

no interface <interface_id>.<subinterface>
```

# Serial Interfaces

```Cisco IOS
enable
configure terminal

! Configure PPP encapsulation
interface <interface_id>
encapsulation ppp
```

```Cisco IOS
enable
configure terminal

! Configure the clock rate on the DCE side
clock rate <bits-per-second>
```
