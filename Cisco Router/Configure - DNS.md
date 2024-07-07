
# Configure a Router as a DNS Server

```Cisco IOS
enable
configure terminal

ip dns server

! Configure a list of hostname/IP address mappings
ip host <hostname> <ipv4_address>

! Query this external DNS server if it doesn't have an entry in its own table for the DNS query
ip name-server <external_dns_server>

! Enable the router to perform DNS queries
ip domain lookup

ip domain name <domain_name>
```
