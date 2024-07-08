# Configure Syslog

## Configure Logging on the Console Line

```Cisco IOS
enable
configure terminal

logging console {<level_number>|<keyword>}
```

## Configure Logging to the VTY Lines

```Cisco IOS
enable
configure terminal

logging monitor {<level_number>|<keyword>}
```

**The `terminal monitor` command must be used every time you connect to the device via Telnet or SSH**

## Configure Logging to the Buffer

```Cisco IOS
enable
configure terminal

logging buffered <size> <level_number>
```

## Configure Logging to an External Server

```Cisco IOS
enable
configure terminal

logging <server_ip_address>

! Configure the level of messages sent to the external server
logging trap {<level_number>|<keyword>}
```
