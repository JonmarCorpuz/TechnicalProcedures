# Configure an SNMP Agent

```Cisco IOS
enable
configure terminal

! Configure community strings (Password) and permissions
snmp-server community <community_string> {ro|rw}

snmp-server host <snmp_manager_address> version <snmp_version> <community_string>

! Configure the Trap message types to send to the NMS
snmp-server enable traps {snmp linkdown linkup|config}

! Optional
snmp-server contact <email>
snmp-server location <location>
```
