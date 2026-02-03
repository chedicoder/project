-- table TSK_PROCESSED_RECORD

CREATE TABLE TASKMANAGER.TSK_PROCESSED_RECORD
(
    ID              NUMBER  NOT NULL,
    TASK_ID         NUMBER  NOT NULL,
    CHUNK_ID        INTEGER,
    RAW_LINE        VARCHAR2(500),
    REASON          VARCHAR2(20),
    STATUS          VARCHAR2(20),
    RAW_JSON        CLOB,
    PARSED_RECORD   CLOB,
    OUTPUT_RECORD   CLOB,
    STATUS_HISTORY  CLOB
)/*
LOB (OUTPUT_RECORD) STORE AS SECUREFILE (
  TABLESPACE  DATA
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          104K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
LOB (PARSED_RECORD) STORE AS SECUREFILE (
  TABLESPACE  DATA
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          104K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
LOB (RAW_JSON) STORE AS SECUREFILE (
  TABLESPACE  DATA
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          104K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
LOB (STATUS_HISTORY) STORE AS SECUREFILE (
  TABLESPACE  DATA
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          104K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE DATA
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING
NOCOMPRESS
NOCACHE*/;

CREATE OR REPLACE PUBLIC SYNONYM TSK_PROCESSED_RECORD FOR TASKMANAGER.TSK_PROCESSED_RECORD;

ALTER TABLE TASKMANAGER.TSK_PROCESSED_RECORD ADD (
    FOREIGN KEY (TASK_ID)
        REFERENCES TASKMANAGER.TSK_TASK (ID)
            ENABLE VALIDATE);

ALTER TABLE TASKMANAGER.TSK_PROCESSED_RECORD ADD (
    FOREIGN KEY (REASON)
        REFERENCES TASKMANAGER.TSK_REASON (CODE)
            ENABLE VALIDATE);

ALTER TABLE TASKMANAGER.TSK_PROCESSED_RECORD ADD (
    FOREIGN KEY (STATUS)
        REFERENCES TASKMANAGER.TSK_STATUS (CODE)
            ENABLE VALIDATE);

