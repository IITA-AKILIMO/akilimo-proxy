# create databases
CREATE DATABASE IF NOT EXISTS `akilimo_db2`;
CREATE DATABASE IF NOT EXISTS `akilimo_site`;

# create root user and grant rights
GRANT ALL PRIVILEGES ON *.* TO 'akilimo'@'%';
