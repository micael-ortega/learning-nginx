#!/bin/bash

sudo apt-get update y 
sudo apt-get install nginx
sudo service status nginx
curl -I localhost