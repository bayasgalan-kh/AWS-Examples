#!/bin/bash

sudo yum update -y

sudo yum install -y httpd

sudo systemctl start httpd

sudo systemctl enable httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to my Website</title>
</head>
<body>
    <h1>Hello World!</h1>
</body>
</html>
EOF

sudo systemctl restart httpd