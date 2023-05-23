#!/bin/bash
sleep 10

if [ ! -f "/var/www/wordpress/wp-config.php" ]; then
	wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
	cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz		
	wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'
	wp core install --allow-root --path='/var/www/wordpress' --url=hlevi.42.fr --title=Inception --admin_user=$SQL_USER --admin_password=$SQL_PASSWORD --admin_email=$WP_ADMIN_EMAIL
	wp user create --allow-root --path='/var/www/wordpress' $WP_USER_NAME $WP_USER_EMAIL --user_pass=$WP_USER_PASSWORD
fi

chown -R www-data:www-data /var/www/wordpress
chmod -R 755 /var/www/wordpress

if [ ! -d "/run/php" ]; then
	mkdir /run/php
fi

exec "$@"
