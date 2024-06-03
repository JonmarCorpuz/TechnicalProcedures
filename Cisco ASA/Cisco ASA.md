# Assign Name and Security Level to an Interface

```Cisco IOS
enable
configure terminal

nameif <name> <security_level>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

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

# VPN

```Cisco IOS
enable
configure terminal

# Create an ISAKMP policy
crypto isakmp policy <priority_level>

# Specify the ISAKMP identity type
crypto isakmp identity <ip_address>

# Enable ISAKMP on the specified interface
crypto isakmp enable <interface_id>

# Create a tunnel group
tunnel-group <group_name> type {remote_access|ipsec|l2l}

# Enter group policy attributes configuration mode
group-policy <group_name> attributes

# Configure a peer IP address for a crypto map entry
crypto map <map_entry_name> <sequence_number> set peer <peer_id>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Troubleshooting

```Cisco IOS
enable

# Display interface status and configuration
show interface <interface_id>

# Display configured access lists
show access-list

# Display the current connections
show conn

# Display VPN-related information
show vpn-sessiondb

# Enable debugging for specific components
debug <command>
