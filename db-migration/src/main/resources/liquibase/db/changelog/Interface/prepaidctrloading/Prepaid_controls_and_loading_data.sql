Insert into TASKMANAGER.TSK_SCHEMA_REGISTRY
   (NAME, DESCRIPTION, SCHEMA)
 Values
   ('PRE_CTR_LOAD_SMS_DATA', 'Prepaid controls and loading data from sms', '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{
	"entryDate":{"type":["string","null"],"description":"entry date"},"laIam":{"type":["string","null"],"description":"not used"},"source":{"type":["string","null"],"description":"not used"},
	"nd":{"type":["string","null"],"description":"msisdn"},"type":{"type":["string","null"],"description":"not used"},
	"sms":{"type":["string","null"],"description":"sms"}
},"required":[],"additionalProperties":false}');
--COMMIT;

Insert into TASKMANAGER.TSK_TASK_TYPE
   (TSK_SCHEMA_REGISTRY_ID, PROCESS_BUSINESS_KEY, TASK_DESCRIPTION, BUCKET_NAME, 
    MAX_LINES, NEEDS_SPLITTING, NEEDS_DECOMPOSITION, MAX_COUNT_PER_CHUNK, INPUT_PATH, 
    NEEDS_PREVALIDATION, INPUT_TYPE, SHORT_DESCRIPTION, DELIMITER, DISPLAYED, AUTH_CONFIG)
 Values
   ((SELECT ID FROM TASKMANAGER.TSK_SCHEMA_REGISTRY WHERE NAME = 'PRE_CTR_LOAD_SMS_DATA'), 'PRE_CTR_LOAD_SMS_DATA', 'Prepaid control and loading sms data', 'PrePaidSmsData-bucket', 
    100000, 0, 0, 10000, 'PrePaidSmsData', 
    0, '["FILE"]', 'PrePaidSmsData', 'SEMICOLON', 1,'{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }');


Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS1', 'Champ numero d''appel vide');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS2', 'Champ numero d''appel incorrect');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS3', 'IMSI manquant');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS4', 'IMSI incorrect');

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS5', 'CIN manquant');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS6', 'CIN incorrect');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS7', 'Nom du client manquant');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS8', 'Prenom du client manquant');

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS9', 'Revendeur n''appartient pas a la liste des revendeurs conventionnes');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS10', 'IMSI errone');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS11', 'CIN utilise plusieurs fois');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS12', 'Champ date vide');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS13', 'ND_VENDOR_NO_CONFIG');
  
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS14', 'ND_VENDOR_LIMIT');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('SMSRS15', 'Error inconue');
   
COMMIT;