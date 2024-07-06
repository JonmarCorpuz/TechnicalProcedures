# Standard Access Control Lists

## Numbered Standard Access Control Lists

```Cisco IOS
enable
configure terminal

access-list <acl_number> {deny|permit} {any|host <ipv4_address|<ipv4_address> <wildcard_mask>}
access-list <acl_number> remark <description>
```
