#!/bin/bash

#UPDATE SERVER

echo 'start update server'

apt-get update

echo 'start upgrade server'
apt-get upgrade -y

echo 'start install apps'
apt-get install apache2 -y
apt-get install unzip -y

echo 'go to path /tmp'
cd /tmp

echo 'downloading git code from https'
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'unziping the file downloaded'
unzip main.zip

echo 'go to path unziped'
cd linux-site-dio-main

echo 'copy the unziped directory an paste at path /var/www/html/'
cp -R * /var/www/html/


