# Standard Access Control Lists

## Standard Numbered Access Control Lists

```Cisco IOS
enable
configure terminal

access-list <acl_number> {deny|permit} {any|host <ipv4_address|<ipv4_address> <wildcard_mask>}
access-list <acl_number> remark <description>
```

## Standard Named Access Control Lists

```Cisco IOS
enable
configure terminal

ip access-list standard <acl_name>
[entry_number] {deny|permit} {any|<ipv4_address> <wildcard_mask>}
remark <description>
```

## Apply an ACL to an Interface

```Cisco IOS
enable
configure terminal

interface <interface_id>
ip access-group {<acl_number>|<acl_name>} {in|out}
```

# Delete an ACL

```Cisco IOS
enable
configure terminal

no access-list {<acl_number>|<acl_name>} {deny|permit} {any|host <ipv4_address|<ipv4_address> <wildcard_mask>}
```

# Modify an ACL

```Cisco IOS
enable
configure terminal

no <sequence_number>
```

```Cisco IOS
enable
configure terminal

ip access-list resequence {<acl_number>|<acl_name>} <starting_sequence_number> <increment_value>
```

# Extended Access Control Lists

## Extended Numbered Access Control Lists

```Cisco IOS
enable
configure terminal

access-list <acl_number> {permit|deny} <protocol> <source_ip> <destination_ip>
```

## Extended Named Access Control Lists

```Cisco IOS
enable
configure terminal

ip access-list extended <acl_name>
[sequence_number] {permit|deny} {<protocol>|<0-255>} {any|host|object-group <object_group_name>|<source_ip> <source_wildcard>} [eq {<source_port_number>|<keyword>}] {any|host|<destination_ip> <wildcard_mask>|object-group <object_group_name>} [eq {<destination_port_number>|<keyword>]
```
