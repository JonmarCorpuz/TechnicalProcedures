
```Cisco IOS
enable
configure terminal

aaa new-model

! Define the authentication method
aaa authentication login auth-proxy-auth local

! Define the authorization method
aaa authorization auth-proxy auth-proxy-auth local

! Create local user accounts (If using local authentication)
username <username> password <password>

! Configure the access list for the authentication proxy
access-list <acl_id> permi <protocol> {any} {any}

! Configure the authentication proxy rule
ip auth-proxy name <authentication_proxy_rule_name>

! Apply the authentication proxy to an interface
interface <interface_id>
ip <authentication_proxy_rule_name>
ip access-group <acl_id> {in|out}
```
