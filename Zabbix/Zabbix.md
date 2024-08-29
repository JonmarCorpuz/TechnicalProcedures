# Install Zabbix

```Bash
sudo apt -y update && sudo apt -y upgrade
```

```Bash
# Ubuntu 
sudo wget https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1+focal_all.deb
sudo dpkg -i zabbix-release_5.0-1+focal_all.deb
sudo apt -y update && sudo apt -y upgrade
```

```Bash

```

```Bash
sudo apt -y install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent mysql-server

sudo mysql_secure_installation

sudo mysql -u root -p 
CREATE DATABASE zabbixDB CHARACTER SET utf8 COLLATE utf8_bin;
CREATE USER zabbix@localhost IDENTIFIED BY 'StrongDBPassword';
GRANT ALL PRIVILEGES ON zabbixDB.* TO zabbix@localhost;
EXIT;

# The password is the password you gave for the database
zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | mysql -u zabbix -p zabbixDB
```

```Bash
# Enable timezones
sudo nano /etc/zabbix/apache.conf
```

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt5-2.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt5-3.jpg)

```Bash
# Ensure that the usernames and passwords match those of your mysql database
sudo nano /etc/zabbix/zabbix_server.conf
```

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20DB%20Password%20pt1.png)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20DB%20Password%20pt2.png)

```Bash
sudo systemctl restart apache2
sudo systemctl restart zabbix-server.service
```

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt6.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt7.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt8.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt9.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt10.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt11.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt12.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Zabbix%20Install%20pt13.jpg)

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Configure Zabbix

## Add SNMP Agent

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt1.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt2.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt3.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt4.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt5.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt6.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt7.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt8.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt9.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt10.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt11.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Zabbix/Assets/Add%20Cisco%20Device%20SNMP%20pt12.jpg)
