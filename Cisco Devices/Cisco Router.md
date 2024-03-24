## Enter Global Configuration Mode
```Cisco IOS
Router> enable
Router# configure terminal
```

## Router-on-a-Stick Inter-VLAN Routing

Create a subinterface on a Port
```Cisco IOS
Router(config)# interface <INTERFACE ID>
Router(config-if)# no shutdown
Router(config-if)# interface <INTERFACE ID>.<SUBINTERFACE>
Router(config-subif)# encapsulation dot1Q <VLAN ID>
Router(config-subif) ip address <DEFAULT GATEWAY ADDRESS> <SUBNET MASK>
```

---
Create a Native Subinterface on a Port
```Cisco IOS
Router(config)# interface <INTERFACE ID>
Router(config-if)# no shutdown
Router(config-if)# interface <INTERFACE ID>.<SUBINTERFACE>
Router(config-subif)# encapsulation dot1Q <VLAN ID> native
Router(config-subif) ip address <DEFAULT GATEWAY ADDRESS> <SUBNET MASK>
```

---
Verify the Inter-VLAN Routing Subinterfaces
```Cisco IOS
Router# show ip route
Router# show ip interface bried
Router# show interfaces
Router# show interfaces trunk
Router# show ip interface brief
Router# show interface <INTERFACE ID>.<SUBINTERFACE>
```

## Routing Table

## IPv4

Configure a Loopback Address
```Cisco IOS
Router(config)# interface loopback <NUMBER>
Router(config-if)# ip address <IP ADDRESS> <SUBNET MASK>
```

---
Configure a Static IPv4 Route
```Cisco IOS
! Next-hop route
Router(config)# ip route <NETWORK ADDRESS> <SUBNET MASK> <NEXT-HOP IP ADDRESS> 

! Directly connected static route
Router(config)# ip route <NETWORK ADDRESS> <SUBNET MASK> <EXIT INTERFACE>

! Fully specified static route
ip route <NETWORK ADDRESS> <SUBNET MASK> <EXIT INTERFACE> <NEXT-HOP IP ADDRESS>
```

---
Configure a Static IPv4 Default Route
```Cisco IOS
Router(config)# ip route 0.0.0.0 0.0.0.0 <IP ADDRESS | EXIT INTERFACE>
```

---
Configure a Floating IPv4 Static Route
```Cisco IOS
Router(config)# ip route <NETWORK ADDRESS> <SUBNET MASK> <IP ADDRESS> <ADMINISTRATIVE DISTANCE>
```

## IPv6

Configure a Static IPv6 Route
```Cisco IOS
Router(config)# ipv6 unicast-routing

! Next-hop route
Router(config)# ipv6 route <PREFIX>/<PREFIX LENGTH> <NEXT-HOP IP ADDRESS> 

! Directly connected static route
Router(config)# ipv6 route <PREFIX>/<PREFIX LENGTH> <EXIT INTERFACE>

! Fully specified static route
ipv6 route <PREFIX>/<PREFIX LENGTH> <EXIT INTERFACE> <NEXT-HOP IP ADDRESS>
```

---
Configure a Static IPv6 Default Route
```Cisco IOS
Router(config)# ipv6 route ::/0 <IP ADDRESS | EXIT INTERFACE>
```

---
Configure a Floating IPv6 Static Route
```Cisco IOS
Router(config)# ipv6 route <PREFIX>/<PREFIX LENGTH> <IP ADDRESS> <ADMINISTRATIVE DISTANCE>
```

## Network Address Translation (NAT)

Configure NAT 
```Cisco IOS
! Define the interface connecting to the LAN
Router(config-if)# ip nat inside

! Define the interface connecting to the Internet
Router(config-if)# ip nat outside

! Define how NAT should be performed for outbound traffic
Router(config)# ip nat inside source list 1 interface <OUTSIDE INTERFACE> overload
```

## Verify Configurations

Verify Interface Configurations
```Cisco IOS
Router# show ip interface brief
Router# show ipv6 interface brief
Router# show running-config interface <INTERFACE ID>
Router# show interfaces
Router# show ip interface
Router# show ipv6 interface
```

---
Verify Routing Table
```Cisco IOS
Router# show ip route
Router# show ipv6 route

! Verify static routes
Router# show ip route static
Router# show ipv6 route static

! 
Router# show ip route <NETWORK>
Router# show ipv6 route <NETWORK>

! 
Router# show running-config | section ip route
Router# show running-config | section ipv6 route

!
Router# show running-config | include ip route
Router# show running-config | include ipv6 route
```

