# IPv4 NAT Configuration

## Internal Network

```Cisco IOS
enable
configure terminal

interface <interface_id>
ip nat inside
ip address {<ipv4_address> <subnet_mask>|dhcp}
description <description>
no shutdown
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## External Network

```Cisco IOS
enable
configure terminal

interface <interface_id>
ip nat outside
ip address {<ipv4_address> <subnet_mask>|dhcp}
description <description>
no shutdown
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## Access List

```Cisco IOS
enable
configure terminal

access-list <list_id> permit <network_address> <wildcard_mask>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## NAT Pool

```Cisco IOS
enable
configure terminal

ip nat pool <pool_name> <first_ipv4_address> <last_ipv4_address> prefix-length <prefix_length>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## NAT Overload (PAT)

```Cisco IOS
enable
configure terminal

ip nat inside source list <acl_list_id> pool {<nat_pool_name>|<interface_id>} overload
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# IPv6 NAT Configuration

## Interal Network

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## External Network
