BEGIN
  -- tables
  FOR cur IN (SELECT table_name FROM dba_tables WHERE OWNER = 'schema')
  LOOP
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE, DELETE ON schema.' || cur.table_name || ' TO user';
  END LOOP;
  
  -- sequences
  FOR cur IN (SELECT sequence_name from DBA_SEQUENCES WHERE SEQUENCE_OWNER = 'schema')
  LOOP
    EXECUTE IMMEDIATE 'GRANT SELECT ON schema.' || cur.sequence_name || ' TO user';
  END LOOP;
  
  -- views
  FOR cur IN  (SELECT view_name FROM DBA_VIEWS WHERE owner = 'schema')
  LOOP
    EXECUTE IMMEDIATE 'GRANT SELECT ON schema.' || cur.view_name || ' TO user';
  END LOOP;
    
  -- procedures
  FOR cur IN  (SELECT object_name FROM DBA_PROCEDURES WHERE owner = 'schema')
  LOOP
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON schema.' || cur.object_name || ' TO user';
  END LOOP;
    
END;

