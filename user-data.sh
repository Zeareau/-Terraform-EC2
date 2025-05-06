#!/bin/bash
yum update -y
yum install -y nginx
systemctl start nginx
systemctl enable nginx
echo '<h1>Hello from Terraform EC2 Web Server</h1>' > /usr/share/nginx/html/index.html