# DHCP Pools

## IPv4 DHCP Pool

```Cisco IOS
enable
configure terminal

ip dhcp pool <pool_name>

network <network_address> <subnet_mask>
default-router <default_gateway_address>
dns-server <dns_server_address>
domain-name <domain_name>
lease <days [hours][minutes] | infinite>
```

## IPv6 DHCP Pool

```Cisco IOS
enable
configure terminal

ipv6 unicast-routing

ipv6 dhcp <pool_name>
address prefix <ipv6_prefix>/<prefix_length> [valid-lifetime preferred-lifetime]
dns-server <dns_server_address>
domain-name <domain_name>
lease <days [hours][minutes] | infinite>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# DHCP Relay Agent

```Cisco IOS
enable
configure terminal

interface <interface_id>
ip helper-address <dhcp_server_ip>
```
