Magento 2 - Scotch Box
==========
My Vagrant instance based on Scotch Box. It updates all dependencies to install Magento 2.

Thanks to 
https://github.com/meng-tian/magento2-scotch-box
https://github.com/scotch-io/scotch-box
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-magento-on-ubuntu-14-04
https://www.digitalocean.com/community/questions/how-to-upgrade-from-php-v-5-5-9-to-v-5-6
https://github.com/smutek/sassscotch/blob/master/vagrant_bootstrap/bootstrap.sh
https://github.com/scotch-io/scotch-box/issues/7
https://launchpad.net/~ondrej

What has been changed from Scotch Box:
- Install php5.6-xsl and other modules
- Remove MySQL 5.5 and install MySQL 5.6
- Increase memory limit and CPUs
- Changes the ip for easy to access (10.20.30.40)
- Disable php5 and enables php5.6

Database Name	
scotchbox
Database User	
root
Database Password	
root
Database Host	
localhost

$ git clone --depth=1 git@github.com:danielpina/magento2.git Mage2 && rm -rf Mage2/.git
