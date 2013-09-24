#!/usr/bin/env bash

# Ubuntu mysql box provision

apt-get -y update

# local time
ln -sf /usr/share/zoneinfo/Australia/Sydney /etc/localtime
# ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime

# git
apt-get -y install git-core

# MySQL
apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
# will be prompted with password

mysql_install_db

/usr/bin/mysql_secure_installation

#install sysv-rc-conf (Ubuntu version of chkconfig)
apt-get -y install sysv-rc-conf

# autostarg mysql
sysv-rc-conf mysqld on

# start mysql
service mysqld restart
