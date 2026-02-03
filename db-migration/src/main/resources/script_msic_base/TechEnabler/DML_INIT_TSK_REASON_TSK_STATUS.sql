---------------------------------Headline------------------------------
-- System/Module : 			ENABLERDB
-- Script Name   : 			DML_INIT_TSK_REASON_TSK_STATUS.sql
-- Created by    :     	Adnane AMELLAL
-- Creation date : 			07/03/2025
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

SPOOL $WORK/TMP/DML_INIT_TSK_REASON_TSK_STATUS.&&V_SYSDATE..LST


BEGIN

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('Created', 'La tâche a été créée mais pas encore démarrée'); 

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('InProgress', 'Les travaux sur la tâche ont commencé'); 

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('Completed', 'La tâche a été terminée avec succès'); 

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('Failed', 'La tâche a échoué en raison d''erreurs'); 

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('Canceled', 'La tâche a été annulée'); 

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('Pending', 'La tâche attend un déclencheur externe pour démarrer'); 

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('Assigned', 'La tâche a été attribuée à un utilisateur'); 

INSERT INTO TSK_STATUS(CODE, DESCRIPTION)
VALUES ('Validated', 'Les données à traiter de la tâche sont valides'); 

--

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS1', 'MSISDN existe déjà'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS2', 'La plage n''est pas valide'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS3', 'Problème de suppresion du MSISDN'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS4', 'Problème de mise à jour du MSISDN'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS5', 'HLR introuvable sur BSCS'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS6', 'HLCODE/HMCODE doivent identifient respectivement le HLR physique/HLR logique correspondant au HLR cible'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS7', 'Business unit introuvable sur BSCS'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS8', 'Dealer introuvable sur BSCS'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS9', 'dnType introuvable sur BSCS'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS10', 'Statut MSISDN cible invalide'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS11', 'MSISDN introuvable sur BSCS'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS12', 'Problème de mise à jour du IMSI'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS13', 'Problème de mise à jour du SIM'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS14', 'Un/Les deux ressources IMSI et MSISDN n''ont pas le statut z'); 

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS15', 'Erreur d''insertion  au niveau PORT_INFO');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS16', 'Problème d''insertion du SIM');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS17', 'Problème d''insertion du IMSI');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS18', 'Statut actuel invalide pour changer le statut IMSI');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS19', 'Le dealerId doit être renseigné au niveau input');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS20', 'Toutes les cartes SIM de la plage doivent être au statut réservé');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS21', 'Toutes les cartes SIM de la plage doivent être au statut libre');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS22', 'MSISDN ne respecte pas les critères d''éligibilité');

INSERT INTO TSK_REASON(CODE, DESCRIPTION)
VALUES ('RS23', 'La plage contient des IMSIs qui existent déjà');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
         VALUES ('RS24', 'Le statut doit être l''une des options suivantes : r, d, b, v, m');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS25', 'Le ND doit suivre le format 2126XXXXXXXX');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS26', 'MSISDN est un champ obligatoire');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS27', 'Au moins un champ facultatif doit être renseigné');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS28', 'Cette plage chevauche une autre plage');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
         VALUES ('RS29', 'Le statut doit être l''une des options suivantes : r, f');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS30', 'Le IMSI doit suivre le format 60401XXXXXXXXXX');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
         VALUES ('RS31', 'Les 9 premiers chiffres de startRange et endRange doivent correspondre');

INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS32', 'startRange doit être inférieur à endRange');
     
INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS33', 'IMSI inexistant');     
     
INSERT INTO TSK_REASON (CODE, DESCRIPTION)
     VALUES ('RS40', 'Ressource inexistante ou invalide');      

--
 COMMIT;
-- 
END;
/

SPOOL OFF
EXIT;