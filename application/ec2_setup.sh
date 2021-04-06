#!/bin/bash
yum update -y httpd
echo 'Hello from Terraform' > /var/www/html/index.html
service httpd start

sudo yum install -y epel-release
sudo yum install -y stress