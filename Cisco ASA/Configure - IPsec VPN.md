# VPN

```Cisco IOS
enable
configure terminal

# Create an ISAKMP policy
crypto isakmp policy <priority_level>

# Configure ISAKMP policy parameters
authentication <authentication_type>
encryption <encryption_algorithm>
hash <hashing_algorithm>
group <diffie_hellman_group>
lifetime <seconds>

# Specify the ISAKMP identity type
crypto isakmp identity <ip_address>

# Enable ISAKMP on the specified interface
crypto isakmp enable <interface_id>

# Create a tunnel group
tunnel-group <group_name> type {remote_access|ipsec|l2l}

# Enter group policy attributes configuration mode
group-policy <group_name> attributes

# Configure a peer IP address for a crypto map entry
crypto map <map_entry_name> <sequence_number> set peer <peer_id>
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

