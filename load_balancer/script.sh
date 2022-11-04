#!/bin/bash

echo "Copying configuration file to conf.d..."
cp load_balancer.conf /etc/nginx/conf.d/

echo "Reloading NGINX..."
service nginx reload

echo "Starting server script..."
python3 ./uuid-generator.py
