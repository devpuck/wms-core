create table WMS_CARRY_OVER
(
    ID      NUMBER(32)      GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_CARRY_OVER primary key,
    CARRY_OVER_CODE         VARCHAR2(32),
    FINANCIAL_ACCOUNT_CYCLE VARCHAR2(32),
    WAREHOUSE_CODE          VARCHAR2(32),
    BEGIN_MONEY             NUMBER(32,4),
    END_MONEY               NUMBER(32,4),
    IN_NUM                  NUMBER(32),
    IN_MONEY                NUMBER(32,4),
    OUT_NUM                 NUMBER(32),
    OUT_MONEY               NUMBER(32,4),
    TRANSFER_IN_NUM         NUMBER(32),
    TRANSFER_IN_MONEY       NUMBER(32,4),
    TRANSFER_OUT_NUM        NUMBER(32),
    TRANSFER_OUT_MONEY      NUMBER(32,4),
    DIFFERENCE_MONEY        NUMBER(32,4),
    BEGIN_DATE              DATE,
    END_DATE                DATE,
    CARRY_OVER_DATE         DATE,
    CARRY_OVER_PERSON       VARCHAR2(32),
    CARRY_OVER_TYPE         VARCHAR2(32),
    STATUS                  VARCHAR2(16),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_CARRY_OVER is '结转表';
comment on column WMS_CARRY_OVER.ID is '表id';
comment on column WMS_CARRY_OVER.CARRY_OVER_CODE is '结转单号';
comment on column WMS_CARRY_OVER.FINANCIAL_ACCOUNT_CYCLE is '财务会计周期';
comment on column WMS_CARRY_OVER.WAREHOUSE_CODE is '库房编号';
comment on column WMS_CARRY_OVER.BEGIN_MONEY is '期初金额';
comment on column WMS_CARRY_OVER.END_MONEY is '期末金额';
comment on column WMS_CARRY_OVER.IN_NUM is '收入张数';
comment on column WMS_CARRY_OVER.IN_MONEY is '收入金额';
comment on column WMS_CARRY_OVER.OUT_NUM is '发出张数';
comment on column WMS_CARRY_OVER.OUT_MONEY is '发出金额';
comment on column WMS_CARRY_OVER.TRANSFER_IN_NUM is '转入张数';
comment on column WMS_CARRY_OVER.TRANSFER_IN_MONEY is '转入金额';
comment on column WMS_CARRY_OVER.TRANSFER_OUT_NUM is '转出张数';
comment on column WMS_CARRY_OVER.TRANSFER_OUT_MONEY is '转出金额';
comment on column WMS_CARRY_OVER.DIFFERENCE_MONEY is '价差，正代表期末金额结余+变化金额，大于期初金额';
comment on column WMS_CARRY_OVER.BEGIN_DATE is '结转开始时间';
comment on column WMS_CARRY_OVER.END_DATE is '结转结束时间';
comment on column WMS_CARRY_OVER.CARRY_OVER_DATE is '结转时间';
comment on column WMS_CARRY_OVER.CARRY_OVER_PERSON is '结转人';
comment on column WMS_CARRY_OVER.CARRY_OVER_TYPE is '结转类型，手工结转、自动结转';
comment on column WMS_CARRY_OVER.STATUS is '状态';
comment on column WMS_CARRY_OVER.CREATED_BY is '创建人';
comment on column WMS_CARRY_OVER.CREATED_DATE is '创建时间';
comment on column WMS_CARRY_OVER.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_CARRY_OVER.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_CARRY_OVER.DELETED_BY is '删除人';
comment on column WMS_CARRY_OVER.DELETED_DATE is '删除时间';
comment on column WMS_CARRY_OVER.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_CARRY_OVER_BILL
(
    ID     NUMBER(32)       GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_CARRY_OVER_BILL primary key,
    CARRY_OVER_CODE         VARCHAR2(32),
    BILL_CODE               VARCHAR2(32),
    BILL_TYPE               VARCHAR2(16),
    STATUS                  VARCHAR2(16),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_CARRY_OVER_BILL is '结转单据表';
comment on column WMS_CARRY_OVER_BILL.ID is '表id';
comment on column WMS_CARRY_OVER_BILL.CARRY_OVER_CODE is '结转单号';
comment on column WMS_CARRY_OVER_BILL.BILL_CODE is '单据编号';
comment on column WMS_CARRY_OVER_BILL.BILL_TYPE is '单据类型';
comment on column WMS_CARRY_OVER_BILL.STATUS is '状态';
comment on column WMS_CARRY_OVER_BILL.CREATED_BY is '创建人';
comment on column WMS_CARRY_OVER_BILL.CREATED_DATE is '创建时间';
comment on column WMS_CARRY_OVER_BILL.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_CARRY_OVER_BILL.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_CARRY_OVER_BILL.DELETED_BY is '删除人';
comment on column WMS_CARRY_OVER_BILL.DELETED_DATE is '删除时间';
comment on column WMS_CARRY_OVER_BILL.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_CARRY_OVER_ACCOUNT_CERTIFICATE
(
    ID       NUMBER(32)     GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_CARRY_OVER_ACCOUNT_CERTIFICATE primary key,
    CARRY_OVER_CODE         VARCHAR2(32),
    ACCOUNT_CERTIFICATE_ID    VARCHAR2(32),
    STATUS                  VARCHAR2(16),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_CARRY_OVER_ACCOUNT_CERTIFICATE is '结转流水表';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.ID is '表id';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.CARRY_OVER_CODE is '结转单号';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.ACCOUNT_CERTIFICATE_ID is '单据编号';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.STATUS is '状态';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.CREATED_BY is '创建人';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.CREATED_DATE is '创建时间';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.DELETED_BY is '删除人';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.DELETED_DATE is '删除时间';
comment on column WMS_CARRY_OVER_ACCOUNT_CERTIFICATE.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_CARRY_OVER_ACCOUNT_SNAPSHOT
(
    ID       NUMBER(32)     GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_CARRY_OVER_ACCOUNT_SNAPSHOT primary key,
    CARRY_OVER_CODE              VARCHAR2(32) not null,
    ACCOUNT_ID                   VARCHAR2(32) not null,
    WAREHOUSE_CODE               VARCHAR2(32) not null,
    WAREHOUSE_LOCATION_CODE      VARCHAR2(32) not null,
    PRODUCTION_CODE              VARCHAR2(32) not null,
    IS_PARENT                    VARCHAR2(8)  DEFAULT '2',
    PRODUCE_STATUS               VARCHAR2(16),
    PARENT_PRODUCTION_CODE       VARCHAR2(32),
    PROJECT_CODE                 VARCHAR2(32),
    CONTRACT_CODE                VARCHAR2(32),
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
    SUPPLIER_TYPE                VARCHAR2(32),
    SUPPLIER_BY                VARCHAR2(64),
    QUANTITY                     NUMBER(32,4),
    OCCUPY_QUANTITY              NUMBER(32,4),
    PRICE_CATEGORY               VARCHAR2(16),
    PRICE                        NUMBER(32,4),
    IS_CONSIGNMENT               VARCHAR2(16),
    PRODUCTION_SIZE              VARCHAR2(32),
    DETAILS                      VARCHAR2(200),
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
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_CARRY_OVER_ACCOUNT_SNAPSHOT is '结转库房台账固化表';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.ID is '表id';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.CARRY_OVER_CODE is '结转单号';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.ACCOUNT_ID is '台账ID';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.WAREHOUSE_CODE is '库房编号';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.WAREHOUSE_LOCATION_CODE is '库位号';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PRODUCTION_CODE is '产品编码';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.IS_PARENT is '是否为父件，0父件、1子件、2非父子件关系';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PRODUCE_STATUS is '物料制造处理状态，produce 在制品，clout 余料，waste废料';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PARENT_PRODUCTION_CODE is '父产品编码';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PROJECT_CODE is '项目编码，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.CONTRACT_CODE is '合同编号';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.BRAND is '牌号，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.SPECIFICATIONS is '规格，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PRODUCTION_LEVEL is '状态/级别/型号，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.ADDITIONAL_TECHNICAL_CONDITIONS is '附加技术条件，本为物料属性，但是部分为1：n关系，目前无后期逻辑处理，仅仅记录';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.TECHNICAL_CONDITIONS is '技术条件';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.THREE_PERIOD_CODE is '三期代码，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.MANUFACTURE_DATE   is '生产日期，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.EXPIRATION_DATE is '过期日期，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.BATCH           is '批次号，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.SPLYSOT_CODE    is '炉批号或小号，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.AIRCRAFT_CODE   is '机型，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.SORTIE_CODE     is '架次，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.MODEL_CODE    is '版号，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.CONSTRUCTION_CODE is '构型号，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.QUALITY_STATUS     is '质检状态，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.QUALITY_CODE     is '质量编号，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.STATUS              is '状态，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.CERTIFICATE_NO              is '合格证号，批次属性';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.SUPPLY_CERTIFICATE_NO  is '供方合格证号';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.SUPPLIER_TYPE  is '提供者类型';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.SUPPLIER_BY  is '提供者';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.QUANTITY      is '数量';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.OCCUPY_QUANTITY      is '占用数量';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PRICE_CATEGORY      is '计价规则，仅仅采购价生效，如果为计划价，则仅仅记录入库时计划价，不做处理';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PRICE      is '计价规则';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.IS_CONSIGNMENT   is '是否寄售';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.DETAILS                   is '备注';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.PRODUCTION_SIZE                   is '物料尺寸，本身为物料属性，此处尺寸仅仅在物料状态为余料时有效';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.CREATED_BY is '创建人';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.CREATED_DATE is '创建时间';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.DELETED_BY is '删除人';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.DELETED_DATE is '删除时间';
comment on column WMS_CARRY_OVER_ACCOUNT_SNAPSHOT.IS_DELETED is '是否删除，0为删除，1已经产出';