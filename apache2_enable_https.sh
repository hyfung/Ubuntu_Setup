sudo apt install -y openssl

sudo a2enmod ssl
sudo service apache2 restart

sudo mkdir /etc/apache2/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt

sudo vim /etc/apache2/sites-available/default-ssl.conf
#SSLCertificateFile /etc/apache2/ssl/apache.crt
#SSLCertificateKeyFile /etc/apache2/ssl/apache.key

sudo vim /etc/apache2/sites-available/000-default.conf
#Redirect permanent /secure https://yourdomain.com/secure 

sudo a2ensite default-ssl.conf
sudo service apache2 restart
