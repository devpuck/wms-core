//废弃





create table WMS_AUTO_ACCOUNT_IN_STORAGE
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_AUTO_ACCOUNT_IN_STORAGE primary key,
    RUNNING_ACCOUNT_ID VARCHAR2(32),
    ORDER_NUM          VARCHAR2(32),
    ORDER_ORI_CODE     VARCHAR2(32),
    WH_CODE            VARCHAR2(32),
    PRO_CODE           VARCHAR2(16),
    QUANTITY           NUMBER(32, 4),
    UNIT               VARCHAR2(16),
    LOCATION_CODE      VARCHAR2(16),
    PRIORITY           NUMBER,
    INTO_PERSON_CODE   VARCHAR2(32),
    GEN_DATA           VARCHAR2(32),
    EXPIRE_DATA        VARCHAR2(64),
    QUALITY_STATUS     VARCHAR2(16),
    PROJECT_CODE       VARCHAR2(64),
    BATCH              VARCHAR2(64),
    SPLYSOT_CODE       VARCHAR2(200),
    AIRCRAFT_CODE      VARCHAR2(64),
    SORITE_CODE        VARCHAR2(64),
    ATTRIBUTE1         VARCHAR2(64),
    ATTRIBUTE2         VARCHAR2(64),
    ATTRIBUTE3         VARCHAR2(64),
    ATTRIBUTE4         VARCHAR2(64),
    ATTRIBUTE5         VARCHAR2(64)
);

comment on table WMS_AUTO_ACCOUNT_IN_STORAGE is '入库过账';
