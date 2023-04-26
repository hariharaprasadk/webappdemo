#!/bin/bash
sleep 2m
dpkg --configure -a
apt-get -y update

# install Apache2 on the newly deployed VM
apt-get -y install apache2
apt-get -y install mysql-server
apt-get -y install php libapache2-mod-php php-mysql

# Create the webpage to be seen on launching the URL
echo \<center\>\<h1\>Welcome to DNB WebApp portal \</h1\>\</center\> > /var/www/html/demo.html
echo \<center\>\<img src\=\"https\://www.ericsson.com/4aaaa2/assets/local/digital-services/offerings/network-automation/na-components.png\" width\=\"1100\" height\=\"700\"\>\</center\> >> /var/www/html/demo.html
echo \<center\>\<img src\=\"https\://upload.wikimedia.org/wikipedia/commons/e/e9/Ericsson_logo.svg\" alt\=\"upload.wikimedia.org\" width\=\"104\" height\=\"142\"\>\</center\> >> /var/www/html/demo.html
echo \<center\>\<img src\=\"https\://upload.wikimedia.org/wikipedia/en/2/2b/Digital_Nasional_Berhad_logo.svg\" alt\=\"upload.wikimedia.org\" width\=\"104\" height\=\"142\"\>\</center\> >> /var/www/html/demo.html

# restart Apache
apachectl restart
