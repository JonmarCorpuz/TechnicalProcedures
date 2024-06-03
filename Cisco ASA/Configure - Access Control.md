# Access Control

```Cisco IOS
enable
configure terminal

# Creates an extended ACL entry
access-list <acl_name> extended {permit|deny} <protocol> {any host|<source> <source_mask>} <destination> <destination_mask> [<port_number>]

# Applies an ACL to an interface
access-group <acl_name> {in|out} interface <interfac_id>

# Create a group of resources
object-group {service|network} <name>

# Define NAT parameters for inside-to-outside translation
global (inside) <interface_id>

# Configure dynamic NAT
nat (inside) <interface_id>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

