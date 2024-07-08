# Configure Syslog

## Configure Logging on the Console Line

```Cisco IOS
enable
configure terminal

logging console {<severity_level>|<keyword>}

line console 0
logging synchronous
```

## Configure Logging to the VTY Lines

```Cisco IOS
enable
configure terminal

logging monitor {<severity_level>|<keyword>}
```

**The `terminal monitor` command must be used every time you connect to the device via Telnet or SSH**

## Configure Logging to the Buffer

```Cisco IOS
enable
configure terminal

logging buffered [size] {<severity_level>|<keyword>}
```

## Configure Logging to an External Server

```Cisco IOS
enable
configure terminal

logging <server_ip_address>

! Configure the level of messages sent to the external server
logging trap {<severity_level>|<keyword>}
```

# Configure Syslog Parameters

## Configure Service Timestamps

```Cisco IOS
enable
configure terminal

service timestamps log {<datetime>|<uptime>}
```

## Configure Sequence Numbers

```Cisco IOS
enable
configure terminal

service sequence-numbers
```
