---------------------------------Headline------------------------------
--
-- System/Module: ENABLERDB
--
-- Name:  DDL_DATA_MODEL_NOTIFICATIONS.sql
--
-- Created by              Adnane AMELLAL
-- Creation date           09/03/2025
-- Version
--
-- -- Tables impacted:
--
-- Description:
--
-- Parameters     IN:
-- Parameters    OUT:
-- Parameters IN-OUT:
--
-- Return values:
-- Error codes:
--
--------------------------------Barcode--------------------------------
CREATE USER NOTIFICATIONS IDENTIFIED BY NOTIFICATIONS DEFAULT TABLESPACE DATA TEMPORARY TABLESPACE TEMP;
GRANT CONNECT TO NOTIFICATIONS;  
GRANT RESOURCE TO NOTIFICATIONS;
ALTER USER NOTIFICATIONS QUOTA UNLIMITED ON DATA;
ALTER USER NOTIFICATIONS QUOTA UNLIMITED ON INDX;

CREATE TABLE NOTIFICATIONS.NOTIFICATIONS 
(   
  ID                 NUMBER          NOT NULL,
  NOTIFICATION_TYPE  VARCHAR2(10)    NOT NULL,
  CREATED_AT         DATE DEFAULT SYSDATE,
  SENT_AT            DATE,
  SENT_ERROR         VARCHAR2(500),
  SUBJECT            VARCHAR2(500),
  MESSAGE            VARCHAR2(2000)  NOT NULL,
  STATUS             INTEGER         NOT NULL,
  RETRIES            INTEGER,
  SENT_FROM          VARCHAR2(500),
  SENT_TO            VARCHAR2(500)   NOT NULL,
  ATTACHEMENT        VARCHAR2(2000),
  MIME_TYPE          VARCHAR2(50)
)
TABLESPACE DATA
PCTUSED 40
PCTFREE 10
INITRANS 1
MAXTRANS 255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
            )
LOGGING
NOCACHE
NOPARALLEL;
 
ALTER TABLE NOTIFICATIONS.NOTIFICATIONS ADD CONSTRAINT PK_NOTIFICATIONS_ID PRIMARY KEY  (ID);
 












