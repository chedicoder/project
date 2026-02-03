---------------------------------Headline------------------------------
-- System/Module : 			BSCS EB
-- Script Name   : 			DML_INIT_INFO_FIELDS.sql
-- Created by    :     	Adnane AMELLAL
-- Creation date : 			22/02/2025
--    
-- Modified by        
-- Modification date    
-- Modification Reason 
--        
-- Version          1.0                
-- DELIVERY 	    	
-- Tables impacted  
--
-- Description:
--
-- Parameters     IN/OUT
--------------------------------Barcode--------------------------------
SET ARRAYSIZE 1;
SET ECHO ON;
SET SERVEROUTPUT ON;
EXECUTE DBMS_OUTPUT.ENABLE(1000000);
WHENEVER SQLERROR EXIT 1 ROLLBACK;
WHENEVER OSERROR  EXIT 2 ROLLBACK;
UNDEF V_SYSDATE
SET FEEDBACK ON;

COLUMN V_SYSDATE  NEW_VALUE V_SYSDATE   NOPRINT
SELECT TO_CHAR (SYSDATE, 'yyyymmddhh24miss') V_SYSDATE FROM DUAL;

SPOOL $WORK/TMP/DML_INIT_INFO_FIELDS.&&V_SYSDATE..LST


BEGIN

INSERT INTO INFO_FIELDS (INFO_FIELD_NAME,
                         INFO_LABEL,
                         INFO_TYPE,
                         REC_VERSION)
     VALUES ('TEXT21',
             'Type',
             'A',
             1);

INSERT INTO INFO_FIELDS (INFO_FIELD_NAME,
                         INFO_LABEL,
                         INFO_TYPE,
                         REC_VERSION)
     VALUES ('TEXT22',
             'Qualification',
             'A',
             1);

--
 COMMIT;
-- 
END;
/

SPOOL OFF
EXIT;