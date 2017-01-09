#!/usr/bin/bash

# This script automatically installs and configures MariaDB 10.1.

# copy repo file
sudo cp /vagrant/mariadb.repo /etc/yum.repos.d/

# update
sudo yum -y update

# install mariadb
sudo yum -y install mariadb-server

# ensure it is running
sudo /etc/init.d/mysql restart

# set to auto start (not yet a native service so use old style)
sudo chkconfig mysql on 

### post-install setup

# set root password
sudo /usr/bin/mysqladmin -u root password 'password'

# allow remote access (required to access from our private network host. Note that this is completely insecure if used in any other way)
mysql -u root -ppassword -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION; FLUSH PRIVILEGES;"

# drop the anonymous users
mysql -u root -ppassword -e "DROP USER ''@'localhost';"
mysql -u root -ppassword -e "DROP USER ''@'$(hostname)';"

# drop the demo database
mysql -u root -ppassword -e "DROP DATABASE test;"

# restart
sudo /etc/init.d/mysql restart

