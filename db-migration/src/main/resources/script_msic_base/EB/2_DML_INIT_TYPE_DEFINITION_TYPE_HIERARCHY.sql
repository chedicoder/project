---------------------------------Headline------------------------------
-- System/Module : 			BSCS EB
-- Script Name   : 			DML_INIT_TYPE_DEFINITION_TYPE_HIERARCHY.sql
-- Created by    :     	Adnane AMELLAL
-- Creation date : 			28/02/2025
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

SPOOL $WORK/TMP/DML_INIT_TYPE_DEFINITION_TYPE_HIERARCHY.&&V_SYSDATE..LST


BEGIN

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('DR', 'Direction Régionale');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('DL', 'Délégation');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('AG', 'Agence');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('SR', 'Service Régional');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('RV', 'Revendeur');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('AD', 'Antenne');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('DC', 'Direction Centrale');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('DV', 'Division');

INSERT INTO TYPE_DEFINITION(TYPE_CODE, TYPE_DES)
     VALUES ('SC', 'Service Central');
     
INSERT INTO TYPE_DEFINITION (TYPE_CODE, TYPE_DES) 
     VALUES ('MT','Maroc Telecom');
     
INSERT INTO TYPE_DEFINITION (TYPE_CODE, TYPE_DES) 
     VALUES ('DT','Distributeur');  
     
INSERT INTO TYPE_DEFINITION (TYPE_CODE,
                             TYPE_DES,
                             ISROOT,
                             ISDEFAULT)
     VALUES ('DF',
             'Dealer fictif',
             'Y',
             NULL);     
             
UPDATE saleshierarchy.type_definition
   SET ISDEFAULT = 'X', ISROOT = 'Y'
 WHERE TYPE_CODE = 'MT';

UPDATE saleshierarchy.type_definition
   SET ISROOT = 'Y'
 WHERE TYPE_CODE = 'DT';             
     
--     
     
INSERT INTO TYPE_HIERARCHY
     VALUES ('AG', 'DL');

INSERT INTO TYPE_HIERARCHY
     VALUES ('DL', 'DR');

INSERT INTO TYPE_HIERARCHY
     VALUES ('RV', 'AG');

INSERT INTO TYPE_HIERARCHY
     VALUES ('AD', 'AG');

INSERT INTO TYPE_HIERARCHY
     VALUES ('SC', 'DV');

INSERT INTO TYPE_HIERARCHY
     VALUES ('DV', 'DC');

INSERT INTO TYPE_HIERARCHY
     VALUES ('SR', 'DL');

INSERT INTO TYPE_HIERARCHY
     VALUES ('DR', 'MT');

INSERT INTO TYPE_HIERARCHY
     VALUES ('DC', 'MT');     

--
 COMMIT;
-- 
END;
/

SPOOL OFF
EXIT;