# Manual Configuration

## Time Configuration

```Cisco IOS
enable
configure terminal

clock set <hour>:<minutes>:<seconds> {<day> <month>|<month> <day>} <year>
```

## Hardware Clock Configuration

```Cisco IOS
enable
configure terminal

calendar set <hour>:<minutes>:<seconds> {<day> <month>|<month> <day>} <year>
```

## Synchronize the Hardware Calendar to the Software Clock

```Cisco IOS
enable
configure terminal

clock update-calendar 
```

## Synchronize the Software Clock to the Hardware Calendar

```Cisco IOS
enable
configure terminal

clock read-calendar
```

## Timezone Configuration

```Cisco IOS
enable
configure terminal

clock timezone <timezone> <hours_offset_from_utc> <minutes_offset_from_utc> 
```

## Daylight Saving Time Configuration

```Cisco IOS
enable
configure terminal

clock summer-time [summer_timezone] {date|recurring <start_of_daylight_saving_time> <end_of_daylight_saving_time>} [offset]
```

## NTP Server

```Cisco IOS
enable
configure terminal

ntp server <ipv4_address> [prefer]
```
