set ORACLE_SID=<YOUR_DB>

sqlplus / as sysdba
startup upgrade;
exit

cd $ORACLE_HOME/rdbms/admin
$ORACLE_HOME/perl/bin/perl catctl.pl catupgrd.sql

sqlplus / as sysdba
shutdown immediate;
startup;
