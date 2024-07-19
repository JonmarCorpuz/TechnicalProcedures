
```Cisco IOS
enable
configure terminal

ip tcp intercept list <acl>

ip tcp intercept mode {intercept|watch}
```

# Additional Intercept Mode Parameters

```Cisco IOS
enable
configure terminal

ip tcp intercept max-incomplete high <number>
ip tcp intercept max-incomplete low <number>
ip tcp intercept one-minute high <number>
ip tcp intercept one-minute low <number>
ip tcp intercept drop-mod e{random|oldest}
```
