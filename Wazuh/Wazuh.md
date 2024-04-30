# Install Wazuh

```Bash
# Download the wazuh install shell script
sudo curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh

# Grant the newly downloaded wazuh install shell script executable permissions
sudo chmod +x wazuh-install.sh

# Execute the wazuh install shell script with the "-a" flag, which specifies the script to install and configure Wazuh server, Wazuh indexer, and Wazuh dashboard
sudo ./wazuh-install.sh -a
```

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Wazuh/Assets/Capture.PNG)

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Configure Wazuh

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Wazuh/Assets/Wazuh%20pt1.PNG)

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Wazuh/Assets/Wazuh%20pt2.PNG)

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Wazuh/Assets/Wazuh%20pt1.PNG)

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Wazuh/Assets/Wazuh%20pt4.PNG)

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Wazuh/Assets/Wazuh%20pt5.PNG)

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

## Change Admin Password

```Bash
sudo su
bash /usr/share/wazuh-indexer/plugins/opensearch-security/tools/wazuh-passwords-tool.sh -u admin -p <NEW PASSWORD>
```

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Change%20Wazuh%20Password%20pt1.jpg)

```Bash
sudo systemctl restart filebeat.service
sudo systemctl restart wazuh-dashboard.service
```

## Install Wazuh Agent

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Install%20Wazuh%20Agent%20pt1.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Install%20Wazuh%20Agent%20pt2.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Install%20Wazuh%20Agent%20pt3.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Install%20Wazuh%20Agent%20pt4.jpg)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Install%20Wazuh%20Agent%20pt5.jpg)

```Bash
┌──(kalipurple㉿ClientMachine)-[~]
└─$ wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.7.4-1_amd64.deb && sudo WAZUH_MANAGER='10.4.0.58' WAZUH_AGENT_GROUP='default' WAZUH_AGENT_NAME='KaliPurple' dpkg -i ./wazuh-agent_4.7.4-1_amd64.deb
--2024-04-30 16:54:04--  https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.7.4-1_amd64.deb
Resolving packages.wazuh.com (packages.wazuh.com)... 3.162.3.101, 3.162.3.62, 3.162.3.64, ...
Connecting to packages.wazuh.com (packages.wazuh.com)|3.162.3.101|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 9372734 (8.9M) [binary/octet-stream]
Saving to: ‘wazuh-agent_4.7.4-1_amd64.deb’

wazuh-agent_4.7.4-1 100%[================>]   8.94M  --.-KB/s    in 0.1s    

2024-04-30 16:54:04 (88.9 MB/s) - ‘wazuh-agent_4.7.4-1_amd64.deb’ saved [9372734/9372734]

[sudo] password for kalipurple: 
Selecting previously unselected package wazuh-agent.
(Reading database ... 333163 files and directories currently installed.)
Preparing to unpack .../wazuh-agent_4.7.4-1_amd64.deb ...
Unpacking wazuh-agent (4.7.4-1) ...
Setting up wazuh-agent (4.7.4-1) ...
```

```Bash
┌──(kalipurple㉿ClientMachine)-[~]
└─$ sudo systemctl daemon-reload
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent
Created symlink /etc/systemd/system/multi-user.target.wants/wazuh-agent.service → /lib/systemd/system/wazuh-agent.service.
```

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Install%20Wazuh%20Agent%20pt6.jpg)

## Remove Wazuh Agent From Dashboard

```Bash
cd /var/ossec/bin
./manage_agents
```

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Remove%20Wazuh%20Agent%20pt1.jpg)

## Uninstall Wazuh Agent From Client

```Bash
sudo systemctl stop wazuh-agent.service
sudo dpkg --remove wazuh-agent
```

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Wazuh/Assets/Delete%20Wazuh%20Agent%20From%20Client.jpg)
