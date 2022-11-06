#!/bin/bash

mkdir /var/www/sitepreview \
&& cp index.html /var/www/sitepreview 

echo "🪶 - Ensuring apache-utils is installed..."
apt install apache2-utils -y

echo "👤 - Creating CEO credentials... (don't try this at home)"
htpasswd -cb /etc/nginx/passwords CEO qwerty

echo "📎 - Copying secure.conf to /conf.d/ directory..."
cp /projects/secure.conf /etc/nginx/conf.d/

echo "✅ - Ensuring secure.conf is valid for NGINX..."
nginx -t 


echo "➿ - Ensuring new config file is applied..."
service nginx reload
