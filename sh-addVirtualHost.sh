echo "Please enter project relative path ( example: project/www ): "
read documentRoot

echo "Please Enter ServerName ( example: project.local )"
read serverName

SITE_FOLDER='/Users/ricardomccerqueira/Sites/'

sudo chmod -R 777 /etc/apache2/extra/
sudo chmod -R 777 /private/etc/hosts

echo '<VirtualHost *:80>
    ServerAdmin webmaster@dummy-host2.example.com
    DocumentRoot "'$SITE_FOLDER$documentRoot'"
    ServerName '$serverName'
    ErrorLog "'$SITE_FOLDER$documentRoot'/logs/error.log"
    CustomLog "'$SITE_FOLDER'logs/'$documentRoot'/logs/error_custom.log" common
</VirtualHost>' >> /etc/apache2/extra/httpd-vhosts.conf

sudo echo '127.0.0.1 '$serverName >> /private/etc/hosts

sudo chmod -R 755 /etc/apache2/extra/
sudo chmod -R 755 /private/etc/hosts