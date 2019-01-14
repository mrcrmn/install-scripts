#!/bin/bash

PW=$(openssl rand -base64 8)

sudo mysql -e "create database $1; GRANT ALL PRIVILEGES ON $1.* TO '$1'@'localhost' IDENTIFIED BY '$PW';"

echo "Created Database: $1"
echo "Created new User: $1"
echo "Password for $i is: $PW"