# IPv6

## Enable IPv6 Routing

```Cisco IOS
enable
configure terminal

ipv6 unicast-routing
```

## Configure an IPv6 Address Using EUI-64

```Cisco IOS
enable
configure terminal

interface <interface_id>
ipv6 address <network_prefix> eui-64
no shutdown
exit
```

## Configure an IPv6 Address Using SLAAC

```Cisco IOS
enable
configure terminal

interface <interface_id>
ipv6 address autoconfig
```

## Anycast

```Cisco IOS
enable
configure terminal

interface <interface_id>
ipv6 address <ipv6_address> anycast
```

## Automatically Configure a Link-Local Address

```Cisco IOS
enable
configure terminal

interface <interface_id>
ipv6 enable
```

## Static Route

```Cisco IOS

```
