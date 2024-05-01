# Install GLPI

```Bash
sudo apt -y update && sudo apt -y upgrade

sudo apt -y install wget curl mariadb-server php apache2 libapache2-mod-php php-{curl,zip,bz2,gd,imagick,intl,apcu,memcache,imap,mysql,cas,ldap,tidy,pear,xmlrpc,pspell,mbstring,json,iconv,xml,xsl}
sudo mysql_secure_installation

$ sudo mysql -u root -p
CREATE DATABASE glpi;
CREATE USER 'glpi'@'localhost' IDENTIFIED BY 'StrongDBPassword';
GRANT ALL PRIVILEGES ON glpi.* TO 'glpi'@'localhost';
FLUSH PRIVILEGES;
EXIT;

$ sudo vim /etc/php/*/apache2/php.ini
session.cookie_httponly = on

VER=$(curl -s https://api.github.com/repos/glpi-project/glpi/releases/latest|grep tag_name|cut -d '"' -f 4)
wget https://github.com/glpi-project/glpi/releases/download/$VER/glpi-$VER.tgz

tar xvf glpi-$VER.tgz

sudo mv glpi /var/www/html/

sudo chown -R www-data:www-data /var/www/html/
```

![](https://github.com/JonmarCorpuz/SecondBrain/blob/main/Assets/Whitespace.png)

# Configure GLPI

