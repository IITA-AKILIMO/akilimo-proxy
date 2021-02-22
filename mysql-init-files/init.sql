# create databases
CREATE DATABASE IF NOT EXISTS `akilimo_db_test`;
CREATE DATABASE IF NOT EXISTS `akilimo_site`;
CREATE DATABASE IF NOT EXISTS `akilimo_dms` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_bin;

# create root user and grant rights
GRANT ALL PRIVILEGES ON akilimo_site.* TO 'akilimo'@'%';
GRANT ALL PRIVILEGES ON akilimo_db_test.* TO 'akilimo'@'%';
GRANT ALL PRIVILEGES ON akilimo_dms.* TO 'akilimo'@'%';

DROP SCHEMA `akilimo_site`;
DROP SCHEMA  `akilimo_db_test`;
