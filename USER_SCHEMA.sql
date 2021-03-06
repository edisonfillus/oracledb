CREATE USER SCHEMA_NAME IDENTIFIED BY password
DEFAULT TABLESPACE SCHEMATSDT000
TEMPORARY TABLESPACE TEMPTS;

CREATE USER USER_NAME IDENTIFIED BY password
DEFAULT TABLESPACE SCHEMATSDT000
TEMPORARY TABLESPACE TEMPTS;

ALTER USER USER_NAME QUOTA UNLIMITED ON SCHEMATSDT000;

GRANT CREATE SESSION TO USER_NAME;

/* Create tables in SCHEMA_NAME using SYSTEM user, and grant privilegies to USER_NAME
