#!/bin/bash

# Repositories
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:certbot/certbot
sudo add-apt-repository -y ppa:ondrej/php

# Updates
sudo apt-get update -y
sudo apt-get upgrade -y

# Basic stuff and nginx
sudo apt-get install -y git curl zip nginx software-properties-common

# Certbot
sudo apt-get install -y python-certbot-nginx 

# PHP

sudo apt-get install -y php7.3-fpm php7.3-common php7.3-mysql php7.3-bcmath php7.3-xml php7.3-mbstring php7.3-zip php7.3-redis php7.3-curl

# Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
