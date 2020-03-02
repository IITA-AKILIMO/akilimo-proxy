# create databases
CREATE DATABASE IF NOT EXISTS `akilimo_db_test`;
CREATE DATABASE IF NOT EXISTS `akilimo_site`;

# create root user and grant rights
GRANT ALL PRIVILEGES ON akilimo_site.* TO 'akilimo'@'%';
GRANT ALL PRIVILEGES ON akilimo_db_test.* TO 'akilimo'@'%';
