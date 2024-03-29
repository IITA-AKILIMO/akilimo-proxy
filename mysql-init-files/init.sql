# create databases
CREATE DATABASE IF NOT EXISTS `akilimo_db`;
CREATE DATABASE IF NOT EXISTS `akilimo_site`;
CREATE DATABASE IF NOT EXISTS `akilimo_dms` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_bin;
CREATE DATABASE IF NOT EXISTS `keycloak`;

# create root user and grant rights
GRANT ALL PRIVILEGES ON akilimo_site.* TO 'akilimo'@'%';
GRANT ALL PRIVILEGES ON akilimo_db.* TO 'akilimo'@'%';
GRANT ALL PRIVILEGES ON akilimo_dms.* TO 'akilimo'@'%';
GRANT ALL PRIVILEGES ON keycloak.* TO 'akilimo'@'%';

#DROP SCHEMA  `akilimo_db_test`;
DROP SCHEMA `keycloak`;
DROP SCHEMA `akilimo_dms`;
