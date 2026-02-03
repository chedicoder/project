---------------------------------Headline------------------------------
-- System/Module : 			ENABLERDB
-- Script Name   : 			DML_INIT_TSK_TEGISTRY_TSK_TYPE.sql
-- Created by    :     	Adnane AMELLAL
-- Creation date : 			21/03/2025
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

SPOOL $WORK/TMP/DML_INIT_TSK_REGISTRY_TSK_TYPE.&&V_SYSDATE..LST


BEGIN


INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'IMSI_LIBERATION',
                    'imsi liberation',
                    '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{"startSim":{"type":"string","minLength":15,"maxLength":15,"pattern":"^\\d{15}$","description":"N° Debut"},"endSim":{"type":"string","minLength":15,"maxLength":15,"pattern":"^\\d{15}$","description":"N° Fin"}},"required":["startSim","endSim"],"additionalProperties":false}');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'IMSI_DISTRIBUTION',
                    'imsi distribution',
                       '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{"startSim":{"type":"string","minLength":10,"maxLength":10,"pattern":"^\\d{10}$","description":"N° Début"},"endSim":{"type":"string","minLength":10,"maxLength":10,"pattern":"^\\d{10}$","description":"N° Fin"},"dealerId":{"type":"integer","description":"code revendeur"}},"required":["startSim","endSim","dealerId"],"additionalProperties":false}'
                    || CHR (13)
                    || CHR (10)
                    || '');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'IMSI_GENERATION',
                    'imsi generation',
                       '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"startRange": {"type": "string", "minLength": 15, "maxLength": 15, "pattern": "^60401\\d{10}$", "description": "IMSI debut de plage."}, "endRange": {"type": "string", "minLength": 15, "maxLength": 15, "pattern": "^60401\\d{10}$", "description": "IMSI fin de plage."}, "vendorCode": {"type": "integer", "description": "code fournisseur cartes SIM."}, "imsiType": {"type": "integer", "description": "code type cartes SIM."}}, "required": ["startRange", "endRange", "vendorCode", "imsiType"], "additionalProperties": false}'
                    || CHR (13)
                    || CHR (10)
                    || '');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'IMSI_RECEPTION',
                    'IMSI RECEPTION',
                    '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"imsi": {"type": "string", "minLength": 15, "maxLength": 15, "pattern": "^60401\\d{10}$", "description": "IMSI"}, "iccid": {"type": "string", "minLength": 18, "maxLength": 18, "pattern": "^89212010\\d{10}$", "description": "ICCID."}, "smPin1": {"type": "string", "minLength": 4, "maxLength": 4, "description": "code PIN1."}, "smPuk1": {"type": "string", "minLength": 8, "maxLength": 8, "description": "code PUK1."}, "smPin2": {"type": "string", "minLength": 4, "maxLength": 4, "description": "code PIN2."}, "smPuk2": {"type": "string", "minLength": 8, "maxLength": 8, "description": "code PUK2."}, "smCodeAdm": {"type": "string", "minLength": 8, "maxLength": 8, "description": "code ADM."}, "smAccControl": {"type": "string", "minLength": 4, "maxLength": 4, "description": "code CTRL."}, "portKi": {"type": "string", "minLength": 32, "maxLength": 32, "description": "Port KI."}, "ac": {"type": ["string", "null"], "maxLength": 100, "description": "Cle d activation de l ESIM."}}, "required": ["imsi", "iccid", "smPin1", "smPuk1", "smPin2", "smPuk2", "smCodeAdm", "smAccControl", "portKi"], "additionalProperties": false}');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'IMSI_UPDATE',
                    'IMSI UPDATE',
                    '{"$schema": "http://json-schema.org/draft-07/schema#","type": "object","properties": {"imsi": {"type": "string","minLength": 15,"maxLength": 15,"pattern": "^60401\\d{10}$","description": "IMSI id."},"status": {"type": "string","minLength": 1,"maxLength": 1,"description": "IMSI status."},"dealerId": {"type": "integer","description": "code revendeur carte SIM."},"businessUnitId": {"type": "integer","description": "Business unit carte SIM."}},"required": ["imsi","status"],"additionalProperties": false}');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'MSISDN_UPDATE_STATUS',
                    'msisdn update status',
                       '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"startRange": {"type": "string", "description": "MSISDN de depart"}, "endRange": {"type": "string", "description": "MSISDN de fin"}, "status": {"type": "string", "MSISDN de départ": "Les nouveaux statuts"}}, "required": ["startRange", "endRange", "status"], "additionalProperties": false}'
                    || CHR (13)
                    || CHR (10)
                    || '');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'MSISDN_DISTRIBUTION_DEALER',
                    'msisdn distribution dealer',
                       '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"msisdn": {"type": "string", "description": "MSISDN"}, "dealerId": {"type": "integer", "description": "dealerId"}}, "required": ["msisdn", "dealerId"], "additionalProperties": false}'
                    || CHR (13)
                    || CHR (10)
                    || '');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'MSISDN_GENERATION',
                    'Massive generation of MSISDNs',
                       '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"ndc": {"type": "string", "description": "ndc."}, "hlr": {"type": "string", "description": "hlr."}, "msisdnType": {"type": "string", "description": " msisdn type ."}, "startRange": {"type": "string", "description": "startRange"}, "endRange": {"type": "string", "description": "éndRange ."}}, "required": ["ndc", "hlr", "msisdnType", "startRange", "endRange"], "additionalProperties": false}'
                    || CHR (13)
                    || CHR (10)
                    || '');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'MSISDN_DISTRIBUTION',
                    'msisdn distribution',
                    '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"ndc": {"type": "string", "description": "ndc."}, "hlr": {"type": "string", "description": "hlr."}, "firstMsisdn": {"type": "string", "minLength": 4, "maxLength": 4, "description": "first msisdn ."}, "packSize": {"type": "integer", "minLength": 1, "maxLength": 4, "description": "packSize"}, "plage": {"type": "string", "description": "plage ."}, "dealerId": {"type": "integer", "description": "dealerId"}}, "required": ["ndc", "hlr", "firstMsisdn", "packSize", "plage", "dealerId"], "additionalProperties": false}');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'MSISDN_DELETION',
                    'msisdn deletion',
                       '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"ndc": {"type": "string", "description": "ndc."}, "hlr": {"type": "string", "description": "hlr."}, "msisdnType": {"type": "string", "description": " msisdn type ."}, "startRange": {"type": "string", "description": "startRange"}, "endRange": {"type": "string", "description": "endRange ."}}, "required": ["ndc", "hlr", "msisdnType", "startRange", "endRange"], "additionalProperties": false}'
                    || CHR (13)
                    || CHR (10)
                    || '');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'MSISDN_NUMERO_SECONDAIRE',
                    'msisdn numero secondaire',
                       '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{"msisdn":{"type":"string","description":"MSISDN"},"imsi":{"type":"string","description":"IMSI"}},"required":["msisdn","imsi"],"additionalProperties":false}'
                    || CHR (13)
                    || CHR (10)
                    || ' ');

INSERT INTO TASKMANAGER.TSK_SCHEMA_REGISTRY (NAME,
                                             DESCRIPTION,
                                             "SCHEMA")
         VALUES (
                    'MSISDN_UPDATE',
                    'IMSISDN UPDATE',
                    '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object", "properties": {"msisdn": {"type": "string", "description": "msisdn."}, "status": {"type": ["string", "null"], "description": "status."}, "dnType": {"type": ["integer", "null"], "description": "dnType ."}, "dealerId": {"type": ["integer", "null"], "description": "dealerId"}, "hlr": {"type": ["string", "null"], "description": "hlr."}, "businessUnitId": {"type": ["integer", "null"], "description": "businessUnitId."}}, "required": ["msisdn"], "additionalProperties": true}');

COMMIT;



/* Formatted on 17/04/2025 23:25:20 (QP5 v5.360) */
INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'IMSI_GENERATION'),
                    'IMSI_GENERATION',
                    'Géneration des IMSIs',
                    'imsi-generation-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    15,
                    0,
                    1,
                    1,
                       '[{"type":"text","label":"Numéro Début","id":"startRange","required":true,"prefix":{"initialValue":"60401"},"validation":{"pattern":"^\\d{10}$","errorMessage":"Numéro imsi de début invalide"},"row":1},{"type":"text","label":"Numéro Fin","id":"endRange","required":true,"prefix":{"initialValue":"60401"},"validation":{"pattern":"^\\d{10}$","errorMessage":"Numéro imsi de fin invalide"},"row":1},{"type":"select","label":"Code Fournisseur","id":"vendorCode","optionsEndpoint":{"url":"http://localhost:3000/billing-service/rest/CIL/7/LIST_VENDOR.READ"},"required":true,"row":2},{"type":"select","label":"Type IMSI","id":"imsiType","optionsEndpoint":{"url":"http://localhost:3000/billing-service/rest/CIL/7/SIM_TYPE.READ","params":[{"name":"scDes","value":"GSM"}]},"required":true,"row":2},{"type":"button","label":"Ajouter","id":"add","row":3,"validationEndpoint":"http://localhost:3000/resource-management-service/resourceManager/validatePayload","targetTableId":"imsiTable"},{"id":"imsiTable","type":"table","length":5,"columns":[{"key":"startRange","label":"N° Début IMSI"},{"key":"endRange","label":"N° Fin IMSI"},{"key":"vendorCode","label":"Fournisseur"},{"key":"imsiType","label":"Type SIM"}],"row":4}]'
                    || CHR (13)
                    || CHR (10)
                    || '',
                    'imsigeneration',
                    1,
                    '["FORM","FILE"]',
                    'imsiGen',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'MSISDN_DELETION'),
                    'MSISDN_DELETION',
                    'Suppression des MSISDNs',
                    'msidsn-deletion-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    0,
                    0,
                    1,
                    10000,
                    '[{ "type": "select", "label": "NDC", "id": "ndc", "placeholder": "NDC", "optionsEndpoint": { "url": "http://localhost:3000/billing-service/rest/CIL/7/LIST_NDC.READ" }, "required": true, "row": 1 }, { "type": "select", "label": "HLR", "id": "hlr", "placeholder": "HLR", "optionsEndpoint": { "url": "http://localhost:3000/billing-service/rest/CIL/7/LIST_HLR.READ", "params": [ { "name": "ndc", "valueFromFieldId": "ndc" } ] }, "required": true, "row": 1 }, { "type": "select", "label": "Type MSISDN", "id": "msisdnType", "placeholder": "Type MSISDN", "options": [ { "label": "Prépayé", "value": "Prépayé" }, { "label": "Postpayé", "value": "Postpayé" } ], "required": true, "row": 2 }, { "type": "text", "label": "Numéro Début", "id": "startRange", "prefix": { "initialValue": "212", "valueFromFieldId": "ndc" }, "required": true, "validation": { "pattern": "^\\d{6}$", "errorMessage": "Numéro Début de la plage invalide" }, "row": 3 }, { "type": "text", "label": "Numéro Fin", "id": "endRange", "prefix": { "initialValue": "212", "valueFromFieldId": "ndc" }, "required": true, "validation": { "pattern": "^\\d{6}$", "errorMessage": "Numéro fin de la plage invalide" }, "row": 3 }]',
                    'msisdndeletion',
                    1,
                    '["FORM"]',
                    'dnDel',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'MSISDN_GENERATION'),
                    'MSISDN_GENERATION',
                    'Génération des MSISDNs',
                    'mass-msisdn-generation-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"]}',
                    0,
                    0,
                    1,
                    100,
                       '[{ "type": "select", "label": "NDC", "id": "ndc", "optionsEndpoint": { "url": "http://localhost:3000/billing-service/rest/CIL/7/LIST_NDC.READ" }, "required": true, "row": 1 }, { "type": "select", "label": "HLR", "id": "hlr", "optionsEndpoint": { "url": "http://localhost:3000/billing-service/rest/CIL/7/LIST_HLR.READ", "params": [ { "name": "ndc", "valueFromFieldId": "ndc" } ] }, "required": true, "row": 1 }, { "type": "select", "label": "Type MSISDN", "id": "msisdnType", "placeholder": "Type MSISDN", "options": [ { "label": "Prépayé", "value": "Prépayé" }, { "label": "Postpayé", "value": "Postpayé" } ], "required": true, "row": 2 }, { "type": "text", "label": "Numéro Début", "id": "startRange", "prefix": { "initialValue": "212", "valueFromFieldId": "ndc" }, "validation": { "pattern": "^\\d{6}$", "errorMessage": "Numéro Début de la plage invalide" }, "required": true, "row": 3 }, { "type": "text", "label": "Numéro Fin", "id": "endRange", "prefix": { "initialValue": "212", "valueFromFieldId": "ndc" }, "validation": { "pattern": "^\\d{6}$", "errorMessage": "Numéro fin de la plage invalide" }, "required": true, "row": 3 }]'
                    || CHR (13)
                    || CHR (10)
                    || '',
                    'msisdngeneration',
                    1,
                    '["FORM"]',
                    'dnGen',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'IMSI_LIBERATION'),
                    'IMSI_LIBERATION',
                    'Libération des IMSIs',
                    'imsi-liberation-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"]}',
                    0,
                    0,
                    0,
                    10000,
                       '[{"type":"text","label":"Numéro Début","id":"startSim","required":true,"prefix":{"initialValue":"60401"},"validation":{"pattern":"^\\d{10}$","errorMessage":"Numéro imsi de début invalide"},"row":1},{"type":"text","label":"Numéro Fin","id":"endSim","prefix":{"initialValue":"60401"},"validation":{"pattern":"^\\d{10}$","errorMessage":"Numéro imsi de fin invalide"},"required":true,"row":1}]'
                    || CHR (13)
                    || CHR (10)
                    || '',
                    'imsi-liberation',
                    0,
                    '["FORM"]',
                    'imsiDeassign',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'IMSI_RECEPTION'),
                    'IMSI_RECEPTION',
                    'Réception des IMSIs',
                    'imsi-reception-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"]}',
                    100000,
                    0,
                    0,
                    10000,
                    '[]',
                    'imsi-reception',
                    1,
                    '["FILE"]',
                    'imsiRec',
                    'TABULATION',
                    0);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'IMSI_UPDATE'),
                    'IMSI_UPDATE',
                    'Mise à jour des IMSIs',
                    'imsi-update-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"]}',
                    100000,
                    0,
                    0,
                    10000,
                    '[]',
                    'imsi-update',
                    1,
                    '["FILE"]',
                    'imsiUpd',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'MSISDN_DISTRIBUTION'),
                    'MSISDN_DISTRIBUTION',
                    'Distribution des MSISDNs',
                    'msisdn-distribution-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    0,
                    0,
                    0,
                    10000,
                       '[{"type":"select","label":"NDC","id":"ndc","placeholder":"NDC","optionsEndpoint":{"url":"http://localhost:3000/billing-service/rest/CIL/7/LIST_NDC.READ"},"required":true,"row":1},{"type":"select","label":"HLR","id":"hlr","placeholder":"HLR","optionsEndpoint":{"url":"http://localhost:3000/billing-service/rest/CIL/7/LIST_HLR.READ","params":[{"name":"ndc","valueFromFieldId":"ndc"}]},"required":true,"row":1},{"type":"text","label":"Valeur de départ","id":"firstMsisdn","validation":{"pattern":"^\\d{4}$","errorMessage":"Numéro début de la plage invalide"},"required":true,"row":2},{"type":"number","label":"Quantité","id":"packSize","required":true,"row":2},{"type":"select","label":"dealerId","id":"dealerId","optionsEndpoint":{"url":"http://localhost:3000/billing-service/rest/CIL/7/LIST_DEALERS.READ"},"required":true,"row":3}]'
                    || CHR (13)
                    || CHR (10)
                    || '',
                    'msisdndistribution',
                    1,
                    '["FORM"]',
                    'dnDist',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'MSISDN_UPDATE'),
                    'MSISDN_UPDATE',
                    'Mise à jour des MSISDNs',
                    'msisdn-update-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    100000,
                    0,
                    0,
                    2,
                    '[]',
                    'msisdnupdate',
                    1,
                    '["FILE"]',
                    'dnUpd',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'NUMERO_SECONDAIRE'),
                    'NUMERO_SECONDAIRE',
                    'Numéros secondaires',
                    'msidsn-numero-secondaire-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    100000,
                    0,
                    0,
                    10000,
                    '[]',
                    'msisdnnumsecondaire',
                    1,
                    '["FILE"]',
                    'dnNumSec',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'IMSI_DISTRIBUTION'),
                    'IMSI_DISTRIBUTION',
                    'Distribution des IMSIs',
                    'imsi-distribution-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    0,
                    0,
                    0,
                    10000,
                       '[{"type":"text","label":"Numéro Début","id":"startSim","required":true,"prefix":{"initialValue":"60401"},"validation":{"pattern":"^\\d{10}$","errorMessage":"Numéro imsi de début invalide"},"row":1},{"type":"text","label":"Numéro Fin","id":"endSim","required":true,"prefix":{"initialValue":"60401"},"validation":{"pattern":"^\\d{10}$","errorMessage":"Numéro imsi de fin invalide"},"row":1},{"type":"select","label":"dealer Id","id":"dealerId","optionsEndpoint":{"url":"http://localhost:3000/billing-service/rest/CIL/7/LIST_DEALERS.READ"},"required":true,"row":1}]'
                    || CHR (13)
                    || CHR (10)
                    || '',
                    'imsi-distribution',
                    0,
                    '["FORM"]',
                    'imsiDist',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'MSISDN_UPDATE_STATUS'),
                    'MSISDN_UPDATE_STATUS',
                    'Mise à jour du statut des MSISDNs',
                    'msidsn-update-status-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    0,
                    0,
                    0,
                    10000,
                    '[{"type":"text","label":"MSISDN de début","id":"startRange","prefix":{"initialValue":"212"},"validation":{"pattern":"^\\d{9}$","errorMessage":"Numéro début de la plage invalide"},"required":true,"row":1},{"type":"text","label":"MSISDN de fin","id":"endRange","prefix":{"initialValue":"212"},"validation":{"pattern":"^\\d{9}$","errorMessage":"Numéro fin de la plage invalide"},"required":true,"row":1},{"type":"select","label":"Nouveaux statuts","id":"status","options":[{"label":"Fax et data","value":"m"},{"label":"Bloqué","value":"b"},{"label":"Désactivé","value":"d"},{"label":"Ventes","value":"v"}],"required":true,"row":2}]',
                    'msisdnupdatestatus',
                    1,
                    '["FORM"]',
                    'dnUpdStatus',
                    'SEMICOLON',
                    1);

INSERT INTO TASKMANAGER.TSK_TASK_TYPE (TSK_SCHEMA_REGISTRY_ID,
                                       PROCESS_BUSINESS_KEY,
                                       TASK_DESCRIPTION,
                                       BUCKET_NAME,
                                       AUTH_CONFIG,
                                       MAX_LINES,
                                       NEEDS_SPLITTING,
                                       NEEDS_DECOMPOSITION,
                                       MAX_COUNT_PER_CHUNK,
                                       FORM_CONFIG,
                                       INPUT_PATH,
                                       NEEDS_PREVALIDATION,
                                       INPUT_TYPE,
                                       SHORT_DESCRIPTION,
                                       DELIMITER,
                                       DISPLAYED)
         VALUES (
                    (SELECT ID
                       FROM TSK_SCHEMA_REGISTRY
                      WHERE NAME = 'MSISDN_DISTRIBUTION_DEALER'),
                    'MSISDN_DISTRIBUTION_DEALER',
                    'Réservation des MSISDNs',
                    'msidsn-distribution-dealer-bucket',
                    '{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }',
                    100000,
                    0,
                    0,
                    10000,
                    '[]',
                    'imsi-distribution-dealer',
                    1,
                    '["FILE"]',
                    'dnDistDealer',
                    'SEMICOLON',
                    1);

--
 COMMIT;
-- 
END;
/

SPOOL OFF
EXIT;