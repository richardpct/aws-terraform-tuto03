#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install apache2
echo "Hello World !" > /var/www/html/index.html
echo "Environment: ${environment}" >> /var/www/html/index.html
