
# Configure Port Security

```Cisco IOS
enable
configure

! Enable port security
interface <interface_id>
switchport mode access
switchport port-security

! Configure the amount of allowed MAC addresses
switchport port-security maximum <number>

! Configure secure MAC addresses
switchport port-security mac-address {[mac_address]|sticky}

! Configure the violation mode
switchport port-security violation {shutdown|restrict|protect}

! Configure the aging type
switchport port-security aging type {absolute|inactivity}

! Static MAC aging
switchport port-security aging static

! Dynamic MAC aging
switchport port-security aging time <minutes>
```

## Enable Errdisable Recovery

```Cisco IOS
enable
configure terminal

errdisable recovery cause <errdisable_reason>
```

## Modify Errdisable Recovery Timer Interval

```Cisco IOS
enable
configure terminal

errdisable recovery interval <seconds>
```

# Configure DHCP Snooping

```Cisco IOS

```

# Configure Dynamic ARP Inspection

```Cisco IOS

```
