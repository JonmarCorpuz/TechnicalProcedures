# Boot Loader

Display the source and location of the OS image
```Cisco IOS
set
```

---
Initialize the Flash filesystem
```Cisco IOS
flash_init
```

---
Display the contents in the Flash filesystem
```Cisco IOS
dir flash:/
```

---
Change the image in the BOOT environment variable
```Cisco IOS
BOOT=flash:/<IMAGE>
set
```

---
Load the IOS image
```Cisco IOS
boot
```

---
Delete a file
```Cisco IOS
del flash:/<FILENAME>
```

# Device Configuration

## Configure Environment Variables

Set the BOOT environment variable
```Cisco IOS
Switch(config)# boot system flash:<PATH TO THE FILESYSTEM>/<IOS FILENAME>
```

## Modify System Configuration

---
Save any configuration changes into memory
```Cisco IOS
Switch# copy running-config startup-config
Destination filename [startup-config]? <ENTER>
...
Switch# write
...
```

---
Erase an unsave running configuration
```Cisco IOS
Switch# reload
System configuration has been modified. Save? [yes/no]: No
Proceed with reload? [confirm] <ENTER>
...
```

---
Erase the start-up configuration file
```Cisco IOS
Switch# erase startup-config
Erasing the nvram filesystem will remove all configuration files! Continue? [confirm] <PRESS ENTER>
...
Switch# delete vlan.dat
Delete filename [vlan.dat]? <ENTER>
Delete flash:/vlan.dat? [confirm] <ENTER>
...
```

## Configure Passwords

---
Configure a Password for the User EXEC Mode
```Cisco IOS
Switch(config)# line console 0
Switch(config-line)# password <PASSWORD>
Switch(config-line)# login
```

---
Configure a Password for the Privileged EXEC Mode
```Cisco IOS
Switch(config)# enable secret <PASSWORD>
```

---
Configure a Password for Remote Access
```Cisco IOS
Switch(config)# line vty 0 15
Switch(config-line)# password <PASSWORD>
Switch(config-line)# login
```

## Configure Device Security

---
Encrypt All Plaintext Passwords in the Configuration File
```Cisco IOS
Switch(config)# service password-encryption
```

---
Create a Banner
```Cisco IOS
Switch(config)# banner motd #<MESSAGE>#
```

## Configure Default Gateway

---
Assign a default-gateway IP address
```Cisco IOS
Switch(config)# ip default-gateway <IP ADDRESS>
```

# Display Information

Show the running-config configuration file
```Cisco IOS
Switch(config)# do show run
```

---
Show the start-up configuration file
```Cisco IOS
Switch# show startup-config
```

---
Display Command History
```Cisco IOS
Switch(config)# show history
```

---
Display Flash Filesystem Information
```Cisco IOS
Switch# show flash
```

---
Display System Hardware and Software Status
```Cisco IOS
Switch# show version
```

---
Display MAC Address Table
```Cisco IOS
Switch# show mac-address-table
Switch# show mac address-table
```

---
Display VLAN Information
```Cisco IOS
Switch# show vlan
Switch# show vlan brief
Switch# show vlan id <VLAN ID>
Switch# show vlan name <VLAN NAME>
Switch# show vlan summary
Switch# show interfaces <INTERFACE ID>
Switch# show interfaces vlan <VLAN ID>
```

---
Display Current Port Security Settings
```Cisco IOS
Switch# show port-security interface <INTERFACE ID>
Switch# show port-security address
```

# Duplex Communication

Configure Duplex Communication and Speed on an Interface
```Cisco IOS
Switch(config-if)# duplex full
Switch(config0if)# speed <MBPS>
```

# VLANs

## Data VLANs

Create a VLAN
```Cisco IOS
Switch(config)# vlan <VLAN ID>
Switch(config-vlan)# name <VLAN NAME>
```

---
Configure a VLAN interface
```
Switch(config-vlan)# ip address <IP ADDRESS> <SUBNET MASK>
Switch(config-vlan)# no shutdown
```

---
Allow a Port to Access a VLAN
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# switchport mode access
Switch(config-if)# switchport access vlan <VLAN ID>
```

---
Remove a Port From a VLAN Membership
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# no switchport access vlan
```

---
Delete a VLAN
```Cisco IOS
Switch(config)# no vlan <VLAN ID>
```

---
Add Allowed VLANs on Trunk Port
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# switchport mode trunk
Switch(config-if)# switchport trunk native vlan <VLAN ID>
Switch(config-if)# switchport trunk allowed vlan <VLAN ID>
Switch(config-if)# switchport trunk allowed vlan add <VLAN ID>
```

---
Remove Allowed VLANs From Trunk Port

```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# switchport mode trunk
Switch(config-if)# switchport trunk allowed vlan remove <VLAN ID>
Switch(config-if)# do show interfaces trunk
```

---
Reset the Trunk Port to the Default State

```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# no switchport trunk allowed vlan
Switch(config-if)# no switch trunk native vlan
```

---
Verify Trunk Configuration
```Cisco IOS
Switch# show interfaces <INTERFACE ID> switchport
Switch# show interfaces trunk
```

## Voice VLANs

Create a Voice VLAN
```Cisco IOS
Switch(config)# vlan <VLAN ID>
Switch(config-vlan)# name <VLAN NAME>
Switch(config-vlan)# exit
Switch(config)# interface <INTERFACE>
Switch(config-if) switchport mode access
Swtich(config-if)# switchport access vlan <VLAN ID>
Switch(config-if)# mls qos trust cos
Switch(config-if)# switchport voice vlan <VOICE VLAN ID>
```

---
Assign a Voice VLAN to a Port
```Cisco IOS
Switch(config)# switchport voice vlan <VLAN ID>
```

# Configure Security

## Port Security

Enable Port Security
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# switchport mode access
Switch(config-if)# switchport port-security
```

---
Limit the Number of MAC Addresses on a Port
```Cisco IOS
Switch(config-if)# switchport port-security maximum <1-8192>
```

---
Manually Configuring a MAC Address on a Secure Port
```Cisco IOS
Switch(config-if)# switchport port-security mac-address <MAC ADDRESS>
```

---
Dynamically Configure and Save to Memory a MAC Address on a Secure Port
```Cisco IOS
Switch(config-if)# switchport port-security mac-address sticky
```

---
Enable Static Port Aging
```Cisco IOS
Switch(config-if)# switchport port-security aging static
```

---
Specify a Secured Port's Aging Time
```Cisco IOS
Switch(config-if)# switchport port-security aging time <TIME>
```

---
Specify a Secured Port's Type
```Cisco IOS
Switch(config-if)# switchport port-security aging type <absolute|inactivity>
```

---
Enable Port Security Violation
```Cisco IOS
Switch(config-if)# switchport port-security violation <protect|restrict|shutdown>
```

## DHCP Snooping

Enable DHCP Snooping
```Cisco IOS
Switch(config)# ip dhcp snooping
```

---
Trusting an Interface
```Cisco IOS
Switch(config-if)# ip dhcp snooping trust
```

---
Configure a Limit Rate 
```Cisco IOS
Switch(config-if)# ip dhcp snooping limit rate <VALUE>
```

---
Enable DHCP Snooping by VLAN
```Cisco IOS
Switch(config)# ip dhcp snooping <VLAN>
```

---
Display DHCP Snooping Configurations
```Cisco IOS
Switch# show ip dhcp snooping
```

---
Display the DHCPv4 Configurations
```Cisco IOS
Switch# show running-config | section dhcp
Switch# show ip dhcp pool [POOL NAME]
Switch# show ip dhcp binding
```

## Dynamic Arp Inspection

Trust an Interface to Allow ARP Packets to Pass Through Without Inspection
```Cisco IOS
Switch(config-if)# ip arp inspection trust
```

---
Inspect the ARP Packet's Ethernet Header and ARP Body 
```Cisco IOS
Switch(config)# ip arp inspection validate <SOURCE MAC ADDRESS> <DESTINATION MAC ADDRESS> <IP ADDRESS>
```

# Configure Protocols

## SSH

Verify the Switch Supports SSH
```Cisco IOS
Switch# show ip ssh
```

--- 
Display SSH Related Information
```Cisco IOS
Switch# show ssh
```

---
Configure the IP Domain
```Cisco IOS
Switch(config)# ip domain-name <DOMAIN NAME>
```

---
Configure SSH
```Cisco IOS
Switch(config)# ip ssh version <SSH VERSION>
```

---
Generate RSA Key Pair
```Cisco IOS
Switch(config)# crypto key generate rsa
How many bits in the modulus [512]: <NUMBER OF BITS>
```

---
Delete RSA Key Pair
```Cisco IOS
Switch(config)# crypto key zeroize rsa
```

---
Configure User Authentication
```Cisco IOS
Switch(config)# username <USERNAME> secret <PASSWORD>
```

---
Enable SSH on the VTY Lines
```Cisco IOS
Switch(config)# line vty 0 15
Switch(config-line)# transport input ssh
Switch(config-line)# login local
```

## DHCPv4

Create an Address Pool
```Cisco IOS
Switch(config)# ip dhcp pool <POOL NAME>
Switch(dhcp-config)# network <NETWORK ADDRESS> <SUBNET MASK>
```

---
Configure an Address Pool
```Cisco IOS
Switch(dhcp-config)# default-router <DEFAULT GATEWAY ADDRESS>
Switch(dhcp-config)# dns-server <IP ADDRESS> [IP ADDRESS]
Switch(dhcp-config)# domain-name <DOMAIN NAME>
```

---
Exclude an IP Address From a Pool
```Cisco IOS
Switch(config)# ip dhcp pool <POOL NAME>
Switch(dhcp-config)# ip dhcp excluded-address <IP ADDRESS>
```

---
Exclude a Range of IP Addresses From a Pool
```Cisco IOS
Switch(config)# ip dhcp pool <POOL NAME>
Switch(dhcp-config)# ip dhcp excluded-address <STARTING ADDRESS> <LAST ADDRESS>
```

---
Assign an IPv4 Address With DHCP
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# ip address dhcp
```

---
Disable the DHCPv4 Server on Cisco IOS
```Cisco IOS
Switch(config)# no service dhcp
```

---
Enable the DHCPv4 Server on Cisco IOS
```Cisco IOS
Switch(config)# service dhcp
```

---
Configure a Device as a Relay Agent
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# ip helper-address <IP ADDRESS>
```
## DHCPv6

Enable the Address (A) Autoconfiguration Flag 
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# ipv6 nd prefix default no-autoconfig
```

---
Disable the Address (A) Autoconfiguration Flag 
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# no ipv6 nd prefix default no-autoconfig
```

---
Enable the Other (O) Configuration Flag 
```Cisco IOS

```

---
Enable the Managed (M) Address Configuration Flag
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# ipv6 nd managed-config-flag
```

---
Disable the Managed (M) Address Configuration Flag
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# no ipv6 nd managed-config-flag
```

## Dynamic Trunking Protocol

Disable DTP on a Port
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# switchport mode trunk
Switch(config-if)# switchport nonegotiate
```

---
Enable DTP on a Port
```Cisco IOS
Switch(config)# interfaces <INTERFACE ID>
Switch(config-if)# switchport mode dynamic [auto|desirable]
```

---
Show DTP Mode
```Cisco IOS
Switch# show dtp mode <INTERFACE ID>
```

## Spanning Tree Protocol

empty
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# spanning-tree portfast
```

---
empty
```Cisco
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# spanning-tree bpduguard enable
```

## Link Layer Discovery Protocol

## Cisco Discovery Protocol

## Link Aggregation Control Protocol

Configuring an EtherChannel With LACP
```Cisco IOS
Switch(config)# interface range <INTERFACE ID RANGE>
Switch(config-if-range)# channel-group <CHANNEL ID> mode active
Switch(config-if-range)# exit
Switch(config)# interface port-channel <CHANNEL ID>
Switch(config-if)# switchport mode trunk
Switch(config-if)# switchport trunk allowed vlan <VLAN ID>
```

## Hot Standby Router Protocol

Manually Configure HSRP Priority
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# standby <GROUP ID> ip <IPv4 ADDRESS>
Switch(config-if)# standby <GROUP ID> priority <0 - 255>
```

---
Enable HSRP Preemption
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# standby <GROUP ID> ip <IPv4 ADDRESS>
Switch(config-if)# standby <GROUP ID> preempt
```

## IPv4

## IPv6

Enable the Sending of RA Messages (Enabling SLAAC)
```Cisco IOS
Switch(config)# ipv6 unicast-routing
```

---
Assign an IPv6 Address
```Cisco IOS
Switch# ipv6 address <IPv6 ADDRESS>/<PREFIX LENGTH>
```

# EtherChannel

Verify EtherChannel
```Cisco IOS
Switch# show interfaces port-channel <CHANNEL ID>
Switch# show etherchannel summary
Switch# show etherchannel port-channel
Switch# show interfaces <INTERFACE ID> etherchannel
```

# Layer 3 Commands

# Configure Routing

## Configure a Routed Port
```Cisco IOS
Switch(config)# interface <INTERFACE ID>
Switch(config-if)# no switchport
```

## Enable Routing
```Cisco IOS
Switch(config)# ip routing
```

## Configure Routing With the OSPF Protocol
```Cisco IOS
Switch(config)# router ospf 10
Switch(config-router)# network <IP ADDRESS> <WILDCARD MASK> area <AREA NUMBER>
```

## Create an SVI
```Cisco IOS
Switch(config)# interface vlan <VLAN ID>
Switch(config-if)# description Default Gateway SVI for <NETWORK IP ADDRESS>
Switch(config-if)# ip address <DEFAULT GATEWAY ADDRESS>
```
