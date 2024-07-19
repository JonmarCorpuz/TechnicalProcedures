
```Cisco IOS
enable
configure terminal

! Define the zones
zone security {INSIDE|OUTSIDE|DMZ}

! Assign a zone to an interface
interface <interface_id>
zone-member security {INSIDE|OUTSIDE|DMZ}
exit

! Define class maps to match traffic criteria
class-map type inspect match-any <class_name>
match protocol <protocol>
exit

! Define policy maps to specify actions for matched traffic
policy-map type inspect <class_name>
inspect
exit

! Create zone pairs to specify the direction of traffic between zones
zone-pair IN-TO-OUT source {INSIDE|OUTSIDE|DMZ} destination {INSIDE|OUTSIDE|DMZ}
service-policy type inspect <policy_name>
```
