# IPv6

## Enable IPv6 Routing

```Cisco IOS
enable
configure terminal

ipv6 unicast-routing
```

## Configure IPv6 Addresses Using EUI-64

```Cisco IOS
enable
configure terminal

interface <interface_id>
ipv6 address <network_prefix> eui-64
no shutdown
exit
```
