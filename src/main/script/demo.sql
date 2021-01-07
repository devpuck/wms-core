create table ORG_USER
(ID NUMBER(11) GENERATED BY DEFAULT AS IDENTITY constraint PK_ORG_USER primary key,
 USER_KEY VARCHAR2(32) not null,
 USER_NAME VARCHAR2(30) not null,
 USER_PASSWORD VARCHAR2(100) not null,
 EMPLOYEE_NO VARCHAR2(30) not null,
 CREATED_BY VARCHAR2(32) not null,
 CREATED_DATE DATE not null,
 LAST_UPDATED_BY VARCHAR2(32) not null,
 LAST_UPDATED_DATE DATE not null ,
 DELETED_BY VARCHAR2(2),
 DELETED_DATE DATE,
 IS_DELETED NUMBER(2) not null);

comment on table ORG_USER is '用户登录信息表';
comment on column ORG_USER.ID is '用户ID';
comment on column ORG_USER.USER_KEY is '关联APPSYS.SYS_USER表USER_ID';
comment on column ORG_USER.USER_NAME is '用户登录名，只能是数字和字符';
comment on column ORG_USER.USER_PASSWORD is '用户登录密码';
comment on column ORG_USER.EMPLOYEE_NO is '员工号';
comment on column ORG_USER.CREATED_BY is '创建人';
comment on column ORG_USER.CREATED_DATE is '创建时间';
comment on column ORG_USER.LAST_UPDATED_BY is '最后修改人';
comment on column ORG_USER.LAST_UPDATED_DATE is '最后修改时间';
comment on column ORG_USER.DELETED_BY is '删除人';
comment on column ORG_USER.DELETED_DATE is '删除时间';
comment on column ORG_USER.IS_DELETED is '是否删除：0-未删除，1-已删除';

ALTER TABLE ORG_USER MODIFY CREATED_DATE DEFAULT SYSDATE;
ALTER TABLE ORG_USER MODIFY LAST_UPDATED_DATE DEFAULT SYSDATE;
ALTER TABLE ORG_USER MODIFY IS_DELETED DEFAULT 0;

f