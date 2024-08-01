```Cisco IOS
enable
configure terminal

router eigrp <as_number>

network <network_address> <wildcard_mask>

interface <interface_id>
ip address <ipv4_address> <subnet_mask>
description <description>
no shutdown
ip summary-address eigrp <as_number> <interface_ipv4_address> <subnet_mask>
```

```Cisco IOS
enable
configure terminal

router eigrp <as_number>

key chain <key_chain_name>
key <key_id>
key-string <password>

interface <interface_id>
ip authentication mode eigrp <as_number> <authentication_method>
ip authentication key-chain eigrp <as_number> <key_chain_name>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# EIGRP Authentication

```Cisco IOS

```
