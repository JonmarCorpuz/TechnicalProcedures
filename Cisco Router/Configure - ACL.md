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
ip access-group {acl_number|acl_name} {in|out}
```
