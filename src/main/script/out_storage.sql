create table WMS_OUT_WAREHOUSE_BILL
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_OUT_WAREHOUSE_BILL primary key,
    REQUIREMENT_ID    VARCHAR2(32),
    SYSTEM_FROM       VARCHAR2(32),
    BILL_CODE         VARCHAR2(32),
    TARGET_CODE       VARCHAR2(32),
    TARGET_TYPE       VARCHAR2(32),
    WORK_CODE         VARCHAR2(32) not null,
    DEAL_CODE         VARCHAR2(32) DEFAULT 'DEFAULT',
    OUT_PERSON        VARCHAR2(32),
    OUT_DEPT          VARCHAR2(32),
    WAREHOUSE_CODE     VARCHAR2(32),
    OUT_OPERATOR           VARCHAR2(32),
    OUT_OPERATOR_DEPT      VARCHAR2(32),
    OUT_OPERATOR_TIME  DATE  DEFAULT SYSDATE,
    STATUS             VARCHAR2(32),
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

comment on table WMS_OUT_WAREHOUSE_BILL is '出库单据';
comment on column WMS_OUT_WAREHOUSE_BILL.ID is '表id';
comment on column WMS_OUT_WAREHOUSE_BILL.REQUIREMENT_ID is '需求单ID';
comment on column WMS_OUT_WAREHOUSE_BILL.SYSTEM_FROM is '需求来源系统，隐藏字段，页面不展示';
comment on column WMS_OUT_WAREHOUSE_BILL.WORK_CODE is '出库单类型，对应事务类型';
comment on column WMS_OUT_WAREHOUSE_BILL.DEAL_CODE is '处理类型编号，如合同到货、紧急到货。相当于WORK_CODE的一个补充,对接系统的需要，实际操作只需要配置即可，无需理会，主要用于处理老事务处理不规范情况';
comment on column WMS_OUT_WAREHOUSE_BILL.BILL_CODE is '出库单号';
comment on column WMS_OUT_WAREHOUSE_BILL.TARGET_CODE is '目标编号';
comment on column WMS_OUT_WAREHOUSE_BILL.TARGET_TYPE is '目标类型';
comment on column WMS_OUT_WAREHOUSE_BILL.OUT_PERSON is '出库人，负责出库单人，非操作员。通常为货物领用人';
comment on column WMS_OUT_WAREHOUSE_BILL.OUT_DEPT is '出库部门，负出入库货物的部门';
comment on column WMS_OUT_WAREHOUSE_BILL.WAREHOUSE_CODE  is '库房编号';
comment on column WMS_OUT_WAREHOUSE_BILL.OUT_OPERATOR   is '操作人';
comment on column WMS_OUT_WAREHOUSE_BILL.OUT_OPERATOR_DEPT   is '操作人部门';
comment on column WMS_OUT_WAREHOUSE_BILL.OUT_OPERATOR_TIME   is '操作时间';
comment on column WMS_OUT_WAREHOUSE_BILL.STATUS is '出库单状态';
comment on column WMS_OUT_WAREHOUSE_BILL.CREATED_BY is '创建人';
comment on column WMS_OUT_WAREHOUSE_BILL.LAST_UPDATED_BY is '最后修改人';
comment on column WMS_OUT_WAREHOUSE_BILL.NOTE is '备注';
comment on column WMS_OUT_WAREHOUSE_BILL.VERSION is '版本';
comment on column WMS_OUT_WAREHOUSE_BILL.CREATED_BY is '创建人';
comment on column WMS_OUT_WAREHOUSE_BILL.CREATED_DATE is '创建时间';
comment on column WMS_OUT_WAREHOUSE_BILL.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_OUT_WAREHOUSE_BILL.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_OUT_WAREHOUSE_BILL.DELETED_BY is '删除人';
comment on column WMS_OUT_WAREHOUSE_BILL.DELETED_DATE is '删除时间';
comment on column WMS_OUT_WAREHOUSE_BILL.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_OUT_WAREHOUSE_BILL_SUB
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_OUT_WAREHOUSE_BILL_SUB primary key,
    BILL_CODE                    VARCHAR2(32) not null,
    REQUIREMENT_SUB_ID           VARCHAR2(32),
    DISPATCH_CODE                VARCHAR2(32),
    CONTRACT_SUB_CODE            VARCHAR2(32),
    PRODUCTION_CODE              VARCHAR2(32) not null,
    PRODUCTION_TYPE              VARCHAR2(16) ,
    WAREHOUSE_LOCATION_CODE      VARCHAR2(32),
    IS_PARENT                    VARCHAR2(8) DEFAULT '2',
    PRODUCE_STATUS                   VARCHAR2(16),
    PARENT_PRODUCTION_CODE       VARCHAR2(32),
    PROJECT_CODE                 VARCHAR2(32),
    BRAND                        VARCHAR2(32),
    SPECIFICATIONS               VARCHAR2(32),
    PRODUCTION_LEVEL              VARCHAR2(32),
    TECHNICAL_CONDITIONS         VARCHAR2(64),
    ADDITIONAL_TECHNICAL_CONDITIONS VARCHAR2(64),
    DRAW_CODE                    VARCHAR2(32),
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
    SUPPLY_CERTIFICATE_NO         VARCHAR2(32),
    QUANTITY                      NUMBER(32,4),
    TRY_QUANTITY                    NUMBER(32,4),
    UNIT                         VARCHAR2(32),
    RECEIVER_SYS_USER            VARCHAR2(32),
    RECEIVER_HR_DEPT             VARCHAR2(32),
    IS_CONSIGNMENT               VARCHAR2(16),
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

comment on table WMS_OUT_WAREHOUSE_BILL_SUB is '出库单子表';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.ID is '表id';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.REQUIREMENT_SUB_ID is '需求单子表ID';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.CONTRACT_SUB_CODE is '合同子号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.DISPATCH_CODE is '派工号，FO执行序列号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.PRODUCTION_CODE is '产品编码';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.WAREHOUSE_LOCATION_CODE  is '库位号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.PRODUCTION_TYPE is '产品类型';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.IS_PARENT is '是否为父件，0父件、1子件、2非父子件';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.PRODUCE_STATUS is '物料制造处理状态，produce 在制品，clout 余料，waste废料';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.PARENT_PRODUCTION_CODE is '父产品编码';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.PROJECT_CODE is '项目编码';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.BRAND is '牌号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.SPECIFICATIONS is '规格';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.PRODUCTION_LEVEL is '状态/级别/型号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.TECHNICAL_CONDITIONS is '项目编码';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.ADDITIONAL_TECHNICAL_CONDITIONS is '附加技术条件';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.DRAW_CODE is '图号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.THREE_PERIOD_CODE is '三期代码';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.MANUFACTURE_DATE   is '生产日期';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.EXPIRATION_DATE is '过期日期';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.BATCH           is '批次号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.SPLYSOT_CODE    is '炉批号或小号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.AIRCRAFT_CODE   is '机型';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.SORTIE_CODE     is '架次';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.MODEL_CODE    is '版号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.CONSTRUCTION_CODE is '构型号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.QUALITY_STATUS     is '质检状态';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.QUALITY_CODE     is '质量编号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.STATUS              is '状态';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.CERTIFICATE_NO              is '合格证号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.SUPPLY_CERTIFICATE_NO  is '供方合格证号';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.QUANTITY  is '数量';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.TRY_QUANTITY      is '试料数量';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.UNIT                  is '主单位';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.RECEIVER_SYS_USER      is '接收人';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.RECEIVER_HR_DEPT        is '接收部门';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.DETAILS                   is '备注';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.CREATED_BY is '创建人';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.CREATED_DATE is '创建时间';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.DELETED_BY is '删除人';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.DELETED_DATE is '删除时间';
comment on column WMS_OUT_WAREHOUSE_BILL_SUB.IS_DELETED is '是否删除，0为删除，1已经产出';

create table CONFIG_OUT_WAREHOUSE
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint CONFIG_OUT_WAREHOUSE primary key,
    CONFIG_CODE     VARCHAR2(32) not null,
    WAREHOUSE_CODE         VARCHAR2(32) not null,
    WAREHOUSE_WORK_CODE  VARCHAR2(32) not null,
    WAREHOUSE_DEAL_CODE VARCHAR2(32),
    NEED_PRODUCTION_STATUS VARCHAR2(32),
    NEED_QUALITY      VARCHAR2(16),
    STATUS             VARCHAR2(16),
    VERSION            VARCHAR(32),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table CONFIG_OUT_WAREHOUSE is '出库业务配置';
comment on column CONFIG_OUT_WAREHOUSE.ID is '表id';
comment on column CONFIG_OUT_WAREHOUSE.CONFIG_CODE is '配置编号';
comment on column CONFIG_OUT_WAREHOUSE.WAREHOUSE_CODE is '库房编码';
comment on column CONFIG_OUT_WAREHOUSE.WAREHOUSE_WORK_CODE is '处理事务编号';
comment on column CONFIG_OUT_WAREHOUSE.WAREHOUSE_DEAL_CODE is '处理流程编号';
comment on column CONFIG_OUT_WAREHOUSE.NEED_PRODUCTION_STATUS is '需要的物料状态，如果有多个请配置多条';
comment on column CONFIG_OUT_WAREHOUSE.NEED_QUALITY is '是否需要质检';
comment on column CONFIG_OUT_WAREHOUSE.STATUS  is '配置状态';
comment on column CONFIG_OUT_WAREHOUSE.VERSION is '版本';
comment on column CONFIG_OUT_WAREHOUSE.CREATED_BY is '创建人';
comment on column CONFIG_OUT_WAREHOUSE.CREATED_DATE is '创建时间';
comment on column CONFIG_OUT_WAREHOUSE.LAST_UPDATED_BY is '最后跟新人';
comment on column CONFIG_OUT_WAREHOUSE.LAST_UPDATED_DATE is '最后更新时间';
comment on column CONFIG_OUT_WAREHOUSE.DELETED_BY is '删除人';
comment on column CONFIG_OUT_WAREHOUSE.DELETED_DATE is '删除时间';
comment on column CONFIG_OUT_WAREHOUSE.IS_DELETED is '是否删除，0为删除，1已经产出';

create table CONFIG_SEPC_OUT_WAREHOUSE
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint CONFIG_SEPC_OUT_WAREHOUSE primary key,
    CONFIG_CODE     VARCHAR2(32) not null,
    WAREHOUSE_CODE         VARCHAR2(32) not null,
    WAREHOUSE_WORK_CODE  VARCHAR2(32) not null,
    WAREHOUSE_DEAL_CODE VARCHAR2(32),
    PRODUCTION_CODE    VARCHAR2(32),
    NEED_PRODUCTION_STATUS_LEVEL VARCHAR2(32),
    NEED_QUALITY      VARCHAR2(16),
    STATUS             VARCHAR2(16),
    VERSION            VARCHAR(32),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table CONFIG_SEPC_OUT_WAREHOUSE is '出库业务配置';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.ID is '表id';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.CONFIG_CODE is '配置编号';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.WAREHOUSE_CODE is '库房编码';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.PRODUCTION_CODE is '物料编码';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.WAREHOUSE_WORK_CODE is '处理事务编号';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.WAREHOUSE_DEAL_CODE is '处理流程编号';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.NEED_PRODUCTION_STATUS_LEVEL is '至少需要库存状态级别';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.NEED_QUALITY is '是否需要质检';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.STATUS  is '配置状态';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.CREATED_BY is '创建人';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.LAST_UPDATED_BY is '最后修改人';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.VERSION is '版本';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.CREATED_BY is '创建人';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.CREATED_DATE is '创建时间';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.LAST_UPDATED_BY is '最后跟新人';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.LAST_UPDATED_DATE is '最后更新时间';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.DELETED_BY is '删除人';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.DELETED_DATE is '删除时间';
comment on column CONFIG_SEPC_OUT_WAREHOUSE.IS_DELETED is '是否删除，0为删除，1已经产出';
