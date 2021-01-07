create table WMS_INVENTORY_WAREHOUSE_BILL
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_IN_WAREHOUSE_BILL primary key,
    BILL_CODE          VARCHAR2(32),
    WAREHOUSE_CODE     VARCHAR2(32),
    INVENTORY_TYPE     VARCHAR2(8),
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
comment on table WMS_INVENTORY_WAREHOUSE_BILL is '盘点表';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.ID is '表id';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.WAREHOUSE_CODE is '库房编号';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.BILL_CODE is '单据编号';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.INVENTORY_TYPE is '盘点类型';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.STATUS is '状态';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.NOTE                   is '备注';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.CREATED_BY is '创建人';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.CREATED_DATE is '创建时间';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.DELETED_BY is '删除人';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.DELETED_DATE is '删除时间';
comment on column WMS_INVENTORY_WAREHOUSE_BILL.IS_DELETED is '是否删除，0为删除，1已经产出';

create table WMS_INVENTORY_WAREHOUSE_BILL_SUB
(
    ID NUMBER(32) GENERATED BY DEFAULT AS IDENTITY constraint WMS_INVENTORY_WAREHOUSE_BILL_SUB primary key,
    ACCOUNT_ID                   VARCHAR2(32),
    BILL_CODE                    VARCHAR2(32),
    CHANGE_QUANTITY              NUMBER(32,4),
    CHANGE_TYPE                  VARCHAR2(16),
    INVENTORY_PERSON             VARCHAR2(32),
    INVENTORY_TIME               DATE DEFAULT SYSDATE,
    CREATED_BY        VARCHAR2(32),
    CREATED_DATE      DATE       default SYSDATE not null,
    LAST_UPDATED_BY   VARCHAR2(32),
    LAST_UPDATED_DATE DATE       default SYSDATE not null,
    DELETED_BY        VARCHAR2(32),
    DELETED_DATE      DATE,
    IS_DELETED        NUMBER(2)  default 0       not null
);

comment on table WMS_INVENTORY_WAREHOUSE_BILL_SUB is '盘点明细表';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.ID is '表id';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.ACCOUNT_ID is '台账ID';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.BILL_CODE is '单据编号';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.CHANGE_QUANTITY is '编号数量';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.CHANGE_TYPE is '盘盈、盘亏';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.INVENTORY_PERSON is '盘点人';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.INVENTORY_TIME is '盘点时间';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.CREATED_BY is '创建人';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.CREATED_DATE is '创建时间';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.LAST_UPDATED_BY is '最后跟新人';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.LAST_UPDATED_DATE is '最后更新时间';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.DELETED_BY is '删除人';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.DELETED_DATE is '删除时间';
comment on column WMS_INVENTORY_WAREHOUSE_BILL_SUB.IS_DELETED is '是否删除，0为删除，1已经产出';