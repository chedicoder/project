---------------------------------Headline------------------------------
-- System/Module : 			ENABLERDB
-- Script Name   : 			DML_ENABLERDB_INIT_TRANSACTION_TYPE.sql
-- Created by    :     	Adnane AMELLAL
-- Creation date : 			03/06/2025
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

INSERT INTO TRANSACTION_TYPE (TRX_ID,
                              TRX_CODE,
                              TRX_DESC,
                              USE_CASE_SHDES)
     VALUES (1,
             'INVPAY',
             'Paiement de factures',
             'CE2DD');

INSERT INTO TRANSACTION_TYPE (TRX_ID,
                              TRX_CODE,
                              TRX_DESC,
                              TYPE,
                              USE_CASE_SHDES)
     VALUES (2,
             'ADVPAY',
             'Avance pour paiement',
             'A',
             'CE2CO');

INSERT INTO TRANSACTION_TYPE (TRX_ID,
                              TRX_CODE,
                              TRX_DESC,
                              USE_CASE_SHDES)
     VALUES (3,
             'DEPPAY',
             'Paiement de garantie',
             'CE2DP');

INSERT INTO TRANSACTION_TYPE (TRX_ID,
                              TRX_CODE,
                              TRX_DESC,
                              USE_CASE_SHDES)
     VALUES (4,
             'ADV2DEP',
             'Convertir avance en garantie',
             'CO2DP');

INSERT INTO TRANSACTION_TYPE (TRX_ID,
                              TRX_CODE,
                              TRX_DESC,
                              USE_CASE_SHDES)
     VALUES (5,
             'DEP2ADV',
             'Convertir garantie en avance',
             'DP2CO');

INSERT INTO TRANSACTION_TYPE (TRX_ID,
                              TRX_CODE,
                              TRX_DESC,
                              USE_CASE_SHDES)
     VALUES (6,
             'CANCLPAY',
             'Annuler de paiement',
             'RV-CE2DD');

--
 COMMIT;
-- 
END;
/

SPOOL OFF
EXIT;