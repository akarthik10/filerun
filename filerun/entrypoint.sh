#!/bin/bash
set -eux

# Check if user exists
if ! id -u ${APACHE_RUN_USER} > /dev/null 2>&1; then
	echo "The user ${APACHE_RUN_USER} does not exist, creating..."
	groupadd -f -g ${APACHE_RUN_GROUP_ID} ${APACHE_RUN_GROUP}
	useradd -u ${APACHE_RUN_USER_ID} -g ${APACHE_RUN_GROUP} ${APACHE_RUN_USER}
	echo "Owning /var/www/html files..."
	chown -R ${APACHE_RUN_USER}:${APACHE_RUN_GROUP} /var/www/html
	echo "Owning user files root..."
	chown ${APACHE_RUN_USER}:${APACHE_RUN_GROUP} /user-files
fi

exec "$@"
