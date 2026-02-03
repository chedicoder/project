Insert into TASKMANAGER.TSK_SCHEMA_REGISTRY
   (ID, NAME, DESCRIPTION, SCHEMA)
 Values
   ('RAGAB_LOAD', 'Batch RAGAB','chanrgement du fichier recharge via GAB', '{"$schema": "http://json-schema.org/draft-07/schema#", "type": "object","properties": {"referenceNumber": {"type": ["string","null"],"description": ""}, "internalStan": {"type": ["string","null"],"description": ""},"externalStan": {"type": ["string","null"],"description": ""}, "routingCode": {"type": ["string","null"],"description": "" },"captureCode": {"type": ["string","null"], "description": ""},"bankCode": {"type": ["string","null"],"description": ""},"transactionAmount": { "type": ["string","null"], "description": ""},"acqSettlementDate": {"type": ["string","null"],"description": ""},"acq_date": {"type": ["string","null"],"description": ""},"acquirerInstitutionCode": { "type": ["string","null"],"description": ""},"forwardingInstitutionCode": { "type": ["string","null"],"description": ""},"processingCode": {"type": ["string","null"],"description": ""},"actionCode": {"type": ["string","null"],"description": ""},"messageType": {"type": ["string","null"],"description": ""},"reversalFlag": {"type": ["string","null"],"description": ""},"sourceAccountNumber": {"type": ["string","null"],"description": ""},"transactionLocalDate": {"type": ["string","null"],"description": ""},"pass": {"type": ["string","null"],"description": ""},"cardAccNameAddress": {"type": ["string","null"],"description": ""},"fileName": {"type": ["string","null"],"description": ""},"usedDn": {"type": ["string","null"],"description": ""}},"required": [],"additionalProperties": false}');


Insert into TASKMANAGER.TSK_TASK_TYPE
   (TSK_SCHEMA_REGISTRY_ID, PROCESS_BUSINESS_KEY, TASK_DESCRIPTION, BUCKET_NAME, 
    MAX_LINES, NEEDS_SPLITTING, NEEDS_DECOMPOSITION, MAX_COUNT_PER_CHUNK, INPUT_PATH, 
    NEEDS_PREVALIDATION, INPUT_TYPE, SHORT_DESCRIPTION, DELIMITER, DISPLAYED, AUTH_CONFIG, SKIP_FIRST_LINE)
 Values
   ((SELECT ID FROM TASKMANAGER.TSK_SCHEMA_REGISTRY WHERE NAME = 'RAGAB_LOAD'), 'RAGAB_LOAD', 'chanrgement du fichier recharge via GAB', 'ragab-bucket',
    100000, 0, 0, 10000, 'ragab',
    0, '["FILE"]', 'ragab', 'SEMICOLON', 1,'{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }','0');


Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('RAGABRS1', 'Date invalide ou non fournie: acq_settlement_date');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('RAGABRS2', 'referenceNumber non fournit');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('RAGABRS3', 'transaction_amount non fournit');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('RAGABRS4', 'internal_stan non fournit');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('RAGABRS5', 'Date invalide ou non fournie');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('RAGABRS6', 'ND invalide ou non fournit');

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('RAGABRS7', 'erreur inconue');
   
COMMIT;