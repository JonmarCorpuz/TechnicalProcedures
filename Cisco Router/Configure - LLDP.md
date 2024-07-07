# Enable LLDP

## Globally

```Cisco IOS
enable
configure terminal

lldp run
```

# Individual Interface

```Cisco IOS
enable
configure terminal

interface <interface_id>
lldp transmit
lldp receive
```

# Configure LLDP Parameters

## LLDP Timer

```Cisco IOS
enable
configure terminal

lldp timer <seconds>
```

## LLDP Holdtime

```Cisco IOS
enable
configure terminal

lldp holdtime <seconds>
```

## LLDP Reinit Timer

```Cisco IOS
enable
configure terminal

lldp reinit <seconds>
```
