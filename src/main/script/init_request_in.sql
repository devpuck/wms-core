create table WMS_IN_REQUIREMENT
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_IN_REQUIREMENT primary key,
    REQUIREMENT_CODE   VARCHAr2(32),
    WAREHOUSE_CODE     VARCHAR2(32),
    ORIGINAL_ORDER_ID  VARCHAR2(32) not null,
    ORIGINAL_FROM      VARCHAR2(16) not null,
    ORIGINAL_CODE      VARCHAR2(32),
    ORIGINAL_TYPE      VARCHAR2(16),
    REQUIREMENT_TYPE   VARCHAR2(16),
    CONTRACT_CODE      VARCHAR2(32),
    SUPPLIER_ID        VARCHAR2(32),
    SUPPLIER_TYPE      VARCHAR2(32),
    SUPPLIER_NAME      VARCHAR2(64),
    SUPPLIER_ADDRESS   VARCHAR2(2000),
    DELIVER_TYPE       VARCHAR2(32),
    DELIVER_DATE       DATE,
    APPLY_SYS_USER     VARCHAR2(32),
    APPLY_HR_DEPT      VARCHAR2(32),
    APPLY_DATE         DATE,
    NOTE               VARCHAR2(4000),
    STATUS             VARCHAR2(32) default 'create',
    VERSION            VARCHAR(32),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_IN_REQUIREMENT is '入库需求表';
comment on column WMS_IN_REQUIREMENT.ID is '表id';
comment on column WMS_IN_REQUIREMENT.REQUIREMENT_CODE is '需求编号，自动生成';
comment on column WMS_IN_REQUIREMENT.WAREHOUSE_CODE is '库房编号';
comment on column WMS_IN_REQUIREMENT.ORIGINAL_ORDER_ID is '原始单据ID';
comment on column WMS_IN_REQUIREMENT.ORIGINAL_FROM is '原始单据来源，sale:采购、ames:装配mes、emes:零件mes、wms:统一库房自提';
comment on column WMS_IN_REQUIREMENT.ORIGINAL_CODE is '原始单据编码';
comment on column WMS_IN_REQUIREMENT.REQUIREMENT_TYPE is '需求入库类型，对应之前事务';
comment on column WMS_IN_REQUIREMENT.ORIGINAL_TYPE is '原始单据类型,统一数据库事务对应对子集，如合同到货、紧急到货';
comment on column WMS_IN_REQUIREMENT.CONTRACT_CODE is '合同号';
comment on column WMS_IN_REQUIREMENT.SUPPLIER_ID is '提供者ID';
comment on column WMS_IN_REQUIREMENT.SUPPLIER_TYPE is '提供者类型，supplier 供应商，workshop 生产车间';
comment on column WMS_IN_REQUIREMENT.SUPPLIER_NAME is '提供者名字，采购为供应商，生产部门为生产部门名字';
comment on column WMS_IN_REQUIREMENT.SUPPLIER_ADDRESS is '发货地址，采购为供应商地址，生产为车间地址';
comment on column WMS_IN_REQUIREMENT.DELIVER_TYPE is '到货单类型（普通发货、军品发货、转包品发货、修理品发货)';
comment on column WMS_IN_REQUIREMENT.DELIVER_DATE is '到货日期';
comment on column WMS_IN_REQUIREMENT.APPLY_SYS_USER is '申请人';
comment on column WMS_IN_REQUIREMENT.APPLY_HR_DEPT is '申请部门';
comment on column WMS_IN_REQUIREMENT.APPLY_DATE is '申请日期';
comment on column WMS_IN_REQUIREMENT.NOTE is '备注';
comment on column WMS_IN_REQUIREMENT.STATUS is '发货状态(已生成、已确认、部分出库、已完成、已关闭、已删除)';
comment on column WMS_IN_REQUIREMENT.VERSION is '版本';
comment on column WMS_IN_REQUIREMENT.CREATED_BY is '创建人';
comment on column WMS_IN_REQUIREMENT.CREATED_DATE is '创建时间';
comment on column WMS_IN_REQUIREMENT.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_IN_REQUIREMENT.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_IN_REQUIREMENT.DELETED_BY is '删除人';
comment on column WMS_IN_REQUIREMENT.DELETED_DATE is '删除时间';
comment on column WMS_IN_REQUIREMENT.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_IN_REQUIREMENT_SUB
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_DELIVER primary key,
    REQUIREMENT_CODE             VARCHAr2(32),
    ORIGINAL_ORDER_LIST_ID       VARCHAR2(32),
    ORIGINAL_SUB_CODE            VARCHAR2(32),
    CONTRACT_SUB_CODE            VARCHAR2(32),
    DISPATCH_CODE                VARCHAR2(32),
    PRODUCTION_CODE              VARCHAR2(32) not null,
    PRODUCTION_TYPE              VARCHAR2(16) ,
    IS_PARENT                    VARCHAR2(8) DEFAULT '2',
    PRODUCE_STATUS               VARCHAR2(16),
    PARENT_PRODUCTION_CODE       VARCHAR2(32),
    PROJECT_CODE                 VARCHAR2(32),
    BUY_PRICE                    NUMBER(32,4),
    PRICE_UNIT                   VARCHAR2(32),
    BUY_PRICE_PRECENT            NUMBER(32,4),
    BRAND                        VARCHAR2(32),
    SPECIFICATIONS               VARCHAR2(32),
    PRODUCTION_LEVEL              VARCHAR2(32),
    TECHNICAL_CONDITIONS         VARCHAR2(64),
    ADDITIONAL_TECHNICAL_CONDITIONS VARCHAR2(64),
    DRAW_CODE                    VARCHAR2(32),
    THREE_PERIOD_CODE            VARCHAR2(32),
    MANUFACTURE_DATE            DATE,
    EXPIRATION_DATE              DATE,
    BATCH                        VARCHAR2(32),
    SPLYSOT_CODE                 VARCHAR2(200),
    AIRCRAFT_CODE                VARCHAR2(64),
    SORTIE_CODE                  VARCHAR2(64),
    MODEL_CODE                   VARCHAR2(64),
    CONSTRUCTION_CODE            VARCHAR2(64),
    QUALITY_CODE                 VARCHAR2(64),
    QUALITY_STATUS               VARCHAR2(32),
    STATUS                       VARCHAR2(32) default 'create',
    CERTIFICATE_NO               VARCHAR2(32),
    SUPPLY_CERTIFICATE_NO         VARCHAR2(32),
    REQUIREMENT_QUANTITY         NUMBER(32,4),
    RECEIVE_QUANTITY             NUMBER(32,4),
    TRY_QUANTITY                 NUMBER(32,4),
    UNIT                         VARCHAR2(32),
    RECEIVER_SYS_USER            VARCHAR2(32),
    RECEIVER_HR_DEPT             VARCHAR2(32),
    IS_CONSIGNMENT               VARCHAR2(16),
    PRODUCTION_SIZE              VARCHAR2(32),
    SUPPLIER_TYPE                VARCHAR2(32),
    SUPPLIER_BY                  VARCHAR2(64),
    WEIGHT                       NUMBER(32,4),
    WEIGHT_UNIT                  VARCHAR2(32),
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

comment on table WMS_IN_REQUIREMENT_SUB is '入库需求子表';
comment on column WMS_IN_REQUIREMENT_SUB.ID is '表id';
comment on column WMS_IN_REQUIREMENT_SUB.REQUIREMENT_CODE is '需求编号，自动生成';
comment on column WMS_IN_REQUIREMENT_SUB.ORIGINAL_ORDER_LIST_ID is '原始子表ID,如果存在的话';
comment on column WMS_IN_REQUIREMENT_SUB.ORIGINAL_SUB_CODE is '原始单据子号';
comment on column WMS_IN_REQUIREMENT_SUB.CONTRACT_SUB_CODE is '合同子号';
comment on column WMS_IN_REQUIREMENT_SUB.DISPATCH_CODE is '派工号，FO执行序列号';
comment on column WMS_IN_REQUIREMENT_SUB.PRODUCTION_CODE is '产品编码';
comment on column WMS_IN_REQUIREMENT_SUB.PRODUCTION_TYPE is '产品类型';
comment on column WMS_IN_REQUIREMENT_SUB.IS_PARENT is '是否为父件，0父件、1子件、2非父子件';
comment on column WMS_IN_REQUIREMENT_SUB.PRODUCE_STATUS    is '物料制造处理状态，produce 在制品，clout 余料，waste废料';
comment on column WMS_IN_REQUIREMENT_SUB.PARENT_PRODUCTION_CODE is '父产品编码';
comment on column WMS_IN_REQUIREMENT_SUB.PROJECT_CODE is '项目编码';
comment on column WMS_IN_REQUIREMENT_SUB.BUY_PRICE is '采购价格';
comment on column WMS_IN_REQUIREMENT_SUB.BUY_PRICE_PRECENT is '均摊比例，只在成品中使用，如果大于0，则为成品均摊计价';
comment on column WMS_IN_REQUIREMENT_SUB.BRAND is '牌号';
comment on column WMS_IN_REQUIREMENT_SUB.SPECIFICATIONS is '规格';
comment on column WMS_IN_REQUIREMENT_SUB.PRODUCTION_LEVEL is '状态/级别/型号';
comment on column WMS_IN_REQUIREMENT_SUB.TECHNICAL_CONDITIONS is '项目编码';
comment on column WMS_IN_REQUIREMENT_SUB.ADDITIONAL_TECHNICAL_CONDITIONS is '附加技术条件';
comment on column WMS_IN_REQUIREMENT_SUB.DRAW_CODE is '图号';
comment on column WMS_IN_REQUIREMENT_SUB.THREE_PERIOD_CODE is '三期代码';
comment on column WMS_IN_REQUIREMENT_SUB.MANUFACTURE_DATE   is '生产日期';
comment on column WMS_IN_REQUIREMENT_SUB.EXPIRATION_DATE is '过期日期';
comment on column WMS_IN_REQUIREMENT_SUB.BATCH           is '批次号';
comment on column WMS_IN_REQUIREMENT_SUB.SPLYSOT_CODE    is '炉批号或小号';
comment on column WMS_IN_REQUIREMENT_SUB.AIRCRAFT_CODE   is '机型';
comment on column WMS_IN_REQUIREMENT_SUB.SORTIE_CODE     is '架次';
comment on column WMS_IN_REQUIREMENT_SUB.MODEL_CODE    is '版号';
comment on column WMS_IN_REQUIREMENT_SUB.CONSTRUCTION_CODE is '构型号';
comment on column WMS_IN_REQUIREMENT_SUB.QUALITY_STATUS     is '质检状态';
comment on column WMS_IN_REQUIREMENT_SUB.QUALITY_CODE     is '质量编号';
comment on column WMS_IN_REQUIREMENT_SUB.STATUS              is '需求状态';
comment on column WMS_IN_REQUIREMENT_SUB.CERTIFICATE_NO              is '合格证号';
comment on column WMS_IN_REQUIREMENT_SUB.SUPPLY_CERTIFICATE_NO  is '供方合格证号';
comment on column WMS_IN_REQUIREMENT_SUB.REQUIREMENT_QUANTITY  is '需求数量';
comment on column WMS_IN_REQUIREMENT_SUB.RECEIVE_QUANTITY      is '接收数量';
comment on column WMS_IN_REQUIREMENT_SUB.TRY_QUANTITY      is '试料数量';
comment on column WMS_IN_REQUIREMENT_SUB.UNIT                  is '主单位';
comment on column WMS_IN_REQUIREMENT_SUB.RECEIVER_SYS_USER      is '接收人';
comment on column WMS_IN_REQUIREMENT_SUB.RECEIVER_HR_DEPT        is '接收部门';
comment on column WMS_IN_REQUIREMENT_SUB.IS_CONSIGNMENT           is '是否寄售';
comment on column WMS_IN_REQUIREMENT_SUB.DETAILS                   is '备注';
comment on column WMS_IN_REQUIREMENT_SUB.CREATED_BY is '创建人';
comment on column WMS_IN_REQUIREMENT_SUB.CREATED_DATE is '创建时间';
comment on column WMS_IN_REQUIREMENT_SUB.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_IN_REQUIREMENT_SUB.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_IN_REQUIREMENT_SUB.DELETED_BY is '删除人';
comment on column WMS_IN_REQUIREMENT_SUB.DELETED_DATE is '删除时间';
comment on column WMS_IN_REQUIREMENT_SUB.IS_DELETED is '是否删除，0为删除，1已经产出';
comment on column WMS_IN_REQUIREMENT_SUB.SUPPLIER_TYPE  is '提供者类型';
comment on column WMS_IN_REQUIREMENT_SUB.SUPPLIER_BY  is '提供者';
comment on column WMS_IN_REQUIREMENT_SUB.WEIGHT                is '重量';
comment on column WMS_IN_REQUIREMENT_SUB.WEIGHT_UNIT                is '重量单位';
comment on column WMS_IN_REQUIREMENT_SUB.PRODUCTION_SIZE is '物料尺寸，本身为物料属性，此处尺寸仅仅在物料状态为余料时有效';

create table WMS_OUT_REQUIREMENT
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint PK_WMS_OUT_REQUIREMENT primary key,
    REQUIREMENT_CODE             VARCHAr2(32),
    ORIGINAL_ORDER_ID  VARCHAR2(32),
    ORIGINAL_FROM      VARCHAR2(16),
    REQUIREMENT_TYPE   VARCHAR2(16),
    WAREHOUSE_CODE     VARCHAR2(32),
    ORIGINAL_TYPE           VARCHAR2(16),
    ORIGINAL_CODE        VARCHAR2(32),
    REQUIREMENT_ORGANIZATION_TYPE VARCHAR2(16),
    REQUIREMENT_DEPT_ID     VARCHAR2(32),
    REQUIREMENT_DEPT_NAME   VARCHAR2(64),
    REQUIREMENT_USER_ID     VARCHAR2(32),
    REQUIREMENT_USER_NAME   VARCHAR2(32),
    REQUIREMENT_ADDRESS   VARCHAR2(2000),
    APPLY_OUT_DATE       DATE,
    APPLY_SYS_USER     VARCHAR2(32),
    APPLY_HR_DEPT      VARCHAR2(32),
    APPLY_DATE           DATE,
    NOTE                 VARCHAR2(4000),
    STATUS               VARCHAR2(32) default 'create',
    VERSION              VARCHAR(32),
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_OUT_REQUIREMENT is '出库需求表';
comment on column WMS_OUT_REQUIREMENT.ID is '表id';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_CODE is '需求编号，自动生成';
comment on column WMS_OUT_REQUIREMENT.ORIGINAL_ORDER_ID is '原始单据ID';
comment on column WMS_OUT_REQUIREMENT.ORIGINAL_CODE is '原始单据编号';
comment on column WMS_OUT_REQUIREMENT.ORIGINAL_FROM is '原始单据来源，sale:采购、ames:装配mes、emes:零件mes、wms:统一库房自提';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_TYPE is '出库需求类型';
comment on column WMS_OUT_REQUIREMENT.ORIGINAL_TYPE is '原始单据类型';
comment on column WMS_OUT_REQUIREMENT.ORIGINAL_CODE is '原始单据编码';
comment on column WMS_OUT_REQUIREMENT.WAREHOUSE_CODE          is '库房编码';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_ORGANIZATION_TYPE is '需求组织类型，对外销售公司，内部';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_DEPT_ID is '需求部门ID';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_DEPT_NAME is '需求部门名称';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_USER_ID is '领用人';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_USER_NAME is '领用人名称';
comment on column WMS_OUT_REQUIREMENT.REQUIREMENT_ADDRESS is '领用地址';
comment on column WMS_OUT_REQUIREMENT.APPLY_OUT_DATE is '申请时间';
comment on column WMS_OUT_REQUIREMENT.APPLY_SYS_USER is '申请人';
comment on column WMS_OUT_REQUIREMENT.APPLY_HR_DEPT is '申请部门';
comment on column WMS_OUT_REQUIREMENT.APPLY_DATE is '申请时间';
comment on column WMS_OUT_REQUIREMENT.NOTE is '备注';
comment on column WMS_OUT_REQUIREMENT.STATUS is '状态(已生成、已确认、部分出库、已完成、已关闭)';
comment on column WMS_OUT_REQUIREMENT.VERSION is '版本';
comment on column WMS_OUT_REQUIREMENT.CREATED_BY is '创建人';
comment on column WMS_OUT_REQUIREMENT.CREATED_DATE is '创建时间';
comment on column WMS_OUT_REQUIREMENT.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_OUT_REQUIREMENT.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_OUT_REQUIREMENT.DELETED_BY is '删除人';
comment on column WMS_OUT_REQUIREMENT.DELETED_DATE is '删除时间';
comment on column WMS_OUT_REQUIREMENT.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_OUT_REQUIREMENT_SUB
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_OUT_REQUIREMENT_SUB primary key,
    REQUIREMENT_CODE             VARCHAr2(32),
    ORIGINAL_ORDER_LIST_ID       VARCHAR2(32),
    PRODUCTION_CODE              VARCHAR2(32) not null,
    PARENT_PRODUCTION_CODE       VARCHAR2(32),
    IS_PARENT                    VARCHAR2(8) DEFAULT '2',
    PRODUCE_STATUS               VARCHAR2(16),
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
    BATCH                        VARCHAR2(64),
    CONSTRUCTION_CODE            VARCHAR2(64),
    MODEL_CODE                   VARCHAR2(32),
    SPLYSOT_CODE                 VARCHAR2(200),
    AIRCRAFT_CODE                VARCHAR2(64),
    SORTIE_CODE                  VARCHAR2(64),
    VERSION_CODE                 VARCHAR2(64),
    QUALITY_STATUS               VARCHAR2(32),
    STATUS                       VARCHAR2(32) default 'create',
    REQUIREMENT_QUANTITY         NUMBER(32,4),
    APPLY_QUANTITY               NUMBER(32,4),
    TRY_QUANTITY                 NUMBER(32,4),
    WAREHOUSE_LOCATION_CODE      VARCHAR2(32),
    UNIT                         VARCHAR2(32),
    RECEIVER_SYS_USER            VARCHAR2(32),
    RECEIVER_HR_DEPT             VARCHAR2(32),
    CERTIFICATE_NO               VARCHAR2(32),
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

comment on table WMS_OUT_REQUIREMENT_SUB is '出库需求子表';
comment on column WMS_OUT_REQUIREMENT_SUB.ID is '表id';
comment on column WMS_OUT_REQUIREMENT_SUB.REQUIREMENT_CODE is '需求编号，自动生成';
comment on column WMS_OUT_REQUIREMENT_SUB.ORIGINAL_ORDER_LIST_ID is '原始子表ID,如果存在的话';
comment on column WMS_OUT_REQUIREMENT_SUB.PRODUCTION_CODE is '产品编码';
comment on column WMS_OUT_REQUIREMENT_SUB.PARENT_PRODUCTION_CODE is '父产品编码';
comment on column WMS_OUT_REQUIREMENT_SUB.IS_PARENT is '是否为父件，0父件、1子件、2非父子件';
comment on column WMS_OUT_REQUIREMENT_SUB.PRODUCE_STATUS is '物料制造处理状态，produce 在制品，clout 余料，waste废料';
comment on column WMS_OUT_REQUIREMENT_SUB.PROJECT_CODE is '项目编码';
comment on column WMS_OUT_REQUIREMENT_SUB.SPECIFICATIONS is '规格';
comment on column WMS_OUT_REQUIREMENT_SUB.PRODUCTION_LEVEL is '状态/级别/型号';
comment on column WMS_OUT_REQUIREMENT_SUB.TECHNICAL_CONDITIONS is '项目编码';
comment on column WMS_OUT_REQUIREMENT_SUB.ADDITIONAL_TECHNICAL_CONDITIONS is '附加技术条件';
comment on column WMS_OUT_REQUIREMENT_SUB.DRAW_CODE is '图号';
comment on column WMS_OUT_REQUIREMENT_SUB.THREE_PERIOD_CODE is '三期代码';
comment on column WMS_OUT_REQUIREMENT_SUB.MANUFACTURE_DATE   is '生产日期';
comment on column WMS_OUT_REQUIREMENT_SUB.EXPIRATION_DATE is '过期日期';
comment on column WMS_OUT_REQUIREMENT_SUB.BATCH           is '批次';
comment on column WMS_OUT_REQUIREMENT_SUB.SPLYSOT_CODE    is '炉批号或小号';
comment on column WMS_OUT_REQUIREMENT_SUB.AIRCRAFT_CODE   is '机型';
comment on column WMS_OUT_REQUIREMENT_SUB.SORTIE_CODE     is '架次';
comment on column WMS_OUT_REQUIREMENT_SUB.MODEL_CODE    is '版号';
comment on column WMS_OUT_REQUIREMENT_SUB.CONSTRUCTION_CODE is '构型号';
comment on column WMS_OUT_REQUIREMENT_SUB.QUALITY_STATUS     is '质检状态';
comment on column WMS_OUT_REQUIREMENT_SUB.REQUIREMENT_QUANTITY  is '需求数量';
comment on column WMS_OUT_REQUIREMENT_SUB.APPLY_QUANTITY      is '批料数量';
comment on column WMS_OUT_REQUIREMENT_SUB.TRY_QUANTITY      is '试料数量';
comment on column WMS_OUT_REQUIREMENT_SUB.UNIT                  is '主单位';
comment on column WMS_OUT_REQUIREMENT_SUB.WAREHOUSE_LOCATION_CODE    is '库位号';
comment on column WMS_OUT_REQUIREMENT_SUB.RECEIVER_SYS_USER      is '接收人';
comment on column WMS_OUT_REQUIREMENT_SUB.RECEIVER_HR_DEPT        is '接收部门';
comment on column WMS_OUT_REQUIREMENT_SUB.CERTIFICATE_NO              is '合格证号';
comment on column WMS_OUT_REQUIREMENT_SUB.DETAILS                   is '备注';
comment on column WMS_OUT_REQUIREMENT_SUB.CREATED_BY is '创建人';
comment on column WMS_OUT_REQUIREMENT_SUB.CREATED_DATE is '创建时间';
comment on column WMS_OUT_REQUIREMENT_SUB.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_OUT_REQUIREMENT_SUB.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_OUT_REQUIREMENT_SUB.DELETED_BY is '删除人';
comment on column WMS_OUT_REQUIREMENT_SUB.DELETED_DATE is '删除时间';
comment on column WMS_OUT_REQUIREMENT_SUB.IS_DELETED is '是否删除，0为删除，1已经产出';