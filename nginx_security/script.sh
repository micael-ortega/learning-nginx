#!/bin/bash

mkdir /var/www/sitepreview \
&& cp index.html /var/www/sitepreview 

echo "đĒļ - Ensuring apache-utils is installed..."
apt install apache2-utils -y

echo "đ¤ - Creating CEO credentials... (don't try this at home)"
htpasswd -cb /etc/nginx/passwords CEO qwerty

echo "đ - Copying secure.conf to /conf.d/ directory..."
cp /projects/secure.conf /etc/nginx/conf.d/

echo "â - Ensuring secure.conf is valid for NGINX..."
nginx -t 


echo "âŋ - Ensuring new config file is applied..."
service nginx reload
