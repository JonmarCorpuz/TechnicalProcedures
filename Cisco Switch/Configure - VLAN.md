```Cisco IOS
enable
configure

interface <interface_id>
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan {all|none|<vlan_id>,[vlan_id],[vlan_range],[...],except <vlan_id>,[vlan_id],[vlan_range],[...]}
switchport trunk native vlan <vlan_id>
```

```Cisco IOS
enable
configure

interface <interface_id>
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk add vlan <vlan_id>,[vlan_id],[...]
```

```Cisco IOS
enable
configure

interface <interface_id>
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk remove vlan <vlan_id>,[vlan_id],[...]
```

