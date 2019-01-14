#!/bin/bash

# Repositories
sudo add-apt-repository --yes universe
sudo add-apt-repository --yes ppa:certbot/certbot
sudo add-apt-repository --yes ppa:ondrej/php

# Updates
sudo apt-get update --yes
sudo apt-get upgrade --yes

# Basic stuff and nginx
sudo apt-get install --yes git curl zip nginx software-properties-common

# Certbot
sudo apt-get install --yes python-certbot-nginx 

# PHP
sudo apt-get install --yes php7.3-fpm php7.3-common php7.3-mysql php7.3-bcmath php7.3-xml php7.3-mbstring php7.3-zip 

# Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo chmod 777 -R /var/www