```Cisco IOS
enable
configure terminal
```

```Cisco IOS
default-information originate
```

```Cisco IOS
clear ip ospf process
```

```Cisco IOS
maximum-paths <number>
```

```Cisco IOS
distance <administrative_distance>
```

# Active OSPF Directly on Interface

```Cisco IOS
enable
configure terminal

interface <interface_id>
ip opsf <ospf_process_id> area <area>
```

# Configure All Interfaces as OSPF Passive Interfaces

```Cisco IOS
enable
configure terminal
router ospf <ospf_process_id>

passive-interface default
```

# Remove an Interface as an OSPF Passive Interface

```Cisco IOS
enable
configure terminal

no passive-interface <interface_id>
```

# Modify OSPF Cost

```Cisco IOS
auto-cost reference-bandwidth <megabits-per-second>
```

```Cisco IOS
enable
configure terminal

ip ospf cost <cost>
```

```Cisco IOS
enable
configure terminal

bandwidth <kilobits-per-second>
```
