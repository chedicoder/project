CREATE OR REPLACE TRIGGER SYSADM.AU_DIRECTORY_NUMBER_TRIG
   BEFORE UPDATE
   ON SYSADM.DIRECTORY_NUMBER
   FOR EACH ROW
DECLARE
   V_TDS_ID   INTEGER;
   V_TDS_IP   VARCHAR2 (100 BYTE);
   NACTIV     NUMBER;
BEGIN
   IF :OLD.DN_STATUS <> :NEW.DN_STATUS
   THEN
      SELECT RESOURCES.TDS_ID_SEQ.NEXTVAL INTO V_TDS_ID FROM DUAL;
 
      SELECT SYS_CONTEXT ('USERENV', 'IP_ADDRESS') INTO V_TDS_IP FROM DUAL;
 
      INSERT INTO RESOURCES.TRACE_ND_STATUS (TDS_ID,
                                             TDS_DN_NUM,
                                             TDS_OLD_STATUS,
                                             TDS_NEW_STATUS,
                                             TDS_ACTION_DATE,
                                             TDS_OLD_STATUS_MOD_DATE,
                                             TDS_NEW_STATUS_MOD_DATE,
                                             TDS_OLD_DN_MODDATE,
                                             TDS_NEW_DN_MODDATE,
                                             TDS_IP,
                                             TDS_USERNAME)
           VALUES (V_TDS_ID,
                   :OLD.DN_NUM,
                   :OLD.DN_STATUS,
                   :NEW.DN_STATUS,
                   SYSDATE,
                   :OLD.DN_STATUS_MOD_DATE,
                   :NEW.DN_STATUS_MOD_DATE,
                   :OLD.DN_MODDATE,
                   :NEW.DN_MODDATE,
                   V_TDS_IP,
                   USER);
 
      IF (:OLD.DN_STATUS = 'a' AND :NEW.DN_STATUS = 'r')
      THEN
         SELECT COUNT (1)
          INTO  NACTIV
          FROM  DIRECTORY_NUMBER DN, CONTR_SERVICES_CAP CSC, CONTRACT_ALL CO
          WHERE DN.DN_ID = CSC.DN_ID
          AND   CSC.CO_ID = CO.CO_ID
          AND   CH_STATUS IN ('a', 's')
          AND   CSC.MAIN_DIRNUM = 'X'
          AND   DN_NUM = :OLD.DN_NUM
          AND   CS_ACTIV_DATE IS NOT NULL
          AND   CS_DEACTIV_DATE IS NULL
          AND   CSC.SEQNO = (SELECT MAX (SEQNO)
                              FROM  CONTR_SERVICES_CAP CS
                              WHERE CO_ID = CSC.CO_ID);
 
         IF (NACTIV > 0)
         THEN
            :NEW.DN_STATUS := 'a';
         END IF;
      END IF;
 
	  IF (:OLD.DN_STATUS = 'l' AND :NEW.DN_STATUS = 'r' AND USER = 'EREVWS')
      THEN
	  :NEW.DN_STATUS := 'l';
	  END IF;
   END IF;
END;
/
SHOW ERRORS;