
```Cisco IOS
enable
configure terminal

ip ips config location <signature_files_location>
ip ips name <ips_rule_name>
```

# Configure IPS Signatures

```Cisco IOS
enable
configure terminal

ip ips signature-definition
signature <ips_signature_id>
  status
    enabled
  event-action
    procude-alert
    deny-packet-inline
exit
```

# Apply IPs to an Interface

```Cisco IOS
enable
configure terminal

interface <interface_id>
ip ips <ips_rule_name> {in|out}
```
