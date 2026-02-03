Insert into TASKMANAGER.TSK_SCHEMA_REGISTRY
   (NAME, DESCRIPTION, SCHEMA)
 Values
   ('PREDH_ACTIVATION', 'Predh activation after first call', '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{
	"msisdn":{"type":["string","null"],"description":"Directory number du client"},timestamp":{"type":["string","null"],"description":"first call timestamp"},reason":{"type":["string","null"],"description":"activation reason"}
},"required":["ndPrincipal"],"additionalProperties":false}');
--COMMIT;

Insert into TASKMANAGER.TSK_TASK_TYPE
   (TSK_SCHEMA_REGISTRY_ID, PROCESS_BUSINESS_KEY, TASK_DESCRIPTION, BUCKET_NAME, 
    MAX_LINES, NEEDS_SPLITTING, NEEDS_DECOMPOSITION, MAX_COUNT_PER_CHUNK, INPUT_PATH, 
    NEEDS_PREVALIDATION, INPUT_TYPE, SHORT_DESCRIPTION, DELIMITER, DISPLAYED, AUTH_CONFIG, SKIP_FIRST_LINE)
 Values
   ((SELECT ID FROM TASKMANAGER.TSK_SCHEMA_REGISTRY WHERE NAME = 'PREDH_ACTIVATION'), 'PREDH_ACTIVATION', 'Activation after first call', 'pre-dh-bucket', 
    100000, 0, 0, 10000, 'pre-dh', 
    0, '["FILE"]', 'pre-dh', 'PIPE', 1,'{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }','1');


Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('PREDHRS1', 'La date de first call incorrecte');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('PREDHRS2', 'PREDHRS1');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('PREDHRS3', 'erreur inconue');
   
COMMIT;
