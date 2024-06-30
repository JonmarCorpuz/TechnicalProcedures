# Configure EtherChannel Load Balance

```Cisco IOS
enable
configure terminal

port-channel load-balance {dst-ip|dst-mac|src-dst-ip|src-dst-mac|src-ip|src-mac}
```

# Configure PAgP EtherChannel

```Cisco IOS
enable
configure terminal

interface range <interface_range>
channel-group <group_id> mode {auto|desirable}
```

# Configure LACP EtherChannel

```Cisco IOS
enable
configure terminal

interface range <interface_range>
channel-group <group_id> mode {active|passive}
```

# Configure Static EtherChannel

```Cisco IOS
enable
configure terminal

interface range <interface_range>
channel-group <group_id> mode on
```

# Configure the EtherChannel Negotiation Protocol

```Cisco IOS
enable
configure

interface range <interface_range>
channel-protocol {lacp|pagp}
```
