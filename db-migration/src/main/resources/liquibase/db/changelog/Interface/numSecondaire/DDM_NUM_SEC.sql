

Insert into TASKMANAGER.TSK_SCHEMA_REGISTRY
   (NAME, DESCRIPTION, SCHEMA)
 Values
   ('NUM_SEC_ACT_DEACT', 'Activation Numero Secondaire', '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{
	"ndPrincipal":{
		"type":["string","null"],
		"description":"Directory number principal du client"}
},"required":["ndPrincipal"],"additionalProperties":false}');

Insert into TASKMANAGER.TSK_TASK_TYPE
   (TSK_SCHEMA_REGISTRY_ID, PROCESS_BUSINESS_KEY, TASK_DESCRIPTION, BUCKET_NAME, 
    MAX_LINES, NEEDS_SPLITTING, NEEDS_DECOMPOSITION, MAX_COUNT_PER_CHUNK, INPUT_PATH, 
    NEEDS_PREVALIDATION, INPUT_TYPE, SHORT_DESCRIPTION, DELIMITER, DISPLAYED, AUTH_CONFIG)
 Values
   ((SELECT ID FROM TASKMANAGER.TSK_SCHEMA_REGISTRY WHERE NAME = 'NUM_SEC_ACT_DEACT'), 'NUM_SEC_ACT_DEACT', 'Activation/Deactivation Numero Secondaire', 'numSec-inject-bucket', 
    100000, 0, 0, 10000, 'num-second-act', 
    0, '["FILE"]', 'numSecAct', 'SEMICOLON', 1,'{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }');


Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('NSRS1', 'Le contract n''est pas actif ou plan tarifaire incompatible');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('NSRS2', 'Le service Numero Secondaire n''est pas actif');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('NSRS3', 'Le numero d''appel est incorrect');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('NSRS4', 'Pas plus de numeros secondaires  sont disponibles pour l''activation du service');

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('NSRS5', 'Le service Service Numéro Secondaire est actif');
   
   
COMMIT;
