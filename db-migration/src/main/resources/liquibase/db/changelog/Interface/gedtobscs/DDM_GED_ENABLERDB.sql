Insert into TASKMANAGER.TSK_SCHEMA_REGISTRY
   (NAME, DESCRIPTION, SCHEMA)
 Values
   ('GED_IDENTIF', 'GED To BSCS Identification', '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{
	"imsi":{
		"type":["string","null"],
		"description":"storage medium id"},
	"nd":{
		"type":["string","null"],"description":"Directory number"},"nom":{"type":["string","null"],"description":"Nom"}, "prenom":{"type":["string","null"],"description":"Prenom"}
		,"cin":{"type":["string","null"],"description":"CIN"},"adresse":{"type":["string","null"],"description":"Adresse"}, "ville":{"type":["string","null"],"description":"Ville"},
		"dateVente":{"type":["string","null"],"description":"Date de vente"},
		"codeRevendeur":{"type":["string","null"],"description":"Code revendeur"},
		"centreArchivage":{"type":["string","null"],"description":"Centre archivage"},
		"identifiantGED":{"type":["string","null"],"description":"Identifiant GED"},
		"dateInjection":{"type":["string","null"],"description":"Date injection"}
},"required":[],"additionalProperties":false}');

Insert into TASKMANAGER.TSK_TASK_TYPE
   (TSK_SCHEMA_REGISTRY_ID, PROCESS_BUSINESS_KEY, TASK_DESCRIPTION, BUCKET_NAME, 
    MAX_LINES, NEEDS_SPLITTING, NEEDS_DECOMPOSITION, MAX_COUNT_PER_CHUNK, INPUT_PATH, 
    NEEDS_PREVALIDATION, INPUT_TYPE, SHORT_DESCRIPTION, DELIMITER, DISPLAYED,AUTH_CONFIG)
 Values
   ((SELECT ID FROM TASKMANAGER.TSK_SCHEMA_REGISTRY WHERE NAME = 'GED_IDENTIF'), 'GED_IDENTIF', 'GED To BSCS Identification', 'ged-inject-bucket', 
    100000, 0, 0, 10000, 'ged-injection', 
    0, '["FILE"]', 'gedInject', 'SEMICOLON', 1,'{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }');

--Bonus job definition imsi, nd, codeRevendeur

Insert into TASKMANAGER.TSK_SCHEMA_REGISTRY
   (NAME, DESCRIPTION, SCHEMA)
 Values
   ('GED_BONUS', 'GED To BSCS Octroi bonus ', '{"$schema":"http://json-schema.org/draft-07/schema#","type":"object","properties":{
	"imsi":{
		"type":["string","null"],
		"description":"L’identifiant de la carte SIM du client identifié (Table Kernel PORT.PORT_NUM)"},
	"nd":{
		"type":["string","null"],"description":"Le numéro d’appel du revendeur (ENTITY_PREPAID_DETAILS.EP_ND)"},
	"codeRevendeur":{
		"type":["string","null"],"description":"Le code revendeur GVI (ENTITY.EN_ID)"}
},"required":["imsi", "nd","codeRevendeur"],"additionalProperties":false}');

Insert into TASKMANAGER.TSK_TASK_TYPE
   (TSK_SCHEMA_REGISTRY_ID, PROCESS_BUSINESS_KEY, TASK_DESCRIPTION, BUCKET_NAME, 
    MAX_LINES, NEEDS_SPLITTING, NEEDS_DECOMPOSITION, MAX_COUNT_PER_CHUNK, INPUT_PATH, 
    NEEDS_PREVALIDATION, INPUT_TYPE, SHORT_DESCRIPTION, DELIMITER, DISPLAYED, AUTH_CONFIG)
 Values
   ((SELECT ID FROM TASKMANAGER.TSK_SCHEMA_REGISTRY WHERE NAME = 'GED_BONUS'), 'GED_BONUS', 'GED To BSCS Octroi Bonus', 'ged-inject-bucket', 
    100000, 0, 0, 10000, 'ged-bonus', 
    0, '["FILE"]', 'gedBonus', 'SEMICOLON', 1,'{ "ADMIN": ["READ", "DELETE", "ADD", "UPDATE"], "USER": ["READ", "ADD"], "MODERATOR": ["READ", "UPDATE"], "GUEST": ["READ"] }');
	

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS1', 'Le parametre ND est invalide');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS2', 'Les parametres ND et/ou IMSI sont obligatoires');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS3', 'Le parametre NOM est obligatoire');
   
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS4', 'Le parametre PRENOM est obligatoire');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS5', 'Le parametre Ne PIECE D''IDENTITE est obligatoire');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS6', 'Format du parametre ND est incorrect');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS7', 'Format du parametre IMSI est incorrect');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS8', 'Le format du parametre NOM est incorrect');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS9', 'Le format du parametre PRENOM est incorrect');

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS10', 'Le format du parametre Num PIECE D''IDENTITE est incorrect');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS11', 'Le format du parametre VILLE est incorrect');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS12', 'Le format du parametre ADRESSE est incorrect');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS13', 'Le format du parametre DATE DE VENTE est incorrect');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS14', 'Impossible de trouver le contrat correspondant');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS15', 'Le contrat correspondant n''est pas actif');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS16', 'Les parametres ND et/ou IMSI appartiennent a des contrats differents');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS17', 'Le client correspondant ne doit pas avoir des contrats postpayes SI/IN actifs ou suspendus');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS18', 'Pas de client correspondant au ND/IMSI en entree');
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS19', 'rejet de l''identification sur BSCS avec motif, CIN>N');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS20', 'Client Deja identifie');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS21', 'Les paramétres ND ou IMSI ou code revendeur sont obligatoires');

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS22', 'Le ND ne respecte pas le format 212xxxxxxxxx ou 0xxxxxxxxx');

Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS23', 'Le paramétre Code revendeur ne correspond pas à un revendeur GVI');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS24', 'Le paramétre IMSI ne correspond pas à un client identifié');
   
Insert into TASKMANAGER.TSK_REASON
   (CODE, DESCRIPTION)
 Values
   ('GEDRS25', 'Cette ligne est déja traitée');
   
   
COMMIT;
