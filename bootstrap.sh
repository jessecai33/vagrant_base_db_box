#!/usr/bin/env bash

# Ubuntu mysql box provision

sudo apt-get -y update

#local time
sudo ln -sf /usr/share/zoneinfo/Australia/Sydney /etc/localtime
# ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime

#git
sudo apt-get -y install git-core

#mariaDB
sudo apt-get -y install python-software-properties
sudo apt-get -y install software-properties-common
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mirror.aarnet.edu.au/pub/MariaDB/repo/5.5/ubuntu precise main'
sudo apt-get -y update
sudo apt-get -y install mariadb-server

#install sysv-rc-conf (Ubuntu version of chkconfig)
sudo apt-get -y install sysv-rc-conf

# autostarg mysql
sudo sysv-rc-conf mysqld on

# start mysql
sudo service mysqld restart
