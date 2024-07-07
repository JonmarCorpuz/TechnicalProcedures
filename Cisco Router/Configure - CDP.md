# Enable CDP

## Globally

```Cisco IOS
enable
configure terminal

cdp run
```

## Individual Interface

```Cisco IOS
enable
configure terminal

interface <interface_id>
cdp enable
```

## CDPv2

```Cisco IOS
enable
configure terminal

cdp advertise-v2
```

# Disable CDP

## Globally

```Cisco IOS
enable
configure terminal

no cdp run
```

## Individual Interface

```Cisco IOS
enable
configure terminal

interface <interface_id>
no cdp enable
```

```Cisco IOS
enable
configure terminal

no cdp advertise-v2
```

# Configure CDP Parameters

## CDP Timer

```Cisco IOS
enable
configure terminal

cdp timer <seconds>
```

## CDP Holdtime

```Cisco IOS
enable
configure terminal

cdp holdtime <seconds>
```
