# Install CentOS

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt1.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt12.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt3.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt4.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt5.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt6.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt7.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt8.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt9.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt10.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt11.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt12.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt13.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt14.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt15.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/CentOS%20Server/Assets/TACACS%20pt16.jpg)

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Configure CentOS

## Change IP Address

```Bash
#
sudo nano /etc/sysconfig/network-scripts/ifcfg-<interface_id>

# 
#DEVICE=<interface>
#BOOTPROTO=none
#ONBOOT=yes
#IPADDR=<ip_address>
#NETMASK=<subnet_mask>
#GATEWAY=<default_gateway>
#DNS1=8.8.8.8
#DNS2=8.8.4.4

#
sudo systemctl restart network
#
#sudo ifdown eth0 && sudo ifup eth0
```
or
```Bash
#
sudo apt -y install net-tools

#
sudo ifconfig <interface> <ip_address> netmask <subnet_mask>

#
sudo route add default gw <gateway_ip_address>
```
