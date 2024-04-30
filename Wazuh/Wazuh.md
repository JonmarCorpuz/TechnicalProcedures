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

![]()

```Bash
sudo systemctl restart filebeat.service
sudo systemctl restart wazuh-dashboard.service
```

## Install Wazuh Agent

## Remove Wazuh Agent From Dashboard

```Bash
cd /var/ossec/bin
./manage_agents
```

## Uninstall Wazuh Agent From Client

```Bash
sudo systemctl stop wazuh-agent.service
sudo dpkg --remove wazuh-agent
```
