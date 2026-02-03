---------------------------------Headline------------------------------
-- System/Module : 			ENABLERDB
-- Script Name   : 			DML_ENABLERDB_INIT_AR_ACCOUNT.sql
-- Created by    :     	Adnane AMELLAL
-- Creation date : 			20/05/2025
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

INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('35','3421180011','Compte Client Particulier', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('25','3421180011','Compte Client Particulier', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('27','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('26','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('28','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('29','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('30','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('31','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('32','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('33','3421180012','Compte Revendeurs agréés', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('6','3421280011','Compte Clients Officiels', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('8','3421180021','Compte Collectivités Locales', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('7','3421180022','Offices et Etablissements Publics', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('36','3421180025','Grossiste Linéatec', SYSDATE, 'RET' );
                    
INSERT INTO GLACCOUNT.AR_ACCOUNT  (CATEGORY_ID ,AR_GLCODE, GLADESC,  ENTRY_DATE,  CATALOG ) 
                    values ('37','3421180028','Annonceurs Annuaires', SYSDATE, 'RET' );

--
 COMMIT;
-- 
END;
/

SPOOL OFF
EXIT;