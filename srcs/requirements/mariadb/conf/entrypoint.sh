#!/bin/sh
if [ ! -d "/var/lib/mysql/$SQL_DATABASE" ]; then
	service mysql start
	sleep 5
	mysql << EOF

	CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;
	CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';
	GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';
	ALTER USER 'root'@'localhost' IDENTIFIED BY '$SQL_ROOT_PASSWORD';
	EOF

	mysqladmin -p$SQL_ROOT_PASSWORD shutdown
fi

exec "$@"
