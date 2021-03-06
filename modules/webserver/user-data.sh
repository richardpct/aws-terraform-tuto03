#!/bin/bash

index_html=/usr/share/nginx/html/index.html
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
sudo yum -y update
sudo yum -y upgrade
sudo yum -y install nginx
cat << EOF > $index_html
Hello World!<br />
Environment: ${environment}
EOF
/etc/init.d/nginx start
