# Modify vhost to load the main www dir, not the public subdir.
sed -i s,/var/www/public,/var/www,g /etc/apache2/sites-available/000-default.conf
sed -i s,/var/www/public,/var/www,g /etc/apache2/sites-available/scotchbox.local.conf
		
# install php5-xsl, which is a required ext for magento2
add-apt-repository ppa:ondrej/php
apt-get update
apt-get upgrade
apt-get autoremove
apt-get -y install php5.6 php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-xml
apt-get -y install php5.6-intl php5.6-gd php5.6-zip php5.6-curl
a2dismod php5
a2enmod php5.6


# remove mysql 5.5 and install mysql 5.6
echo "###### Install MySQL 5.6 ######"
apt-get -y remove mysql-server
apt-get -y autoremove
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install mysql-server-5.6 mysql-client-5.6

echo 'echo "always_populate_raw_post_data = -1" >> /etc/php/5.6/apache2/php.ini' | sudo -s

# restart server after installing new php module
echo "###### Restart apache ######"
service apache2 restart


