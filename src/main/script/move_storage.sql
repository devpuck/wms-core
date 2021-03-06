create table WMS_MOVE_WAREHOUSE_BILL
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_MOVE_WAREHOUSE_BILL primary key,
    MOVE_OUT_WAREHOUSE_CODE VARCHAR2(32) not null,
    MOVE_IN_WAREHOUSE_CODE  VARCHAR2(32) not null,
    BILL_CODE          VARCHAR2(32) not null,
    MOVE_OUT_BILL_CODE      VARCHAR2(32) not null,
    MOVE_IN_BILL_CODE       VARCHAR2(32) not null,
    STATUS                  VARCHAR2(32),
    NEED_QUALITY            VARCHAR2(16),
    QUALITY_CATEGORY        VARCHAR2(16),
    VERSION            VARCHAR(32),
    NOTE               VARCHAR2(4000),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_MOVE_WAREHOUSE_BILL is '移库表';
comment on column WMS_MOVE_WAREHOUSE_BILL.ID is '表id';
comment on column WMS_MOVE_WAREHOUSE_BILL.MOVE_OUT_WAREHOUSE_CODE is '移出库房编码';
comment on column WMS_MOVE_WAREHOUSE_BILL.MOVE_IN_WAREHOUSE_CODE is '移出库房编码';
comment on column WMS_MOVE_WAREHOUSE_BILL.BILL_CODE is '移库单号';
comment on column WMS_MOVE_WAREHOUSE_BILL.MOVE_OUT_BILL_CODE is '出库单号，自动创建';
comment on column WMS_MOVE_WAREHOUSE_BILL.MOVE_IN_BILL_CODE is '入库单号，自动创建';
comment on column WMS_MOVE_WAREHOUSE_BILL.STATUS is '状态';
comment on column WMS_MOVE_WAREHOUSE_BILL.NEED_QUALITY is '是否需要质检';
comment on column WMS_MOVE_WAREHOUSE_BILL.QUALITY_CATEGORY is '质检后处理状态，主要是不合格如何处理，如退回原库，还是转移到原库';
comment on column WMS_MOVE_WAREHOUSE_BILL.CREATED_BY is '创建人';
comment on column WMS_MOVE_WAREHOUSE_BILL.CREATED_DATE is '创建时间';
comment on column WMS_MOVE_WAREHOUSE_BILL.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_MOVE_WAREHOUSE_BILL.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_MOVE_WAREHOUSE_BILL.DELETED_BY is '删除人';
comment on column WMS_MOVE_WAREHOUSE_BILL.DELETED_DATE is '删除时间';
comment on column WMS_MOVE_WAREHOUSE_BILL.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_MOVE_WAREHOUSE_BILL_SUB
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_MOVE_WAREHOUSE_BILL_SUB primary key,
    BILL_CODE     VARCHAR2(32),
    ACCOUNT_ID         VARCHAR2(32),
    PRODUCTION_CODE    VARCHAR2(32),
    IS_PARENT                    VARCHAR2(8) DEFAULT '2',
    PRODUCE_STATUS                   VARCHAR2(16),
    PARENT_PRODUCTION_CODE       VARCHAR2(32),
    PROJECT_CODE                 VARCHAR2(32),
    BRAND                        VARCHAR2(32),
    SPECIFICATIONS               VARCHAR2(32),
    PRODUCTION_LEVEL             VARCHAR2(32),
    TECHNICAL_CONDITIONS         VARCHAR2(64),
    ADDITIONAL_TECHNICAL_CONDITIONS VARCHAR2(64),
    THREE_PERIOD_CODE            VARCHAR2(32),
    MANUFACTURE_DATE             DATE,
    EXPIRATION_DATE              DATE,
    BATCH                        VARCHAR2(32),
    SPLYSOT_CODE                 VARCHAR2(200),
    AIRCRAFT_CODE                VARCHAR2(64),
    SORTIE_CODE                  VARCHAR2(64),
    MODEL_CODE                   VARCHAR2(64),
    CONSTRUCTION_CODE            VARCHAR2(64),
    QUALITY_CODE                 VARCHAR2(64),
    QUALITY_STATUS               VARCHAR2(32),
    STATUS                       VARCHAR2(32),
    CERTIFICATE_NO               VARCHAR2(32),
    SUPPLY_CERTIFICATE_NO        VARCHAR2(32),
    PRICE_CATEGORY               VARCHAR2(16),
    PRICE                        NUMBER(32,4),
    PRICE_UNIT                   VARCHAR2(16),
    IS_CONSIGNMENT               VARCHAR2(16),
    PRODUCTION_SIZE              VARCHAR2(32),
    MOVE_QUANTITY      NUMBER(32,4),
    MOVE_QUALITY_CONSUME_QUANTITY NUMBER(32,4),
    ATTRIBUTE1                  VARCHAR2(32),
    ATTRIBUTE2                  VARCHAR2(32),
    ATTRIBUTE3                  VARCHAR2(32),
    ATTRIBUTE4                  VARCHAR2(32),
    ATTRIBUTE5                  VARCHAR2(32),
    ATTRIBUTE6                  VARCHAR2(32),
    ATTRIBUTE7                  VARCHAR2(32),
    ATTRIBUTE8                  VARCHAR2(32),
    ATTRIBUTE9                  VARCHAR2(32),
    ATTRIBUTE10                 VARCHAR2(32),
    VERSION                      VARCHAR2(32),
    NOTE               VARCHAR2(2000),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_MOVE_WAREHOUSE_BILL_SUB is '移库单子表';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.ID is '表id';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.ACCOUNT_ID is '移库前台账ID';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PRODUCTION_CODE is '物料编码';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.BILL_CODE is '移库单号';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.MOVE_QUANTITY is '移动数量';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.MOVE_QUALITY_CONSUME_QUANTITY is '移动质检消耗数量';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.STATUS is '状态';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.NOTE is '备注';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.BRAND is '牌号，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.SPECIFICATIONS is '规格，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PRODUCTION_LEVEL is '状态/级别/型号，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.ADDITIONAL_TECHNICAL_CONDITIONS is '附加技术条件，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.TECHNICAL_CONDITIONS is '技术条件';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.IS_PARENT is '是否为父件，0父件、1子件、2非父子件关系';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PRODUCE_STATUS is '物料制造处理状态，produce 在制品，clout 余料，waste废料';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PARENT_PRODUCTION_CODE is '父产品编码';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PROJECT_CODE is '项目编码，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.THREE_PERIOD_CODE is '三期代码，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.MANUFACTURE_DATE   is '生产日期，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.EXPIRATION_DATE is '过期日期，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.BATCH           is '批次号，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.SPLYSOT_CODE    is '炉批号或小号，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.AIRCRAFT_CODE   is '机型，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.SORTIE_CODE     is '架次，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.MODEL_CODE    is '版号，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.CONSTRUCTION_CODE is '构型号，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.QUALITY_STATUS     is '质检状态，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.QUALITY_CODE     is '质量编号，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.STATUS              is '状态，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.CERTIFICATE_NO              is '合格证号，批次属性';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.SUPPLY_CERTIFICATE_NO  is '供方合格证号';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PRICE_CATEGORY              is '定价策略';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PRICE                   is '价格';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PRICE_UNIT              is '价格单位';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.IS_CONSIGNMENT          is '是否寄售';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.PRODUCTION_SIZE is '物料尺寸，本身为物料属性，此处尺寸仅仅在物料状态为余料时有效';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.CREATED_BY is '创建人';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.CREATED_DATE is '创建时间';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.DELETED_BY is '删除人';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.DELETED_DATE is '删除时间';
comment on column WMS_MOVE_WAREHOUSE_BILL_SUB.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_MOVE_WAREHOUSE_QUALITY_RESULT
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_MOVE_WAREHOUSE_QUALITY_RESULT primary key,
    BILL_CODE          VARCHAR2(32),
    SUB_BILL_CODE      VARCHAR2(32),
    BILL_TYPE          VARCHAR2(32),
    ACCOUNT_ID         VARCHAR2(32),
    PRODUCTION_CODE    VARCHAR2(32),
    QUALITY_CODE       VARCHAR2(32),
    BEFORE_QUALITY_STATUS   VARCHAR2(16),
    QUALITY_RESULT          VARCHAR2(16),
    QUALIFIED_QUANTITY      NUMBER(32,4),
    UNQUALIFIED_QUANTITY    NUMBER(32,4),
    CERTIFICATE_NO          VARCHAR2(32),
    STATUS                  VARCHAR2(32),
    QUALITY_DETAILS         VARCHAR2(2000),
    QUALITY_TIME      DATE DEFAULT SYSDATE,
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_MOVE_WAREHOUSE_QUALITY_RESULT is '移动相关质检单据管理';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.ID is '表id';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.BILL_CODE is '移动单号，入库单号，出库单号，或者移库单号';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.SUB_BILL_CODE is '移动子单号';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.BILL_TYPE is '单据类型';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.ACCOUNT_ID is '台账ID';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.PRODUCTION_CODE is '物料编码';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.QUALITY_CODE  is '质量编码';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.BEFORE_QUALITY_STATUS   is '之前质量状态';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.QUALITY_RESULT  is '现在质量状态';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.QUALIFIED_QUANTITY  is '合格数量';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.UNQUALIFIED_QUANTITY  is '不合格数量';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.CERTIFICATE_NO  is '合格证号';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.STATUS is '状态';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.QUALITY_DETAILS is '备注';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.CREATED_BY is '创建人';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.CREATED_DATE is '创建时间';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.DELETED_BY is '删除人';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.DELETED_DATE is '删除时间';
comment on column WMS_MOVE_WAREHOUSE_QUALITY_RESULT.IS_DELETED is '是否删除，0为删除，1已经产出';
