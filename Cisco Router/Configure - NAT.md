# IPv4 NAT Configuration

## Static Source NAT

```Cisco IOS
enable
configure terminal

! Define the inside interface
interface <interface_id>
ip nat inside
exit

! Define the outside interface
interface <interface_id>
ip nat outside
exit

! Configure one-to-one IP address mappings
ip nat inside source static <inside_local_ip> <inside_global_ip>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## Dynamic NAT Translation

```Cisco IOS
enable
configure terminal

! Define the inside interface
interface <interface_id>
ip nat inside
exit

! Define the outside interface
interface <interface_id>
ip nat outside
exit

! Define the traffic that should be translated
access-list <acl_id> permit <local_inside_address> <wildcard_mask>

! Define the pool of inside global IP addresses
ip nat pool <pool_name> <first_inside_global_address> <last_inside_global_address> prefix-length <prefix_length>

! Configure dynamic NAT by mapping the ACL to the pool
ip nat inside source list <acl_id> pool <pool_name>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## NAT Overload (PAT)

```Cisco IOS
enable
configure terminal

! Define the inside interface
interface <interface_id>
ip nat inside
exit

! Define the outside interface
interface <interface_id>
ip nat outside
exit

! Define the traffic that should be translated
access-list <acl_id> permit <local_inside_address> <wildcard_mask>

! Define the pool of inside global IP addresses
ip nat pool <pool_name> <first_inside_global_address> <last_inside_global_address> {prefix-length <prefix_length>|netmask <subnet_mask>}

! Configure PAT by mapping the ACL to the pool
ip nat inside source list <acl_id> {pool <pool_name>|interface <outside_interface_id>} overload
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## Clear Dynamic NAT Translations

```Cisco IOS
enable

clear ip nat translation *
```

## Clear Static NAT Translations

```Cisco IOS
enable

no ip nat inside source static <inside_local_ip> <inside_global_ip>
```

# IPv6 NAT Configuration

## Interal Network

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## External Network
