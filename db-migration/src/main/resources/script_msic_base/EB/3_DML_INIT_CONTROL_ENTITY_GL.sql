---------------------------------Headline------------------------------
-- System/Module : 			BSCS EB
-- Script Name   : 			DML_INIT_CONTROL_ENTITY_GL.sql
-- Created by    :     	Adnane AMELLAL
-- Creation date : 			13/03/2025
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

SPOOL $WORK/TMP/DML_INIT_QUALIFICATION_DEFINITION.&&V_SYSDATE..LST


BEGIN

/* Formatted on 13/06/2025 00:25:05 (QP5 v5.360) */
INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (12,
             1,
             '5115180012',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (12,
             2,
             '5115180012',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (12,
             3,
             '5115180012',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (12,
             4,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (12,
             5,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (12,
             6,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (2,
             7,
             '5115180002',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (2,
             8,
             '5115180002',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (2,
             9,
             '5115180002',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (2,
             10,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (2,
             11,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (2,
             12,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (1,
             13,
             '5115180001',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (1,
             14,
             '5115180001',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (1,
             15,
             '5115180001',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (1,
             16,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (1,
             17,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (1,
             18,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (3,
             19,
             '5115180003',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (3,
             20,
             '5115180003',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (3,
             21,
             '5115180003',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (3,
             22,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (3,
             23,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (3,
             24,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (4,
             25,
             '5115180004',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (4,
             26,
             '5115180004',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (4,
             27,
             '5115180004',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (4,
             28,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (4,
             29,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (4,
             30,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (5,
             31,
             '5115180005',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (5,
             32,
             '5115180005',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (5,
             33,
             '5115180005',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (5,
             34,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (5,
             35,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (5,
             36,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (6,
             37,
             '5115180006',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (6,
             38,
             '5115180006',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (6,
             39,
             '5115180006',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (6,
             40,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (6,
             41,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (6,
             42,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (7,
             43,
             '5115180007',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (7,
             44,
             '5115180007',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (7,
             45,
             '5115180007',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (7,
             46,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (7,
             47,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (7,
             48,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (8,
             49,
             '5115180008',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (8,
             50,
             '5115180008',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (8,
             51,
             '5115180008',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (8,
             52,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (8,
             53,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (8,
             54,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (9,
             55,
             '5115180009',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (9,
             56,
             '5115180009',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (9,
             57,
             '5115180009',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (9,
             58,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (9,
             59,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (9,
             60,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (10,
             61,
             '5115180010',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (10,
             62,
             '5115180010',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (10,
             63,
             '5115180010',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (10,
             64,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (10,
             65,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (10,
             66,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (11,
             67,
             '5115180011',
             '34210000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (11,
             68,
             '5115180011',
             '44211001',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (11,
             69,
             '5115180011',
             '14874000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (11,
             70,
             '44211001',
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (11,
             71,
             '14874000',
             '44211001',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              CREDIT_GL,
                                              USE_CASE_SHDES)
     VALUES (11,
             72,
             '34210000',
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (13,
             73,
             '5115180000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (13,
             74,
             '5115180000',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (13,
             75,
             '5115180000',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (13,
             76,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (13,
             77,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (13,
             78,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (14,
             79,
             '5115180013',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (14,
             80,
             '5115180013',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (14,
             81,
             '5115180013',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (14,
             82,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (14,
             83,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (14,
             84,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (15,
             85,
             '5115180018',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (15,
             86,
             '5115180018',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (15,
             87,
             '5115180018',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (15,
             88,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (15,
             89,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (15,
             90,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (16,
             91,
             '5115180019',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (16,
             92,
             '5115180019',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (16,
             93,
             '5115180019',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (16,
             94,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (16,
             95,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (16,
             96,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (17,
             97,
             '5115180020',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (17,
             98,
             '5115180020',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (17,
             99,
             '5115180020',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (17,
             100,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (17,
             101,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (17,
             102,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (18,
             103,
             '5115180021',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (18,
             104,
             '5115180021',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (18,
             105,
             '5115180021',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (18,
             106,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (18,
             107,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (18,
             108,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (19,
             109,
             '5115180022',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (19,
             110,
             '5115180022',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (19,
             111,
             '5115180022',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (19,
             112,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (19,
             113,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (19,
             114,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (20,
             115,
             '5115180023',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (20,
             116,
             '5115180023',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (20,
             117,
             '5115180023',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (20,
             118,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (20,
             119,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (20,
             120,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (21,
             121,
             '5115180024',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (21,
             122,
             '5115180024',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (21,
             123,
             '5115180024',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (21,
             124,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (21,
             125,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (21,
             126,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (22,
             127,
             '5115180025',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (22,
             128,
             '5115180025',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (22,
             129,
             '5115180025',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (22,
             130,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (22,
             131,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (22,
             132,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (23,
             133,
             '5115180026',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (23,
             134,
             '5115180026',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (23,
             135,
             '5115180026',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (23,
             136,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (23,
             137,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (23,
             138,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (24,
             139,
             '5115180027',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (24,
             140,
             '5115180027',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (24,
             141,
             '5115180027',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (24,
             142,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (24,
             143,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (24,
             144,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (25,
             145,
             '5115180028',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (25,
             146,
             '5115180028',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (25,
             147,
             '5115180028',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (25,
             148,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (25,
             149,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (25,
             150,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (26,
             151,
             '5115180029',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (26,
             152,
             '5115180029',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (26,
             153,
             '5115180029',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (26,
             154,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (26,
             155,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (26,
             156,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (27,
             157,
             '5115180030',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (27,
             158,
             '5115180030',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (27,
             159,
             '5115180030',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (27,
             160,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (27,
             161,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (27,
             162,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (28,
             163,
             '5115180031',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (28,
             164,
             '5115180031',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (28,
             165,
             '5115180031',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (28,
             166,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (28,
             167,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (28,
             168,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (29,
             169,
             '5115180032',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (29,
             170,
             '5115180032',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (29,
             171,
             '5115180032',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (29,
             172,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (29,
             173,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (29,
             174,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (30,
             175,
             '5115180033',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (30,
             176,
             '5115180033',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (30,
             177,
             '5115180033',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (30,
             178,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (30,
             179,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (30,
             180,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (31,
             181,
             '5115180034',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (31,
             182,
             '5115180034',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (31,
             183,
             '5115180034',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (31,
             184,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (31,
             185,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (31,
             186,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (32,
             187,
             '5115180035',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (32,
             188,
             '5115180035',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (32,
             189,
             '5115180035',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (32,
             190,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (32,
             191,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (32,
             192,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (33,
             193,
             '5115180036',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (33,
             194,
             '5115180036',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (33,
             195,
             '5115180036',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (33,
             196,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (33,
             197,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (33,
             198,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (34,
             199,
             '5115180037',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (34,
             200,
             '5115180037',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (34,
             201,
             '5115180037',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (34,
             202,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (34,
             203,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (34,
             204,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (35,
             205,
             '5115180038',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (35,
             206,
             '5115180038',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (35,
             207,
             '5115180038',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (35,
             208,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (35,
             209,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (35,
             210,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (36,
             211,
             '5115180039',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (36,
             212,
             '5115180039',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (36,
             213,
             '5115180039',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (36,
             214,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (36,
             215,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (36,
             216,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (37,
             217,
             '5115180040',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (37,
             218,
             '5115180040',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (37,
             219,
             '5115180040',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (37,
             220,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (37,
             221,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (37,
             222,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (38,
             223,
             '5115180041',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (38,
             224,
             '5115180041',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (38,
             225,
             '5115180041',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (38,
             226,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (38,
             227,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (38,
             228,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (39,
             229,
             '5115180042',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (39,
             230,
             '5115180042',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (39,
             231,
             '5115180042',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (39,
             232,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (39,
             233,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (39,
             234,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (40,
             235,
             '5115180043',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (40,
             236,
             '5115180043',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (40,
             237,
             '5115180043',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (40,
             238,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (40,
             239,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (40,
             240,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (41,
             241,
             '5115180044',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (41,
             242,
             '5115180044',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (41,
             243,
             '5115180044',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (41,
             244,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (41,
             245,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (41,
             246,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (42,
             247,
             '5115180045',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (42,
             248,
             '5115180045',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (42,
             249,
             '5115180045',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (42,
             250,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (42,
             251,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (42,
             252,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (43,
             253,
             '5115180046',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (43,
             254,
             '5115180046',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (43,
             255,
             '5115180046',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (43,
             256,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (43,
             257,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (43,
             258,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (44,
             259,
             '5115180047',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (44,
             260,
             '5115180047',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (44,
             261,
             '5115180047',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (44,
             262,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (44,
             263,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (44,
             264,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (45,
             265,
             '5115180048',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (45,
             266,
             '5115180048',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (45,
             267,
             '5115180048',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (45,
             268,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (45,
             269,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (45,
             270,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (46,
             271,
             '5115180049',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (46,
             272,
             '5115180049',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (46,
             273,
             '5115180049',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (46,
             274,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (46,
             275,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (46,
             276,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (47,
             277,
             '5115180050',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (47,
             278,
             '5115180050',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (47,
             279,
             '5115180050',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (47,
             280,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (47,
             281,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (47,
             282,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (48,
             283,
             '5115180051',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (48,
             284,
             '5115180051',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (48,
             285,
             '5115180051',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (48,
             286,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (48,
             287,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (48,
             288,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (49,
             289,
             '5115180052',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (49,
             290,
             '5115180052',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (49,
             291,
             '5115180052',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (49,
             292,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (49,
             293,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (49,
             294,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (50,
             295,
             '5115180053',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (50,
             296,
             '5115180053',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (50,
             297,
             '5115180053',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (50,
             298,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (50,
             299,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (50,
             300,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (51,
             301,
             '5115180054',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (51,
             302,
             '5115180054',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (51,
             303,
             '5115180054',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (51,
             304,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (51,
             305,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (51,
             306,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (52,
             307,
             '5115180055',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (52,
             308,
             '5115180055',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (52,
             309,
             '5115180055',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (52,
             310,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (52,
             311,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (52,
             312,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (53,
             313,
             '5115180056',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (53,
             314,
             '5115180056',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (53,
             315,
             '5115180056',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (53,
             316,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (53,
             317,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (53,
             318,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (54,
             319,
             '5115180057',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (54,
             320,
             '5115180057',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (54,
             321,
             '5115180057',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (54,
             322,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (54,
             323,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (54,
             324,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (55,
             325,
             '5115180058',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (55,
             326,
             '5115180058',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (55,
             327,
             '5115180058',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (55,
             328,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (55,
             329,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (55,
             330,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (56,
             331,
             '5115180059',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (56,
             332,
             '5115180059',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (56,
             333,
             '5115180059',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (56,
             334,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (56,
             335,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (56,
             336,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (57,
             337,
             '5115180060',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (57,
             338,
             '5115180060',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (57,
             339,
             '5115180060',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (57,
             340,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (57,
             341,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (57,
             342,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (58,
             343,
             '5115180061',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (58,
             344,
             '5115180061',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (58,
             345,
             '5115180061',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (58,
             346,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (58,
             347,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (58,
             348,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (59,
             349,
             '5115180062',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (59,
             350,
             '5115180062',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (59,
             351,
             '5115180062',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (59,
             352,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (59,
             353,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (59,
             354,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (60,
             355,
             '5115180063',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (60,
             356,
             '5115180063',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (60,
             357,
             '5115180063',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (60,
             358,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (60,
             359,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (60,
             360,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (61,
             361,
             '5115180064',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (61,
             362,
             '5115180064',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (61,
             363,
             '5115180064',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (61,
             364,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (61,
             365,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (61,
             366,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (62,
             367,
             '5115180065',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (62,
             368,
             '5115180065',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (62,
             369,
             '5115180065',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (62,
             370,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (62,
             371,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (62,
             372,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (63,
             373,
             '5115180066',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (63,
             374,
             '5115180066',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (63,
             375,
             '5115180066',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (63,
             376,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (63,
             377,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (63,
             378,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (64,
             379,
             '5115180067',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (64,
             380,
             '5115180067',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (64,
             381,
             '5115180067',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (64,
             382,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (64,
             383,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (64,
             384,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (65,
             385,
             '5115180068',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (65,
             386,
             '5115180068',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (65,
             387,
             '5115180068',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (65,
             388,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (65,
             389,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (65,
             390,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (66,
             391,
             '5115180069',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (66,
             392,
             '5115180069',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (66,
             393,
             '5115180069',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (66,
             394,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (66,
             395,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (66,
             396,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (67,
             397,
             '5115180070',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (67,
             398,
             '5115180070',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (67,
             399,
             '5115180070',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (67,
             400,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (67,
             401,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (67,
             402,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (68,
             403,
             '5115180071',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (68,
             404,
             '5115180071',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (68,
             405,
             '5115180071',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (68,
             406,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (68,
             407,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (68,
             408,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (69,
             409,
             '5115180072',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (69,
             410,
             '5115180072',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (69,
             411,
             '5115180072',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (69,
             412,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (69,
             413,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (69,
             414,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (70,
             415,
             '5115180073',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (70,
             416,
             '5115180073',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (70,
             417,
             '5115180073',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (70,
             418,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (70,
             419,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (70,
             420,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (71,
             421,
             '5115180074',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (71,
             422,
             '5115180074',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (71,
             423,
             '5115180074',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (71,
             424,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (71,
             425,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (71,
             426,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (72,
             427,
             '5115180075',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (72,
             428,
             '5115180075',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (72,
             429,
             '5115180075',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (72,
             430,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (72,
             431,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (72,
             432,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (73,
             433,
             '5115180076',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (73,
             434,
             '5115180076',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (73,
             435,
             '5115180076',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (73,
             436,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (73,
             437,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (73,
             438,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (74,
             439,
             '5115180077',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (74,
             440,
             '5115180077',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (74,
             441,
             '5115180077',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (74,
             442,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (74,
             443,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (74,
             444,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (75,
             445,
             '5115180078',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (75,
             446,
             '5115180078',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (75,
             447,
             '5115180078',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (75,
             448,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (75,
             449,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (75,
             450,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (76,
             451,
             '5115180079',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (76,
             452,
             '5115180079',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (76,
             453,
             '5115180079',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (76,
             454,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (76,
             455,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (76,
             456,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (77,
             457,
             '5115180080',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (77,
             458,
             '5115180080',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (77,
             459,
             '5115180080',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (77,
             460,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (77,
             461,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (77,
             462,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (78,
             463,
             '5115180081',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (78,
             464,
             '5115180081',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (78,
             465,
             '5115180081',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (78,
             466,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (78,
             467,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (78,
             468,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (79,
             469,
             '5115180082',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (79,
             470,
             '5115180082',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (79,
             471,
             '5115180082',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (79,
             472,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (79,
             473,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (79,
             474,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (80,
             475,
             '5115180083',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (80,
             476,
             '5115180083',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (80,
             477,
             '5115180083',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (80,
             478,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (80,
             479,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (80,
             480,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (81,
             481,
             '5115180084',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (81,
             482,
             '5115180084',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (81,
             483,
             '5115180084',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (81,
             484,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (81,
             485,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (81,
             486,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (83,
             487,
             '5115180085',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (83,
             488,
             '5115180085',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (83,
             489,
             '5115180085',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (83,
             490,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (83,
             491,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (83,
             492,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (84,
             493,
             '5115180086',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (84,
             494,
             '5115180086',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (84,
             495,
             '5115180086',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (84,
             496,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (84,
             497,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (84,
             498,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (85,
             499,
             '5115180087',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (85,
             500,
             '5115180087',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (85,
             501,
             '5115180087',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (85,
             502,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (85,
             503,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (85,
             504,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (86,
             505,
             '5115180088',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (86,
             506,
             '5115180088',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (86,
             507,
             '5115180088',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (86,
             508,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (86,
             509,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (86,
             510,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (87,
             511,
             '5115180089',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (87,
             512,
             '5115180089',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (87,
             513,
             '5115180089',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (87,
             514,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (87,
             515,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (87,
             516,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (88,
             517,
             '5115180090',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (88,
             518,
             '5115180090',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (88,
             519,
             '5115180090',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (88,
             520,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (88,
             521,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (88,
             522,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (89,
             523,
             '5115180091',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (89,
             524,
             '5115180091',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (89,
             525,
             '5115180091',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (89,
             526,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (89,
             527,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (89,
             528,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (90,
             529,
             '5115180092',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (90,
             530,
             '5115180092',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (90,
             531,
             '5115180092',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (90,
             532,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (90,
             533,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (90,
             534,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (91,
             535,
             '5115180093',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (91,
             536,
             '5115180093',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (91,
             537,
             '5115180093',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (91,
             538,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (91,
             539,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (91,
             540,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (92,
             541,
             '5115180094',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (92,
             542,
             '5115180094',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (92,
             543,
             '5115180094',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (92,
             544,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (92,
             545,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (92,
             546,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (93,
             547,
             '5115180095',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (93,
             548,
             '5115180095',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (93,
             549,
             '5115180095',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (93,
             550,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (93,
             551,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (93,
             552,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (94,
             553,
             '5115180096',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (94,
             554,
             '5115180096',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (94,
             555,
             '5115180096',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (94,
             556,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (94,
             557,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (94,
             558,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (95,
             559,
             '5115180097',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (95,
             560,
             '5115180097',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (95,
             561,
             '5115180097',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (95,
             562,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (95,
             563,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (95,
             564,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (96,
             565,
             '5115180098',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (96,
             566,
             '5115180098',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (96,
             567,
             '5115180098',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (96,
             568,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (96,
             569,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (96,
             570,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (97,
             571,
             '5115180099',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (97,
             572,
             '5115180099',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (97,
             573,
             '5115180099',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (97,
             574,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (97,
             575,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (97,
             576,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (98,
             577,
             '5115180100',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (98,
             578,
             '5115180100',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (98,
             579,
             '5115180100',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (98,
             580,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (98,
             581,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (98,
             582,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (99,
             583,
             '5115180101',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (99,
             584,
             '5115180101',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (99,
             585,
             '5115180101',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (99,
             586,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (99,
             587,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (99,
             588,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (100,
             589,
             '5115180102',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (100,
             590,
             '5115180102',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (100,
             591,
             '5115180102',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (100,
             592,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (100,
             593,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (100,
             594,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (101,
             595,
             '5115180103',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (101,
             596,
             '5115180103',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (101,
             597,
             '5115180103',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (101,
             598,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (101,
             599,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (101,
             600,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (102,
             601,
             '5115180104',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (102,
             602,
             '5115180104',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (102,
             603,
             '5115180104',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (102,
             604,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (102,
             605,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (102,
             606,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (103,
             607,
             '5115180105',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (103,
             608,
             '5115180105',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (103,
             609,
             '5115180105',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (103,
             610,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (103,
             611,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (103,
             612,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (104,
             613,
             '5115180106',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (104,
             614,
             '5115180106',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (104,
             615,
             '5115180106',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (104,
             616,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (104,
             617,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (104,
             618,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (105,
             619,
             '5115180107',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (105,
             620,
             '5115180107',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (105,
             621,
             '5115180107',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (105,
             622,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (105,
             623,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (105,
             624,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (106,
             625,
             '5115180108',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (106,
             626,
             '5115180108',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (106,
             627,
             '5115180108',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (106,
             628,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (106,
             629,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (106,
             630,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (107,
             631,
             '5115180109',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (107,
             632,
             '5115180109',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (107,
             633,
             '5115180109',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (107,
             634,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (107,
             635,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (107,
             636,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (108,
             637,
             '5115180110',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (108,
             638,
             '5115180110',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (108,
             639,
             '5115180110',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (108,
             640,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (108,
             641,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (108,
             642,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (109,
             643,
             '5115180111',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (109,
             644,
             '5115180111',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (109,
             645,
             '5115180111',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (109,
             646,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (109,
             647,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (109,
             648,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (110,
             649,
             '5115180112',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (110,
             650,
             '5115180112',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (110,
             651,
             '5115180112',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (110,
             652,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (110,
             653,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (110,
             654,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (111,
             655,
             '5115180113',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (111,
             656,
             '5115180113',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (111,
             657,
             '5115180113',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (111,
             658,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (111,
             659,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (111,
             660,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (112,
             661,
             '5115180114',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (112,
             662,
             '5115180114',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (112,
             663,
             '5115180114',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (112,
             664,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (112,
             665,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (112,
             666,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (113,
             667,
             '5115180115',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (113,
             668,
             '5115180115',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (113,
             669,
             '5115180115',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (113,
             670,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (113,
             671,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (113,
             672,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (114,
             673,
             '5115180116',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (114,
             674,
             '5115180116',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (114,
             675,
             '5115180116',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (114,
             676,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (114,
             677,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (114,
             678,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (115,
             679,
             '5115180117',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (115,
             680,
             '5115180117',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (115,
             681,
             '5115180117',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (115,
             682,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (115,
             683,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (115,
             684,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (116,
             685,
             '5115180118',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (116,
             686,
             '5115180118',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (116,
             687,
             '5115180118',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (116,
             688,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (116,
             689,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (116,
             690,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (117,
             691,
             '5115180119',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (117,
             692,
             '5115180119',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (117,
             693,
             '5115180119',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (117,
             694,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (117,
             695,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (117,
             696,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (118,
             697,
             '5115180120',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (118,
             698,
             '5115180120',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (118,
             699,
             '5115180120',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (118,
             700,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (118,
             701,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (118,
             702,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (119,
             703,
             '5115180121',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (119,
             704,
             '5115180121',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (119,
             705,
             '5115180121',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (119,
             706,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (119,
             707,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (119,
             708,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (120,
             709,
             '5115180122',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (120,
             710,
             '5115180122',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (120,
             711,
             '5115180122',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (120,
             712,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (120,
             713,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (120,
             714,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (121,
             715,
             '5115180123',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (121,
             716,
             '5115180123',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (121,
             717,
             '5115180123',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (121,
             718,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (121,
             719,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (121,
             720,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (122,
             721,
             '5115180124',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (122,
             722,
             '5115180124',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (122,
             723,
             '5115180124',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (122,
             724,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (122,
             725,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (122,
             726,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (123,
             727,
             '5115180125',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (123,
             728,
             '5115180125',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (123,
             729,
             '5115180125',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (123,
             730,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (123,
             731,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (123,
             732,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (124,
             733,
             '5115180126',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (124,
             734,
             '5115180126',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (124,
             735,
             '5115180126',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (124,
             736,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (124,
             737,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (124,
             738,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (125,
             739,
             '5115180127',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (125,
             740,
             '5115180127',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (125,
             741,
             '5115180127',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (125,
             742,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (125,
             743,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (125,
             744,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (126,
             745,
             '5115180128',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (126,
             746,
             '5115180128',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (126,
             747,
             '5115180128',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (126,
             748,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (126,
             749,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (126,
             750,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (127,
             751,
             '5115180129',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (127,
             752,
             '5115180129',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (127,
             753,
             '5115180129',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (127,
             754,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (127,
             755,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (127,
             756,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (128,
             757,
             '5115180130',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (128,
             758,
             '5115180130',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (128,
             759,
             '5115180130',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (128,
             760,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (128,
             761,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (128,
             762,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (129,
             763,
             '5115180131',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (129,
             764,
             '5115180131',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (129,
             765,
             '5115180131',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (129,
             766,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (129,
             767,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (129,
             768,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (130,
             769,
             '5115180132',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (130,
             770,
             '5115180132',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (130,
             771,
             '5115180132',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (130,
             772,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (130,
             773,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (130,
             774,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (131,
             775,
             '5115180133',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (131,
             776,
             '5115180133',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (131,
             777,
             '5115180133',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (131,
             778,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (131,
             779,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (131,
             780,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (132,
             781,
             '5115180134',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (132,
             782,
             '5115180134',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (132,
             783,
             '5115180134',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (132,
             784,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (132,
             785,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (132,
             786,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (133,
             787,
             '5115180135',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (133,
             788,
             '5115180135',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (133,
             789,
             '5115180135',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (133,
             790,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (133,
             791,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (133,
             792,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (134,
             793,
             '5115180136',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (134,
             794,
             '5115180136',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (134,
             795,
             '5115180136',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (134,
             796,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (134,
             797,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (134,
             798,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (135,
             799,
             '5115180137',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (135,
             800,
             '5115180137',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (135,
             801,
             '5115180137',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (135,
             802,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (135,
             803,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (135,
             804,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (136,
             805,
             '5115180138',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (136,
             806,
             '5115180138',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (136,
             807,
             '5115180138',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (136,
             808,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (136,
             809,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (136,
             810,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (137,
             811,
             '5115180139',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (137,
             812,
             '5115180139',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (137,
             813,
             '5115180139',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (137,
             814,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (137,
             815,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (137,
             816,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (139,
             817,
             '5115180140',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (139,
             818,
             '5115180140',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (139,
             819,
             '5115180140',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (139,
             820,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (139,
             821,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (139,
             822,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (140,
             823,
             '5115180141',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (140,
             824,
             '5115180141',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (140,
             825,
             '5115180141',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (140,
             826,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (140,
             827,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (140,
             828,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (142,
             829,
             '5115180143',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (142,
             830,
             '5115180143',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (142,
             831,
             '5115180143',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (142,
             832,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (142,
             833,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (142,
             834,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (143,
             835,
             '5115180144',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (143,
             836,
             '5115180144',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (143,
             837,
             '5115180144',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (143,
             838,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (143,
             839,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (143,
             840,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (144,
             841,
             '5115180145',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (144,
             842,
             '5115180145',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (144,
             843,
             '5115180145',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (144,
             844,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (144,
             845,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (144,
             846,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (145,
             847,
             '5115180146',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (145,
             848,
             '5115180146',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (145,
             849,
             '5115180146',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (145,
             850,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (145,
             851,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (145,
             852,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (146,
             853,
             '5115180147',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (146,
             854,
             '5115180147',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (146,
             855,
             '5115180147',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (146,
             856,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (146,
             857,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (146,
             858,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (147,
             859,
             '5115180148',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (147,
             860,
             '5115180148',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (147,
             861,
             '5115180148',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (147,
             862,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (147,
             863,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (147,
             864,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (148,
             865,
             '5115180149',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (148,
             866,
             '5115180149',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (148,
             867,
             '5115180149',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (148,
             868,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (148,
             869,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (148,
             870,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (149,
             871,
             '5115180150',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (149,
             872,
             '5115180150',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (149,
             873,
             '5115180150',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (149,
             874,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (149,
             875,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (149,
             876,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (150,
             877,
             '5115180151',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (150,
             878,
             '5115180151',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (150,
             879,
             '5115180151',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (150,
             880,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (150,
             881,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (150,
             882,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (151,
             883,
             '5115180152',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (151,
             884,
             '5115180152',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (151,
             885,
             '5115180152',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (151,
             886,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (151,
             887,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (151,
             888,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (152,
             889,
             '5115180153',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (152,
             890,
             '5115180153',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (152,
             891,
             '5115180153',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (152,
             892,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (152,
             893,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (152,
             894,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (153,
             895,
             '5115180154',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (153,
             896,
             '5115180154',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (153,
             897,
             '5115180154',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (153,
             898,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (153,
             899,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (153,
             900,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (154,
             901,
             '5115180155',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (154,
             902,
             '5115180155',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (154,
             903,
             '5115180155',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (154,
             904,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (154,
             905,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (154,
             906,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (155,
             907,
             '5115180156',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (155,
             908,
             '5115180156',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (155,
             909,
             '5115180156',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (155,
             910,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (155,
             911,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (155,
             912,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (156,
             913,
             '5115180157',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (156,
             914,
             '5115180157',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (156,
             915,
             '5115180157',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (156,
             916,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (156,
             917,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (156,
             918,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (157,
             919,
             '5115180158',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (157,
             920,
             '5115180158',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (157,
             921,
             '5115180158',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (157,
             922,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (157,
             923,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (157,
             924,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (158,
             925,
             '5115180159',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (158,
             926,
             '5115180159',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (158,
             927,
             '5115180159',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (158,
             928,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (158,
             929,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (158,
             930,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (159,
             931,
             '5115180160',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (159,
             932,
             '5115180160',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (159,
             933,
             '5115180160',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (159,
             934,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (159,
             935,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (159,
             936,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (160,
             937,
             '5115180161',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (160,
             938,
             '5115180161',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (160,
             939,
             '5115180161',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (160,
             940,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (160,
             941,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (160,
             942,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (161,
             943,
             '5115180162',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (161,
             944,
             '5115180162',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (161,
             945,
             '5115180162',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (161,
             946,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (161,
             947,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (161,
             948,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (162,
             949,
             '5115180163',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (162,
             950,
             '5115180163',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (162,
             951,
             '5115180163',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (162,
             952,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (162,
             953,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (162,
             954,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (163,
             955,
             '5115180164',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (163,
             956,
             '5115180164',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (163,
             957,
             '5115180164',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (163,
             958,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (163,
             959,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (163,
             960,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (164,
             961,
             '5115180165',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (164,
             962,
             '5115180165',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (164,
             963,
             '5115180165',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (164,
             964,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (164,
             965,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (164,
             966,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (165,
             967,
             '5115180166',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (165,
             968,
             '5115180166',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (165,
             969,
             '5115180166',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (165,
             970,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (165,
             971,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (165,
             972,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (166,
             973,
             '5115180167',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (166,
             974,
             '5115180167',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (166,
             975,
             '5115180167',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (166,
             976,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (166,
             977,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (166,
             978,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (167,
             979,
             '5115180168',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (167,
             980,
             '5115180168',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (167,
             981,
             '5115180168',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (167,
             982,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (167,
             983,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (167,
             984,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (168,
             985,
             '5115180169',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (168,
             986,
             '5115180169',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (168,
             987,
             '5115180169',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (168,
             988,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (168,
             989,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (168,
             990,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (169,
             991,
             '5115180170',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (169,
             992,
             '5115180170',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (169,
             993,
             '5115180170',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (169,
             994,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (169,
             995,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (169,
             996,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (170,
             997,
             '5115180171',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (170,
             998,
             '5115180171',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (170,
             999,
             '5115180171',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (170,
             1000,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (170,
             1001,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (170,
             1002,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (171,
             1003,
             '5115180172',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (171,
             1004,
             '5115180172',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (171,
             1005,
             '5115180172',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (171,
             1006,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (171,
             1007,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (171,
             1008,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (172,
             1009,
             '5115180173',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (172,
             1010,
             '5115180173',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (172,
             1011,
             '5115180173',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (172,
             1012,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (172,
             1013,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (172,
             1014,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (173,
             1015,
             '5115180174',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (173,
             1016,
             '5115180174',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (173,
             1017,
             '5115180174',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (173,
             1018,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (173,
             1019,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (173,
             1020,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (174,
             1021,
             '5115180175',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (174,
             1022,
             '5115180175',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (174,
             1023,
             '5115180175',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (174,
             1024,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (174,
             1025,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (174,
             1026,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (175,
             1027,
             '5115180176',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (175,
             1028,
             '5115180176',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (175,
             1029,
             '5115180176',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (175,
             1030,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (175,
             1031,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (175,
             1032,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (176,
             1033,
             '5115180177',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (176,
             1034,
             '5115180177',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (176,
             1035,
             '5115180177',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (176,
             1036,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (176,
             1037,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (176,
             1038,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (177,
             1039,
             '5115180178',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (177,
             1040,
             '5115180178',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (177,
             1041,
             '5115180178',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (177,
             1042,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (177,
             1043,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (177,
             1044,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (178,
             1045,
             '5115180179',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (178,
             1046,
             '5115180179',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (178,
             1047,
             '5115180179',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (178,
             1048,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (178,
             1049,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (178,
             1050,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (179,
             1051,
             '5115180180',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (179,
             1052,
             '5115180180',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (179,
             1053,
             '5115180180',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (179,
             1054,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (179,
             1055,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (179,
             1056,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (180,
             1057,
             '5115180181',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (180,
             1058,
             '5115180181',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (180,
             1059,
             '5115180181',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (180,
             1060,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (180,
             1061,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (180,
             1062,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (181,
             1063,
             '5115180182',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (181,
             1064,
             '5115180182',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (181,
             1065,
             '5115180182',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (181,
             1066,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (181,
             1067,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (181,
             1068,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (182,
             1069,
             '5115180265',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (182,
             1070,
             '5115180183',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (182,
             1071,
             '5115180183',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (182,
             1072,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (182,
             1073,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (182,
             1074,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (183,
             1075,
             '5115180184',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (183,
             1076,
             '5115180184',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (183,
             1077,
             '5115180184',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (183,
             1078,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (183,
             1079,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (183,
             1080,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (184,
             1081,
             '5115180185',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (184,
             1082,
             '5115180185',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (184,
             1083,
             '5115180185',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (184,
             1084,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (184,
             1085,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (184,
             1086,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (185,
             1087,
             '5115180186',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (185,
             1088,
             '5115180186',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (185,
             1089,
             '5115180186',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (185,
             1090,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (185,
             1091,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (185,
             1092,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (186,
             1093,
             '5115180189',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (186,
             1094,
             '5115180189',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (186,
             1095,
             '5115180189',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (186,
             1096,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (186,
             1097,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (186,
             1098,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (187,
             1099,
             '5115180190',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (187,
             1100,
             '5115180190',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (187,
             1101,
             '5115180190',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (187,
             1102,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (187,
             1103,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (187,
             1104,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (188,
             1105,
             '5115180191',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (188,
             1106,
             '5115180191',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (188,
             1107,
             '5115180191',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (188,
             1108,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (188,
             1109,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (188,
             1110,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (189,
             1111,
             '5115180192',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (189,
             1112,
             '5115180192',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (189,
             1113,
             '5115180192',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (189,
             1114,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (189,
             1115,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (189,
             1116,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (190,
             1117,
             '5115180193',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (190,
             1118,
             '5115180193',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (190,
             1119,
             '5115180193',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (190,
             1120,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (190,
             1121,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (190,
             1122,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (191,
             1123,
             '5115180152',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (191,
             1124,
             '5115180152',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (191,
             1125,
             '5115180152',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (191,
             1126,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (191,
             1127,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (191,
             1128,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (192,
             1129,
             '5115180194',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (192,
             1130,
             '5115180194',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (192,
             1131,
             '5115180194',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (192,
             1132,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (192,
             1133,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (192,
             1134,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (193,
             1135,
             '5115180195',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (193,
             1136,
             '5115180195',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (193,
             1137,
             '5115180195',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (193,
             1138,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (193,
             1139,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (193,
             1140,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (194,
             1141,
             '5115180196',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (194,
             1142,
             '5115180196',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (194,
             1143,
             '5115180196',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (194,
             1144,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (194,
             1145,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (194,
             1146,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (195,
             1529,
             '5115180197',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (195,
             1530,
             '5115180197',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (195,
             1531,
             '5115180197',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (195,
             1532,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (195,
             1533,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (195,
             1534,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (196,
             1537,
             '5115180191',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (196,
             1538,
             '5115180191',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (196,
             1539,
             '5115180191',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (196,
             1540,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (196,
             1541,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (196,
             1542,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (197,
             1545,
             '5115180198',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (197,
             1546,
             '5115180198',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (197,
             1547,
             '5115180198',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (197,
             1548,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (197,
             1549,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (197,
             1550,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (198,
             1553,
             '5115180199',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (198,
             1554,
             '5115180199',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (198,
             1555,
             '5115180199',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (198,
             1556,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (198,
             1557,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (198,
             1558,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (199,
             1561,
             '5115180200',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (199,
             1562,
             '5115180200',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (199,
             1563,
             '5115180200',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (199,
             1564,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (199,
             1565,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (199,
             1566,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (200,
             1569,
             '5115180201',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (200,
             1570,
             '5115180201',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (200,
             1571,
             '5115180201',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (200,
             1572,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (200,
             1573,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (200,
             1574,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (201,
             1577,
             '5115180202',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (201,
             1578,
             '5115180202',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (201,
             1579,
             '5115180202',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (201,
             1580,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (201,
             1581,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (201,
             1582,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (202,
             1585,
             '5115180203',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (202,
             1586,
             '5115180203',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (202,
             1587,
             '5115180203',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (202,
             1588,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (202,
             1589,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (202,
             1590,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (203,
             1593,
             '5115180177',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (203,
             1594,
             '5115180177',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (203,
             1595,
             '5115180177',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (203,
             1596,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (203,
             1597,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (203,
             1598,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (204,
             1601,
             '5115180203',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (204,
             1602,
             '5115180203',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (204,
             1603,
             '5115180203',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (204,
             1604,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (204,
             1605,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (204,
             1606,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (205,
             1609,
             '5115180204',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (205,
             1610,
             '5115180204',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (205,
             1611,
             '5115180204',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (205,
             1612,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (205,
             1613,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (205,
             1614,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (206,
             4041,
             '5115180207',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (206,
             4042,
             '5115180207',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (206,
             4043,
             '5115180207',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (206,
             4044,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (206,
             4045,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (206,
             4046,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (207,
             4061,
             '5115180208',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (207,
             4062,
             '5115180208',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (207,
             4063,
             '5115180208',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (207,
             4064,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (207,
             4065,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (207,
             4066,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (208,
             4081,
             '5115180209',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (208,
             4082,
             '5115180209',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (208,
             4083,
             '5115180209',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (208,
             4084,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (208,
             4085,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (208,
             4086,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (209,
             4101,
             '5115180210',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (209,
             4102,
             '5115180210',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (209,
             4103,
             '5115180210',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (209,
             4104,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (209,
             4105,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (209,
             4106,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (210,
             4121,
             '5115180211',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (210,
             4122,
             '5115180211',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (210,
             4123,
             '5115180211',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (210,
             4124,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (210,
             4125,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (210,
             4126,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (211,
             4141,
             '5115180212',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (211,
             4142,
             '5115180212',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (211,
             4143,
             '5115180212',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (211,
             4144,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (211,
             4145,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (211,
             4146,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (212,
             4161,
             '5115180213',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (212,
             4162,
             '5115180213',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (212,
             4163,
             '5115180213',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (212,
             4164,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (212,
             4165,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (212,
             4166,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (213,
             4181,
             '5115180214',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (213,
             4182,
             '5115180214',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (213,
             4183,
             '5115180214',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (213,
             4184,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (213,
             4185,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (213,
             4186,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (214,
             4201,
             '5115180215',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (214,
             4202,
             '5115180215',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (214,
             4203,
             '5115180215',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (214,
             4204,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (214,
             4205,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (214,
             4206,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (215,
             4221,
             '5115180216',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (215,
             4222,
             '5115180216',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (215,
             4223,
             '5115180216',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (215,
             4224,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (215,
             4225,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (215,
             4226,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (216,
             4241,
             '5115180217',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (216,
             4242,
             '5115180217',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (216,
             4243,
             '5115180217',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (216,
             4244,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (216,
             4245,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (216,
             4246,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (217,
             4261,
             '5115180218',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (217,
             4262,
             '5115180218',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (217,
             4263,
             '5115180218',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (217,
             4264,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (217,
             4265,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (217,
             4266,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (218,
             4281,
             '5115180219',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (218,
             4282,
             '5115180219',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (218,
             4283,
             '5115180219',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (218,
             4284,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (218,
             4285,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (218,
             4286,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (219,
             4301,
             '5115180220',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (219,
             4302,
             '5115180220',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (219,
             4303,
             '5115180220',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (219,
             4304,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (219,
             4305,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (219,
             4306,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (220,
             4321,
             '5115180209',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (221,
             4322,
             '5115180221',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (221,
             4323,
             '5115180221',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (221,
             4324,
             '5115180221',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (221,
             4325,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (221,
             4326,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (221,
             4327,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (222,
             4342,
             '5115180058',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (222,
             4343,
             '5115180058',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (222,
             4344,
             '5115180058',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (222,
             4345,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (222,
             4346,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (222,
             4347,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (223,
             4362,
             '5115180109',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (223,
             4363,
             '5115180109',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (223,
             4364,
             '5115180109',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (223,
             4365,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (223,
             4366,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (223,
             4367,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (224,
             4382,
             '5115180224',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (224,
             4383,
             '5115180224',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (224,
             4384,
             '5115180224',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (224,
             4385,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (224,
             4386,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (224,
             4387,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (225,
             4402,
             '5115180037',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (225,
             4403,
             '5115180037',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (225,
             4404,
             '5115180037',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (225,
             4405,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (225,
             4406,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (225,
             4407,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (226,
             4422,
             '5115180226',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (226,
             4423,
             '5115180226',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (226,
             4424,
             '5115180226',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (226,
             4425,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (226,
             4426,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (226,
             4427,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (227,
             4442,
             '5141660100',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (228,
             4443,
             '5115180227',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (228,
             4444,
             '5115180227',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (228,
             4445,
             '5115180227',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (228,
             4446,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (228,
             4447,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (228,
             4448,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (229,
             4463,
             '5115180228',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (229,
             4464,
             '5115180228',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (229,
             4465,
             '5115180228',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (229,
             4466,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (229,
             4467,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (229,
             4468,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (230,
             4483,
             '5115180229',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (230,
             4484,
             '5115180229',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (230,
             4485,
             '5115180229',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (230,
             4486,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (230,
             4487,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (230,
             4488,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (231,
             4503,
             '5115180207',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (231,
             4504,
             '5115180207',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (231,
             4505,
             '5115180207',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (231,
             4506,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (231,
             4507,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (231,
             4508,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (232,
             4523,
             '5115180231',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (232,
             4524,
             '5115180231',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (232,
             4525,
             '5115180231',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (232,
             4526,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (232,
             4527,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (232,
             4528,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (233,
             4543,
             '5115180232',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (233,
             4544,
             '5115180232',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (233,
             4545,
             '5115180232',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (233,
             4546,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (233,
             4547,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (233,
             4548,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (234,
             4563,
             '5115180233',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (234,
             4564,
             '5115180233',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (234,
             4565,
             '44211001',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (234,
             4566,
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (234,
             4567,
             '34210000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (234,
             4568,
             '5115180233',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (235,
             4583,
             '5115180234',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (235,
             4584,
             '5115180234',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (235,
             4585,
             '44211001',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (235,
             4586,
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (235,
             4587,
             '34210000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (235,
             4588,
             '5115180234',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (236,
             4603,
             '5115180235',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (236,
             4604,
             '5115180235',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (236,
             4605,
             '5115180235',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (236,
             4606,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (236,
             4607,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (236,
             4608,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (237,
             4623,
             '5115180236',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (237,
             4624,
             '5115180236',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (237,
             4625,
             '5115180236',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (237,
             4626,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (237,
             4627,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (237,
             4628,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (238,
             4643,
             '5115180237',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (238,
             4644,
             '5115180237',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (238,
             4645,
             '5115180237',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (238,
             4646,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (238,
             4647,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (238,
             4648,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (239,
             4663,
             '5115180238',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (239,
             4664,
             '5115180237',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (239,
             4665,
             '5115180237',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (239,
             4666,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (239,
             4667,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (239,
             4668,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (240,
             4683,
             '5115180239',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (240,
             4684,
             '5115180239',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (240,
             4685,
             '5115180239',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (240,
             4686,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (240,
             4687,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (240,
             4688,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (241,
             4703,
             '5115180240',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (241,
             4704,
             '5115180240',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (241,
             4705,
             '5115180240',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (241,
             4706,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (241,
             4707,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (241,
             4708,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (242,
             4723,
             '5115180241',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (242,
             4724,
             '5115180241',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (242,
             4725,
             '5115180241',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (242,
             4726,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (242,
             4727,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (242,
             4728,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (248,
             5217,
             '5115180247',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (248,
             5218,
             '5115180247',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (248,
             5219,
             '44211001',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (248,
             5220,
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (248,
             5221,
             '34210000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (248,
             5222,
             '5115180247',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (249,
             5239,
             '5115180249',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (249,
             5240,
             '5115180249',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (249,
             5241,
             '5115180249',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (249,
             5242,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (249,
             5243,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (249,
             5244,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (244,
             5247,
             '5115180243',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (244,
             5248,
             '5115180243',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (244,
             5249,
             '5115180243',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (244,
             5250,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (244,
             5251,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (244,
             5252,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (245,
             5270,
             '5115180244',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (245,
             5271,
             '5115180244',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (245,
             5272,
             '5115180244',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (245,
             5273,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (245,
             5274,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (245,
             5275,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (243,
             5293,
             '5115180242',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (243,
             5294,
             '5115180242',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (243,
             5295,
             '5115180242',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (243,
             5296,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (243,
             5297,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (243,
             5298,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (246,
             5316,
             '5115180245',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (246,
             5317,
             '5115180245',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (246,
             5318,
             '5115180245',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (246,
             5319,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (246,
             5320,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (246,
             5321,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (247,
             5339,
             '5140200900',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (250,
             5350,
             '5115180250',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (250,
             5351,
             '5115180250',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (250,
             5352,
             '5115180250',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (250,
             5353,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (250,
             5354,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (250,
             5355,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (252,
             5372,
             '5115180259',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (252,
             5373,
             '5115180259',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (252,
             5374,
             '5115180259',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (252,
             5375,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (252,
             5376,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (252,
             5377,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (253,
             5394,
             '5115180258',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (253,
             5395,
             '5115180258',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (253,
             5396,
             '5115180258',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (253,
             5397,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (253,
             5398,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (253,
             5399,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (254,
             5416,
             '5115180257',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (254,
             5417,
             '5115180257',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (254,
             5418,
             '5115180257',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (254,
             5419,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (254,
             5420,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (254,
             5421,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (258,
             5438,
             '5115180256',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (258,
             5439,
             '5115180256',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (258,
             5440,
             '5115180256',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (258,
             5441,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (258,
             5442,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (258,
             5443,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (259,
             5460,
             '5115180255',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (259,
             5461,
             '5115180255',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (259,
             5462,
             '5115180255',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (259,
             5463,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (259,
             5464,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (259,
             5465,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (255,
             5482,
             '5115180254',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (255,
             5483,
             '5115180254',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (255,
             5484,
             '5115180254',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (255,
             5485,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (255,
             5486,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (255,
             5487,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (256,
             5504,
             '5115180253',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (256,
             5505,
             '5115180253',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (256,
             5506,
             '5115180253',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (256,
             5507,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (256,
             5508,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (256,
             5509,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (257,
             5526,
             '5115180252',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (257,
             5527,
             '5115180252',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (257,
             5528,
             '5115180252',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (257,
             5529,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (257,
             5530,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (257,
             5531,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (260,
             5548,
             '5115180260',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (260,
             5549,
             '5115180260',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (260,
             5550,
             '5115180260',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (260,
             5551,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (260,
             5552,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (260,
             5553,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (261,
             5570,
             '5115180261',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (261,
             5571,
             '5115180261',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (261,
             5572,
             '5115180261',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (261,
             5573,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (261,
             5574,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (261,
             5575,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (263,
             5592,
             '5115180262',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (263,
             5593,
             '5115180262',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (263,
             5594,
             '5115180262',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (263,
             5595,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (263,
             5596,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (263,
             5597,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (264,
             5614,
             '5115180263',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (264,
             5615,
             '5115180263',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (264,
             5616,
             '5115180263',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (264,
             5617,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (264,
             5618,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (264,
             5619,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (265,
             5636,
             '5115180263',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (265,
             5637,
             '5115180263',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (265,
             5638,
             '5115180263',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (265,
             5639,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (265,
             5640,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (265,
             5641,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (266,
             5658,
             '5115180264',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (266,
             5659,
             '5115180264',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (266,
             5660,
             '5115180264',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (266,
             5661,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (266,
             5662,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (266,
             5663,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (267,
             5680,
             '5115180265',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (267,
             5682,
             '44211001',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (267,
             5683,
             '5115180265',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (267,
             5684,
             '14874000',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (267,
             5685,
             '34210000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (267,
             5686,
             '5115180265',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (268,
             5703,
             '5115180266',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (268,
             5704,
             '5115180266',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (268,
             5705,
             '5115180266',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (268,
             5706,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (268,
             5707,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (268,
             5708,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (269,
             5725,
             '5115180265',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (269,
             5726,
             '5115180265',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (269,
             5727,
             '5115180265',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (269,
             5728,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (269,
             5729,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (269,
             5730,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (270,
             5747,
             '5115180266',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (270,
             5748,
             '5115180266',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (270,
             5749,
             '5115180266',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (270,
             5750,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (270,
             5751,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (270,
             5752,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (271,
             5769,
             '5115180267',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (271,
             5770,
             '5115180267',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (271,
             5771,
             '5115180267',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (271,
             5772,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (271,
             5773,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (271,
             5774,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (272,
             5791,
             '5115180268',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (272,
             5792,
             '5115180268',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (272,
             5793,
             '5115180268',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (272,
             5794,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (272,
             5796,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (272,
             5797,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (273,
             5814,
             '5115180269',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (273,
             5815,
             '5115180269',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (273,
             5816,
             '5115180269',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (273,
             5817,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (273,
             5818,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (273,
             5819,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (274,
             5836,
             '5115180270',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (274,
             5837,
             '5115180270',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (274,
             5838,
             '5115180270',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (274,
             5839,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (274,
             5840,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (274,
             5841,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (275,
             5858,
             '5115180271',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (275,
             5859,
             '5115180271',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (275,
             5860,
             '5115180271',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (275,
             5862,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (275,
             5863,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (275,
             5864,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (276,
             5881,
             '5115180272',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (276,
             5882,
             '5115180272',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (276,
             5883,
             '5115180272',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (276,
             5884,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (276,
             5885,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (276,
             5886,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (277,
             5903,
             '5140200800',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (278,
             5904,
             '5115180273',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (278,
             5905,
             '5115180273',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (278,
             5906,
             '5115180273',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (278,
             5907,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (278,
             5908,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (278,
             5909,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (279,
             5926,
             '5115180274',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (279,
             5927,
             '5115180274',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (279,
             5928,
             '5115180274',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (279,
             5929,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (279,
             5930,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (279,
             5931,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (280,
             5948,
             '5141660100',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (281,
             5949,
             '5115180275',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (281,
             5950,
             '5115180275',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (281,
             5951,
             '5115180275',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (281,
             5952,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (281,
             5953,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (281,
             5954,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (282,
             5971,
             '5115180276',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (282,
             5972,
             '5115180276',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (282,
             5973,
             '5115180276',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (282,
             5974,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (282,
             5975,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (282,
             5976,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (283,
             5993,
             '5115180277',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (283,
             5994,
             '5115180277',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (283,
             5995,
             '5115180277',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (283,
             5996,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (283,
             5997,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (283,
             5998,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (284,
             6015,
             '5115180276',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (284,
             6016,
             '5115180276',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (284,
             6017,
             '5115180276',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (284,
             6018,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (284,
             6019,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (284,
             6020,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (285,
             6037,
             '5115180277',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (285,
             6038,
             '5115180277',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (285,
             6039,
             '5115180277',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (285,
             6040,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (285,
             6041,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (285,
             6042,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (286,
             6059,
             '5115180278',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (286,
             6060,
             '5115180278',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (286,
             6061,
             '5115180278',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (286,
             6062,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (286,
             6063,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (286,
             6064,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (287,
             6080,
             '5115180279',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (287,
             6081,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (287,
             6082,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (287,
             6083,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (287,
             6084,
             '5115180279',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (287,
             6085,
             '5115180279',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (288,
             6102,
             '5115180280',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (288,
             6103,
             '5115180280',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (288,
             6104,
             '5115180280',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (288,
             6105,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (288,
             6106,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (288,
             6107,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (289,
             6124,
             '5115180281',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (289,
             6125,
             '5115180281',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (289,
             6126,
             '5115180281',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (289,
             6127,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (289,
             6128,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (289,
             6129,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (290,
             6146,
             '5115180282',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (290,
             6147,
             '5115180282',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (290,
             6148,
             '5115180282',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (290,
             6149,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (290,
             6150,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (290,
             6151,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (291,
             6168,
             '5115180283',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (291,
             6169,
             '5115180283',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (291,
             6170,
             '5115180283',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (291,
             6171,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (291,
             6172,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (291,
             6173,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (292,
             6190,
             '5115180284',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (292,
             6191,
             '5115180284',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (292,
             6192,
             '5115180284',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (292,
             6193,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (292,
             6194,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (292,
             6195,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (293,
             6212,
             '5115180285',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (293,
             6213,
             '5115180285',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (293,
             6214,
             '5115180285',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (293,
             6215,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (293,
             6216,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (293,
             6217,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (294,
             6234,
             '5115180286',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (294,
             6235,
             '5115180286',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (294,
             6236,
             '5115180286',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (294,
             6237,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (294,
             6238,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (294,
             6239,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (295,
             6256,
             '5115180287',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (295,
             6257,
             '5115180287',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (295,
             6258,
             '5115180287',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (295,
             6259,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (295,
             6260,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (295,
             6261,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (296,
             6278,
             '5115180288',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (296,
             6279,
             '5115180288',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (296,
             6280,
             '5115180288',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (296,
             6281,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (296,
             6282,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (296,
             6283,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (297,
             6300,
             '5115180289',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (297,
             6301,
             '5115180289',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (297,
             6302,
             '5115180289',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (297,
             6303,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (297,
             6304,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (297,
             6305,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (298,
             6322,
             '51414300',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (299,
             6323,
             '5115180290',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (299,
             6324,
             '5115180290',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (299,
             6325,
             '5115180290',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (299,
             6326,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (299,
             6327,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (299,
             6328,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (301,
             6345,
             '5115180292',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (301,
             6346,
             '5115180292',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (301,
             6347,
             '5115180292',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (301,
             6348,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (301,
             6349,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (301,
             6350,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (300,
             6367,
             '5115180291',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (300,
             6368,
             '5115180291',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (300,
             6369,
             '5115180291',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (300,
             6370,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (300,
             6371,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (300,
             6372,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (303,
             6389,
             '5115180294',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (303,
             6390,
             '5115180294',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (303,
             6391,
             '5115180294',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (303,
             6392,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (303,
             6393,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (303,
             6394,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (302,
             6411,
             '5115180293',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (302,
             6412,
             '5115180293',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (302,
             6413,
             '5115180293',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (302,
             6414,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (302,
             6415,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (302,
             6416,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (304,
             6433,
             '5115180295',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (304,
             6434,
             '5115180295',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (304,
             6435,
             '5115180295',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (304,
             6436,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (304,
             6437,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (304,
             6438,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (305,
             6455,
             '5115180296',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (305,
             6456,
             '5115180296',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (305,
             6457,
             '5115180296',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (305,
             6458,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (305,
             6459,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (305,
             6460,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (306,
             6477,
             '5115180297',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (306,
             6478,
             '5115180297',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (306,
             6479,
             '5115180297',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (306,
             6480,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (306,
             6481,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (306,
             6482,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (307,
             6499,
             '5115180298',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (307,
             6500,
             '5115180298',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (307,
             6501,
             '5115180298',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (307,
             6502,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (307,
             6503,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (307,
             6504,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (308,
             6521,
             '5115180299',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (308,
             6522,
             '5115180299',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (308,
             6523,
             '5115180299',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (308,
             6524,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (308,
             6525,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (308,
             6526,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (309,
             6543,
             '5115180300',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (309,
             6544,
             '5115180300',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (309,
             6545,
             '5115180300',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (309,
             6546,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (309,
             6547,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (309,
             6548,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (310,
             6565,
             '5115180301',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (310,
             6566,
             '5115180301',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (310,
             6567,
             '5115180301',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (310,
             6568,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (310,
             6569,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (310,
             6570,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (311,
             6587,
             '5115180303',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (311,
             6588,
             '5115180303',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (311,
             6589,
             '5115180303',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (311,
             6590,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (311,
             6591,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (311,
             6592,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (313,
             6609,
             '5115180304',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (313,
             6610,
             '5115180304',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (313,
             6611,
             '5115180304',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (313,
             6612,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (313,
             6613,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (313,
             6614,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (312,
             6631,
             '5115180305',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (312,
             6632,
             '5115180305',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (312,
             6633,
             '5115180305',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (312,
             6634,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (312,
             6635,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (312,
             6636,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (314,
             6653,
             '5115180306',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (314,
             6654,
             '5115180306',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (314,
             6655,
             '5115180306',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (314,
             6656,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (314,
             6657,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (314,
             6658,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (315,
             6676,
             '51414302',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (315,
             6677,
             '51414301',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (317,
             6679,
             '5141660100',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (318,
             6680,
             '5141181000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (319,
             6681,
             '5141161000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (320,
             6682,
             '5115180307',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (320,
             6683,
             '5115180307',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (320,
             6684,
             '5115180307',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (320,
             6685,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (320,
             6686,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (320,
             6687,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (321,
             6704,
             '5115180232',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (321,
             6706,
             '5115180232',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (321,
             6707,
             '5115180232',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (321,
             6708,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (321,
             6709,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (321,
             6710,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (322,
             6727,
             '5115180308',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (322,
             6728,
             '5115180308',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (322,
             6729,
             '5115180308',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (322,
             6730,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (322,
             6731,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (322,
             6732,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (323,
             6751,
             '5115180309',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (323,
             6752,
             '5115180309',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (323,
             6753,
             '5115180309',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (323,
             6754,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (323,
             6755,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (323,
             6756,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (324,
             6774,
             '5115180310',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (324,
             6775,
             '5115180310',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (324,
             6776,
             '5115180310',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (324,
             6777,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (324,
             6778,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (324,
             6779,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (325,
             6796,
             '5115180311',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (325,
             6797,
             '5115180311',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (325,
             6798,
             '5115180311',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (325,
             6799,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (325,
             6800,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (325,
             6801,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (326,
             6820,
             '5111201000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (327,
             6821,
             '5111010800',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (328,
             6822,
             '5111221000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (329,
             6823,
             '5111241000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (330,
             6824,
             '5111231000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (334,
             6825,
             '5115180313',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (334,
             6826,
             '5115180313',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (334,
             6827,
             '5115180313',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (334,
             6828,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (334,
             6829,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (334,
             6830,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (335,
             6847,
             '5115180314',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (335,
             6848,
             '5115180314',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (335,
             6849,
             '5115180314',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (335,
             6850,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (335,
             6851,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (335,
             6852,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (336,
             6869,
             '5115180315',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (336,
             6870,
             '5115180315',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (336,
             6871,
             '5115180315',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (336,
             6872,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (336,
             6873,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (336,
             6874,
             '34214000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (337,
             6891,
             '5115180319',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (337,
             6892,
             '5115180319',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (337,
             6893,
             '5115180319',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (337,
             6894,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (337,
             6895,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (337,
             6896,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (338,
             6913,
             '5115180320',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (338,
             6914,
             '5115180320',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (338,
             6915,
             '5115180320',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (338,
             6916,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (338,
             6917,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (338,
             6918,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (339,
             6935,
             '5115180316',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (339,
             6936,
             '5115180316',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (339,
             6937,
             '5115180316',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (339,
             6938,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (339,
             6939,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (339,
             6940,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (340,
             6957,
             '5115180317',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (340,
             6958,
             '5115180317',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (340,
             6959,
             '5115180317',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (340,
             6960,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (340,
             6961,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (340,
             6962,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (341,
             6979,
             '5115180318',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (341,
             6980,
             '5115180318',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (341,
             6981,
             '5115180318',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (341,
             6982,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (341,
             6983,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (341,
             6984,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (342,
             7001,
             '5115180321',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (342,
             7002,
             '5115180321',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (342,
             7003,
             '5115180321',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (342,
             7004,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (342,
             7005,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (342,
             7006,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (343,
             7023,
             '5115180321',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (343,
             7024,
             '5115180321',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (343,
             7025,
             '5115180321',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (343,
             7026,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (343,
             7027,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (343,
             7028,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (344,
             7045,
             '5115180279',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (344,
             7046,
             '5115180279',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (344,
             7047,
             '5115180279',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (344,
             7048,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (344,
             7049,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (344,
             7050,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (345,
             9965,
             '5111251000',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (346,
             9966,
             '5111600322',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (347,
             9967,
             '5115180323',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (347,
             9968,
             '5115180323',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (347,
             9969,
             '5115180323',
             'CE2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (347,
             9970,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (347,
             9971,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (347,
             9972,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (348,
             9998,
             '5115180324',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (349,
             9999,
             '5110200522',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (350,
             10001,
             '34210000',
             'RV-CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (350,
             10024,
             '5115180325',
             'CE2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (350,
             10027,
             '44211001',
             'CO2DP');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (350,
             10028,
             '14874000',
             'DP2CO');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (350,
             10029,
             '5115180325',
             'CE2DD');

INSERT INTO SALESHIERARCHY.CONTROL_ENTITY_GL (ENTITY_ID,
                                              ENTITY_GL_ID,
                                              DEBIT_GL,
                                              USE_CASE_SHDES)
     VALUES (350,
             10030,
             '5115180325',
             'CE2DP');

--
 COMMIT;
-- 
END;
/

SPOOL OFF
EXIT;