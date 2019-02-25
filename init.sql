CREATE USER sammy IDENTIFIED BY sammy;

GRANT CONNECT,RESOURCE,DBA TO sammy;
GRANT CREATE SESSION TO sammy;
GRANT UNLIMITED TABLESPACE TO sammy;
GRANT create table TO sammy;
GRANT create view TO sammy;
GRANT create any trigger TO sammy;
GRANT create any procedure TO sammy;
GRANT create sequence TO sammy;
GRANT create synonym TO sammy;

SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'SAMMY';
