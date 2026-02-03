CREATE TABLE FINANCE.DOCUMENT
(
	DOCUMENT_ID	        NUMBER(38),
    CATALOG	            VARCHAR2(30),
    ORDER_ID	        VARCHAR2 (30),
	CUSTOMERID	        VARCHAR2(40)    NOT NULL,
	CUSTNUM	            VARCHAR2(30)    NOT NULL,
	DOC_TYPE	        VARCHAR2(2)     NOT NULL,
	OHXACT	            NUMBER(38),
	REF_NUM	            VARCHAR2 (30)   NOT NULL,
	ENT_DATE	        DATE            DEFAULT SYSDATE,
	DUE_DATE	        DATE,
	DOC_AMOUNT	        FLOAT(126),
	OPEN_AMOUNT	        FLOAT(126),
	DISC_AMOUNT	        FLOAT(126),
    AR_GLCODE  	        VARCHAR2(30),
	POST_PERIOD	        VARCHAR2(6),
	POST_GL_DATE	    DATE,
	GLENTRY_ID          NUMBER(38),
	COST_ID	            NUMBER(38),
	BILLING_ACCOUNT_ID  NUMBER(38),
	USER_ID	            VARCHAR2(30),
	SYSTEM              VARCHAR2(10)
)
TABLESPACE DATA
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             16M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCACHE;

COMMENT ON COLUMN FINANCE.DOCUMENT.DOCUMENT_ID               IS 'ID interne du document. Il s’agit d’une séquence globale qui servira pour les factures RETAIL et les factures EB.';
COMMENT ON COLUMN FINANCE.DOCUMENT.CATALOG                   IS 'Catalogue source du document :
                                                                 RET dans le cas des factures
                                                                 prépayées.
                                                                 TEL dans le cas des documents postpayés';
COMMENT ON COLUMN FINANCE.DOCUMENT.ORDER_ID                  IS 'ID de la commande EOC';
COMMENT ON COLUMN FINANCE.DOCUMENT.CUSTOMERID                IS 'Customer ID au niveau du CPR';
COMMENT ON COLUMN FINANCE.DOCUMENT.CUSTNUM                   IS 'ID publique du client EB -> ID de l''organisation sur CPR';
COMMENT ON COLUMN FINANCE.DOCUMENT.DOC_TYPE                  IS 'Type de document :
                                                                 IN (Facture)
                                                                 CM (Avoir)
                                                                 CO (Avance)
                                                                 RD (Demande de dépôt)
                                                                 DP (Dépôt)
                                                                 DI (Intérêt sur dépôt)
                                                                 FC (Autre charges)
                                                                 DN (Note de débit)';
COMMENT ON COLUMN FINANCE.DOCUMENT.OHXACT                    IS 'Id de la facture sur EB';
COMMENT ON COLUMN FINANCE.DOCUMENT.REF_NUM                   IS 'Numéro de référence du document';
COMMENT ON COLUMN FINANCE.DOCUMENT.ENT_DATE                  IS 'Date de saisie';
COMMENT ON COLUMN FINANCE.DOCUMENT.DUE_DATE                  IS 'Date limite de paiement';
COMMENT ON COLUMN FINANCE.DOCUMENT.DOC_AMOUNT                IS 'Montant total du document';
COMMENT ON COLUMN FINANCE.DOCUMENT.OPEN_AMOUNT               IS 'Montant ouvert du document';
COMMENT ON COLUMN FINANCE.DOCUMENT.DISC_AMOUNT               IS 'Montant de la remise sur le document';
COMMENT ON COLUMN FINANCE.DOCUMENT.AR_GLCODE                 IS 'Code comptable client (ACCOUNT RECEIVABLE)';
COMMENT ON COLUMN FINANCE.DOCUMENT.POST_PERIOD               IS 'Période comptable';
COMMENT ON COLUMN FINANCE.DOCUMENT.POST_GL_DATE              IS 'Date de transfert au grand livre (GL)';
COMMENT ON COLUMN FINANCE.PAYMENT.GLENTRY_ID                 IS 'Id de la transaction de transfert vers GL';
COMMENT ON COLUMN FINANCE.DOCUMENT.COST_ID                   IS 'Id du centre de coût';
COMMENT ON COLUMN FINANCE.DOCUMENT.BILLING_ACCOUNT_ID        IS 'Id du compte de facturation';
COMMENT ON COLUMN FINANCE.DOCUMENT.USER_ID                   IS 'ID de l''utilisateur';
COMMENT ON COLUMN FINANCE.DOCUMENT.SYSTEM                    IS 'SI origine de la facture : RETAIL (Prépayé), TELCO (Post-payé), WIAM (Fixe/Internet)';

ALTER TABLE FINANCE.DOCUMENT ADD CONSTRAINT PK_DOCUMENT_ID PRIMARY KEY  (DOCUMENT_ID);

CREATE OR REPLACE PUBLIC SYNONYM DOCUMENT FOR FINANCE.DOCUMENT;

GRANT SELECT, UPDATE, DELETE, INSERT ON FINANCE.DOCUMENT TO LIQUI_DML_ROLE;