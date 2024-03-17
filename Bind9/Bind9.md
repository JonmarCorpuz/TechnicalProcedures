# Install Bind9

```Bash
sudo apt -y update && sudo apt -y upgrade
sudo apt install bind9
```

# Configure Lookup Zones

**Forward Lookup Zone**
```Bash
zone "<DOMAIN NAME>" {
  type <master|slave|stub|forward|hint>
  file "<FORWARD LOOKUP ZONE CONFIGURATION FILE PATH>"
}
```


**Reverse Lookup Zone**
```Bash
zone "<NETWORK ADDRESS>.in-addr.arpa" {
  type <master|slave|stub|forward|hint>
  file "<REVERSE LOOKUP ZONE CONFIGURATION FILE PATH>"
}
```

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Bind9/Assets/Bind9%20Zones.png)

## Configure Forward Lookup Zones

```Bash

```

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Bind9/Assets/Bind9%20Forward%20Zones.png)

## Configure Reverse Lookup Zones

```Bash

```

![](https://github.com/JonmarCorpuz/Documentations/blob/main/Bind9/Assets/Bind9%20Reverse%20Lookup%20Zone.png)
