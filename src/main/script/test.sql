-- 物料表
-- auto-generated definition
create table MDS_ITEM
(
    ID                            VARCHAR2(32) not null,
    ITEM_CODE                     VARCHAR2(100),
    ITEM_NAME                     VARCHAR2(256),
    MARQUE                        VARCHAR2(256),
    MAIN_HR_DEPT_ID               VARCHAR2(32),
    MDS_ITEM_CLASS_ID             VARCHAR2(32),
    ITEM_USE                      VARCHAR2(1),
    SPECS                         VARCHAR2(256),
    DRAWING_CODE                  VARCHAR2(256),
    PRODUCT_TYPE                  VARCHAR2(50),
    PRODUCT_ALIAS                 VARCHAR2(50),
    ITEM_REVISION                 VARCHAR2(300),
    MDS_ITEM_STATUS_ID            VARCHAR2(32),
    SOURCE_TYPE                   VARCHAR2(2),
    GT_CODE                       VARCHAR2(256),
    MDS_UNIT_ID                   VARCHAR2(32),
    WEIGHT                        NUMBER(16),
    W_MDS_UNIT_ID                 VARCHAR2(32),
    TECH_CONDITION                VARCHAR2(256),
    DELIVERY_STATUS               VARCHAR2(256),
    REQ_TYPE                      VARCHAR2(1),
    OEM_SUPPLY_FLAG               VARCHAR2(1),
    FUNC_CLASS                    VARCHAR2(1),
    MPS_PROJECT_FLAG              VARCHAR2(1),
    MPS_MODE                      VARCHAR2(1),
    ORDER_POINT                   NUMBER(20, 7),
    ORDER_POLICY_CODE             VARCHAR2(1),
    ORDER_POINT_LT                NUMBER(16),
    BATCH_QTY                     NUMBER(16),
    BATCH_QTY_POLICY              VARCHAR2(1),
    BATCH_LOT_MERGE_FLAG          VARCHAR2(1),
    AVG_BATCH_QTY                 NUMBER(16),
    BATCH_MODE                    VARCHAR2(1),
    ARP_FLAG                      VARCHAR2(1),
    PLAN_UNITE_TYPE               VARCHAR2(1),
    EVENT_DRIVE_FLAG              VARCHAR2(1),
    KEY_FLAG                      VARCHAR2(2),
    CONTROL_WAY                   VARCHAR2(3),
    STOCK_AREA_DIFF_FLAG          VARCHAR2(1),
    SUB_COTYPE_FLAG               VARCHAR2(1),
    WO_LEVEL                      VARCHAR2(1),
    WO_END_FLAG                   VARCHAR2(1),
    AA_PLANNER                    VARCHAR2(16),
    INV_OUT_AUDIT_TYPE            VARCHAR2(1),
    INV_OUT_QTY                   NUMBER(16),
    PK_FLAG                       VARCHAR2(1),
    PLAN_BALANCE_FLAG             VARCHAR2(1),
    MAKE_SPEED                    NUMBER(16),
    PLAN_CUM_LT                   NUMBER(16),
    MIN_REINPUT_TIME              NUMBER(16),
    ALOC_LT                       NUMBER(16),
    SAF_LT                        NUMBER(16),
    PLAN_C_LT                     NUMBER(23, 7),
    PLAN_V_LT                     NUMBER(23, 7),
    THEORY_C_LT                   NUMBER(16),
    THEORY_V_LT                   NUMBER(16),
    STD_CUM_LT                    NUMBER(16),
    CUM_LEAD_TIME_RECAL_FLAG      VARCHAR2(1),
    PROCURE_CHECK_CYCLE           NUMBER(16),
    AVG_UTL_RATIO                 NUMBER(16),
    SCRAP_RATE                    NUMBER(6, 5),
    AVG_CHECK_VALID_RATIO         NUMBER(5),
    ALL_ASSEM_LT                  NUMBER(16),
    SAFETY_STOCK                  NUMBER(16),
    OFFSET                        NUMBER(16),
    APP_PRODUCT_CODE              VARCHAR2(500),
    CREATED_BY                    VARCHAR2(32),
    CREATION_DATE                 DATE,
    LAST_UPDATED_BY               VARCHAR2(32),
    LAST_UPDATE_DATE              DATE,
    LAST_UPDATE_IP                VARCHAR2(20),
    VERSION                       NUMBER(16),
    SHOP_ROUTE                    VARCHAR2(500),
    TOOL_TYPE                     VARCHAR2(1),
    TOOL_ID_CTL_FLAG              VARCHAR2(1),
    TOOL_QUALITY_CTL_FLAG         VARCHAR2(1),
    CHECK_TYPE                    VARCHAR2(100),
    CHECK_CYCLE                   NUMBER(8),
    CHK_PERIOD_TYPE               VARCHAR2(1),
    CHK_HR_DEPT_ID                VARCHAR2(32),
    FIX_HR_DEPT_ID                VARCHAR2(32),
    MAX_STOCK_QTY                 NUMBER(16),
    TOOL_HIGH_WASTE_FLAG          VARCHAR2(1),
    IN_HR_DEPT_ID                 VARCHAR2(32),
    PLANNED_PRICE                 NUMBER(20, 7),
    MANUFACTURE_IN_OUT_RATE       NUMBER(16, 4),
    MES_ITEM_SERIALNO_LENGTH      NUMBER(4),
    YN_DISPATCH                   VARCHAR2(1),
    YN_SUB_ITEM_ORDER             VARCHAR2(1),
    WMS_INV_THREE_PERIOD_ID       VARCHAR2(32),
    INV_ABC_CODE                  VARCHAR2(1),
    INV_PROPERTY_CODE             VARCHAR2(1),
    PICK_UP_CHECK_FLAG            VARCHAR2(1),
    INV_OUT_PRIORITY_FLAG         VARCHAR2(1),
    ALLOW_OVERSTOCK_PERIOD        NUMBER(10),
    CHECK_HOUR                    NUMBER(10, 3),
    CHECK_FEE                     NUMBER(10, 3),
    CHK_SYS_USER_ID               VARCHAR2(32),
    CHK_PLAN_TYPE                 VARCHAR2(1),
    ITEM_MANUFACTURE_FACTORY      VARCHAR2(100),
    ITEM_QUALITY_GRADE            VARCHAR2(100),
    ITEM_PHASE                    VARCHAR2(1000),
    MAX_LEVEL                     NUMBER(4),
    MES_CONTROL_STRATEGY_ID       VARCHAR2(32),
    MES_ITEM_ORDER_LENGTH         NUMBER(4),
    TOOL_CHECK_TYPE               VARCHAR2(2),
    TOOL_USEFUL_LIFE              NUMBER(8),
    TOOL_USEFUL_LIFE_UNIT_TYPE    VARCHAR2(1),
    TOOL_IS_RETURN                VARCHAR2(1),
    TOOL_PIECES_PER_SUIT          NUMBER(8),
    TOOL_ITEM_CODE                VARCHAR2(50),
    SEIALNO_MODE                  VARCHAR2(1),
    IS_SON_COUNT                  VARCHAR2(1),
    NOTE                          VARCHAR2(2000),
    WOLLENS_FLOAT_VALUE           NUMBER(20, 7),
    YN_INT                        VARCHAR2(1),
    INDENT_LEAST_QTY              NUMBER(20, 7),
    INDENT_MOST_QTY               NUMBER(20, 7),
    CHECK_LT                      NUMBER(20, 7),
    FOREIGN_TRADE_TYPE            VARCHAR2(32),
    CHECK_TIME_TYPE               VARCHAR2(32),
    CALCULATE_MARKER              VARCHAR2(32),
    ZOOM_MODULUS                  NUMBER(20, 7),
    MAKE_USE_OF                   NUMBER(20, 7),
    FILTER_REGULAR                NUMBER(20, 7),
    FILTER_MARKER                 VARCHAR2(32),
    AVERAGE_WASTAGE               NUMBER(20, 7),
    STORAGE_LT                    NUMBER(20, 7),
    INV_OUT_PRINCIPLE             VARCHAR2(32),
    HEAT_TREATMENT                VARCHAR2(64),
    MATERIAL_THICKNESS            NUMBER(20, 7),
    MATERIAL_LENGTH               NUMBER(20, 7),
    MATERIAL_WIDTH                NUMBER(20, 7),
    MATERIAL_DIAMETER             NUMBER(20, 7),
    MATERIAL_WALL                 NUMBER(20, 7),
    MATERIAL_OTHER                VARCHAR2(128),
    CHECK_TIMES                   NUMBER(20, 7),
    PUR_FLOW_FLAG                 VARCHAR2(32),
    MATERIAL_TYPE                 VARCHAR2(32),
    MATERIAL_CLASS                VARCHAR2(32),
    MATERIAL_GRADE                VARCHAR2(32),
    MATERIAL_FORM                 VARCHAR2(32),
    SIZE_MDS_UNIT_ID              VARCHAR2(32),
    CURRENCY_TYPE                 VARCHAR2(32),
    OUTER_TIME                    NUMBER(20),
    TIME_SENSE_FLAG               VARCHAR2(1),
    TOTAL_WASTE_RATE              NUMBER(20, 7),
    CONFIG_NO                     VARCHAR2(20),
    YN_LONG_PERIOD                VARCHAR2(1),
    YN_CRM_CUSTOMER_TYPE_CURRENCY VARCHAR2(2),
    YN_IN_INV                     VARCHAR2(2),
    MANUFACT_DIFFICULTY_LEVEL     VARCHAR2(2),
    YN_CHECK                      VARCHAR2(32),
    FINANCE_CLASS                 VARCHAR2(32),
    PK_WASTE_RATE                 NUMBER(16, 4),
    CHECK_AREA                    VARCHAR2(200),
    CHECK_PRECISION               VARCHAR2(200),
    STANDARD_TYPE                 VARCHAR2(32),
    STORE_TEMPERATURE             VARCHAR2(32),
    CHECK_FLAG                    VARCHAR2(1),
    ITEM_DEPT_ID                  VARCHAR2(32),
    ITEM_STUFF_DEPT               VARCHAR2(32),
    ITEM_DESIGN_DEPT              VARCHAR2(32),
    ITEM_DESIGN_MANAGER           VARCHAR2(32),
    ITEM_DESIGN_DUTYMAN           VARCHAR2(512),
    CHECK_WAY                     VARCHAR2(32),
    IMPORTS_FLAG                  VARCHAR2(2),
    ROUTE_NO                      VARCHAR2(64),
    ALL_USED_QTY                  NUMBER(20, 7),
    ALL_GRIND_QTY                 NUMBER(20, 7),
    YN_COST_PIECE                 VARCHAR2(1),
    YN_GENERAL                    VARCHAR2(20),
    QUOTA_TYPE                    VARCHAR2(32),
    QUOTA_STORE_UNIT_QUOTIENT     NUMBER(20, 7),
    UOI_QUOTA_TYPE                VARCHAR2(32),
    SPLY_UNIT                     VARCHAR2(32),
    UOP_TRANSFORM_QUOTIENT        NUMBER(20, 7),
    PURMG_FLAG                    VARCHAR2(1),
    AVG_MONTH_EXPEND_VOLUME       NUMBER(20, 7),
    FORGING_CLASS                 VARCHAR2(30),
    MAJOR_FLAG                    VARCHAR2(1),
    CONSIGNMENT_METERIAL_FLAG     VARCHAR2(1),
    THREE_PERIOD_FLAG             VARCHAR2(9),
    SPLY_DRIFT_QUOTIENT           NUMBER(20, 7),
    SPLY_CYCLE_DRIFT_VOLUME       NUMBER(20, 7),
    AVERAGE_EXPEND_VOLUME         NUMBER(20, 7),
    WMS_INV_UNIT                  VARCHAR2(32),
    PRICE_INDEX_PRO               NUMBER(20, 7),
    KEEP_ROLE_ASSIGN              VARCHAR2(32),
    ATTRIBUTE_01                  VARCHAR2(255),
    PLAN_DUTYMAN                  VARCHAR2(32),
    SPLY_DUTYMAN                  VARCHAR2(32),
    WMS_PLAN_DUTYMAN              VARCHAR2(32),
    SPLY_STORE_UNIT_QUOTIENT      NUMBER(20, 7),
    DEPTDESC                      VARCHAR2(100),
    ITEM_01                       VARCHAR2(100),
    ITEM_02                       VARCHAR2(100),
    ITEM_03                       VARCHAR2(100),
    ITEM_04                       VARCHAR2(100),
    ITEM_05                       VARCHAR2(100),
    ITEM_06                       VARCHAR2(100),
    ITEM_07                       VARCHAR2(100),
    ITEM_08                       VARCHAR2(100),
    ITEM_09                       VARCHAR2(100),
    ITEM_10                       VARCHAR2(100),
    PUR_PRICE                     NUMBER(20, 7),
    ITEM_UNIFORM_CODE             VARCHAR2(100),
    ECONOMIC_ORDER_QTY            NUMBER(20, 7),
    PROJECT_CODE                  VARCHAR2(100),
    LT_PLAN                       NUMBER(16),
    LT_PUR                        NUMBER(16),
    LT_STOCK_UP                   NUMBER(16),
    LT_TRANSPORT                  NUMBER(16),
    LT_RECEIVE                    NUMBER(16),
    LT_TEST                       NUMBER(16),
    LT_CHECK                      NUMBER(16),
    LT_DELIVERY                   NUMBER(16),
    MIN_STOCK_QTY                 NUMBER(20, 7),
    MIN_PACKAGE_QTY               NUMBER(20, 7),
    SRM_VENDOR_ID                 VARCHAR2(32),
    KIT_OUT_FLAG                  VARCHAR2(32),
    PRTNO                         VARCHAR2(256),
    MDS_ITEM_CODEBACK_DETAIL_ID   VARCHAR2(32),
    ESTIMATES_PRICE               NUMBER(20, 7),
    ITEM_PRICE_TYPE               VARCHAR2(8),
    ITEM_TYPE                     VARCHAR2(1)
)
/

comment on table MDS_ITEM is '物料表'
/

comment on column MDS_ITEM.ID is '表主键'
/

comment on column MDS_ITEM.ITEM_CODE is '物料号，用以标识一个制造对象项目的代号。物料包括产品、零件、各级组件和物资(原材料和外购件)'
/

comment on column MDS_ITEM.ITEM_NAME is '物料名称'
/

comment on column MDS_ITEM.MARQUE is '牌号，指国家标准规定的或供应商提供的商品型号'
/

comment on column MDS_ITEM.MAIN_HR_DEPT_ID is '自制件完成主要形状加工或装配或性能转变的生产部门'
/

comment on column MDS_ITEM.MDS_ITEM_CLASS_ID is '用于统计和分析的物料按特征或功能的分类'
/

comment on column MDS_ITEM.ITEM_USE is '物料用途，直接物料：D--用于可销售商品制造的物料。间接物料：N--不直接与最终可销售产品的生产过程相关的物料，如办公室补给、清洁用品和环境解决'
/

comment on column MDS_ITEM.SPECS is '规格'
/

comment on column MDS_ITEM.DRAWING_CODE is '图号'
/

comment on column MDS_ITEM.PRODUCT_TYPE is '产品型号,自制件对企业外部的商品型号。只有可销售的完整产品才定义产品型号'
/

comment on column MDS_ITEM.PRODUCT_ALIAS is '产品别名,企业内部对自制产品为简化或约定成俗的称谓。如将型号为DT2的产品简称为100号产品等'
/

comment on column MDS_ITEM.ITEM_REVISION is '版本号(REVISED EDITION),物料的图纸放大'
/

comment on column MDS_ITEM.MDS_ITEM_STATUS_ID is '物料状态的简单定义，0-初始化，1-有效，2-无效，3-过期，MDS_ITEM_STATUS的主键id(现在通用代码 MDS_ITEM_STATUS 0 初始化 1 有效 2无效)'
/

comment on column MDS_ITEM.SOURCE_TYPE is '来源类型, 0、自制，1、OEM，2、协作，3、采购，4、自用，5、非制造件,说明项目来于购买或自制以及自制的程度'
/

comment on column MDS_ITEM.GT_CODE is '附加技术条件;   172专用，不可改动   -------GT编码(GROUP TECHNOLOGY CLASSIFICATION CODE)：本物料的成组技术分类编码，用来表征物料之间相似性。物料成组技术编码系统由用户自行规定。'
/

comment on column MDS_ITEM.MDS_UNIT_ID is '计量单位(与库存单位保持一致)(正在使用)'
/

comment on column MDS_ITEM.WEIGHT is '重量'
/

comment on column MDS_ITEM.W_MDS_UNIT_ID is '重量计量单位'
/

comment on column MDS_ITEM.TECH_CONDITION is '技术条件'
/

comment on column MDS_ITEM.DELIVERY_STATUS is '交货状态, 非金属型类级'
/

comment on column MDS_ITEM.REQ_TYPE is '需求类型：指独立需求或相关需求：D-相关需求；I-独立需求;  B-相关需求和独立需求'
/

comment on column MDS_ITEM.OEM_SUPPLY_FLAG is 'Y-外协带料，N-外协不带料'
/

comment on column MDS_ITEM.FUNC_CLASS is '功能类 , 将物料功能与计划模式相关联的分类。系统定义为标准件、公用件、基础件、结构件、选装件、装饰件、客户化件等'
/

comment on column MDS_ITEM.MPS_PROJECT_FLAG is '是否主计划项目，Y-主计划项目，N-非主计划项目'
/

comment on column MDS_ITEM.MPS_MODE is '计划参数,用于标识不同的计划环境和计划类型,1-MTS 为库存生产;2-MTO 为定单生产;3-ATO 为定单装配;4-ETO 为定单设计;5-BTO 为定单构造'
/

comment on column MDS_ITEM.ORDER_POINT is '订货点(ORDER POINT):采用订货点法时,库存到此数量时,应发出补充订货单。>0'
/

comment on column MDS_ITEM.ORDER_POLICY_CODE is '采购该项目时的订货方式的代码,有效订货策略码为: O-订货点法；M-MRP法；P-周期定货法；J-JIT法'
/

comment on column MDS_ITEM.ORDER_POINT_LT is '订货点订货提前期'
/

comment on column MDS_ITEM.BATCH_QTY is '订货批量(LOT SIZE),有三种含义：(不能为零，否则生成MRP时会死循环但在生成MRP时；如果 <= 0 则置批量 = 1)1.  当采用订货点或固定批量原则时，物料的一次投入数量；2.直接批量法的起订点 >0；3JIT生产中计算用批量'
/

comment on column MDS_ITEM.BATCH_QTY_POLICY is '批量方针(LOT SIZE POLICY)： 制造或采购该项目时确定定单数量的原则,采用固定批量时,需要批量字段有效；批量原则为: L-直接批量原则 F-固定批量原则,P-固定周期直接批量是指投产或采购批量为需求量固定批量为指投产或采购批量为平均批量的最小倍数'
/

comment on column MDS_ITEM.BATCH_LOT_MERGE_FLAG is '批次合并标记: N-批次内不合并,Y-合并 default ‘Y,’在BOM采用批次有效性控制时使用'
/

comment on column MDS_ITEM.AVG_BATCH_QTY is '平均批量(AVERAGE LOT SIZE)物料投产每批的投入量,是生产过程的统计平均值,可以等于固定批量数。只作为估算提前期和粗能力需求用。>0'
/

comment on column MDS_ITEM.BATCH_MODE is '批次管理方式,按单件还是批量生产，1-单件，‘2’-批量'
/

comment on column MDS_ITEM.ARP_FLAG is '计划平衡类型,是否进行ARP计划平衡的标记。即平衡工艺路线和能力的综合bom计划 N --不平衡；  Y --平衡'
/

comment on column MDS_ITEM.PLAN_UNITE_TYPE is 'Y-合并，N-不合并'
/

comment on column MDS_ITEM.EVENT_DRIVE_FLAG is '是否事件驱动标识,Y-事件驱动,N-非事件驱动'
/

comment on column MDS_ITEM.KEY_FLAG is '关重特性 ,N一般件，G  --关键件；Z --重要件；'
/

comment on column MDS_ITEM.CONTROL_WAY is '现场控制方案 , 对制造执行现场控制层次的规定。按企业和自制物料的重要和复杂程度以及企业对计划、质量的跟踪详细程度的要求，可选择是否使用车间定单、工序作业单、工票等'
/

comment on column MDS_ITEM.STOCK_AREA_DIFF_FLAG is 'Y-采购远近区分;N-采购远近不区分'
/

comment on column MDS_ITEM.SUB_COTYPE_FLAG is '是否带料，Y-带料，N-不带料'
/

comment on column MDS_ITEM.WO_LEVEL is 'WO计划级别, 对于大型多层次企业，为了简化上层计划管理而将计划分层次管理。 1 --AA级指由集团或总厂级管理；  2 --A级由分厂等中层机构管理'
/

comment on column MDS_ITEM.WO_END_FLAG is '配套WO完工, N- 配套WO不完工,Y- 配套WO完工'
/

comment on column MDS_ITEM.AA_PLANNER is ' WO的AA级计划员, 集团或总厂级计划员  '
/

comment on column MDS_ITEM.INV_OUT_AUDIT_TYPE is '计划出库审批标记,0 --不审批； 1 --审批； 2 --按量  '
/

comment on column MDS_ITEM.INV_OUT_QTY is '计划出库的数量控制，大于, 出入库审批标记为2 时审批依据的数量限制'
/

comment on column MDS_ITEM.PK_FLAG is 'Y-配套出库；N-不配套出库'
/

comment on column MDS_ITEM.PLAN_BALANCE_FLAG is 'N --不参与计划平衡库存;  Y --参与计划平衡库存'
/

comment on column MDS_ITEM.MAKE_SPEED is 'JIT生产节拍'
/

comment on column MDS_ITEM.PLAN_CUM_LT is '计划累计提前期'
/

comment on column MDS_ITEM.MIN_REINPUT_TIME is '最小重复投入期, MPS、MRP或PUR计划重复投入的最小合并周期,单位为天 >0'
/

comment on column MDS_ITEM.ALOC_LT is '备料提前期'
/

comment on column MDS_ITEM.SAF_LT is '安全提前期'
/

comment on column MDS_ITEM.PLAN_C_LT is '计划不变提前期(天) , 使用的提前期中不随批量大小而变化的部分。定义时为对应平均批量的值'
/

comment on column MDS_ITEM.PLAN_V_LT is '计划可变提前期(天) , 使用的提前期中随着批量大小而变化的部分。定义时为对应平均批量值'
/

comment on column MDS_ITEM.THEORY_C_LT is '理论不变提前期(天) , 根据工艺路线给定的工时数据计算得出的提前期中不随批量大小而变化的部分。计算时为对应平均批量的值。'
/

comment on column MDS_ITEM.THEORY_V_LT is '理论可变提前期(天) , 根据工艺路线给定的工时数据计算得出的提前期中随着批量大小而变化的部分。计算时为对应平均批量的值'
/

comment on column MDS_ITEM.STD_CUM_LT is '标准累计提前期 , 标准累计提前期,根据工艺路线使用零件车间子表模块计算得出'
/

comment on column MDS_ITEM.CUM_LEAD_TIME_RECAL_FLAG is '累计提前期重算标记,1-不重算，0-重算。Default 1'
/

comment on column MDS_ITEM.PROCURE_CHECK_CYCLE is '采购入库检验的检验周期  '
/

comment on column MDS_ITEM.AVG_UTL_RATIO is '平均材料下料利用率'
/

comment on column MDS_ITEM.SCRAP_RATE is '物料废品系数 (SCRAP RATE)：物料本身在制造过程中允许的废品损耗,以小数表示。>0'
/

comment on column MDS_ITEM.AVG_CHECK_VALID_RATIO is '平均入检合格率,到货入库检验合格率>0，default 1'
/

comment on column MDS_ITEM.ALL_ASSEM_LT is '总装配提前期'
/

comment on column MDS_ITEM.SAFETY_STOCK is '安全库存量(SAFETY STOCK)'
/

comment on column MDS_ITEM.OFFSET is '偏移量 , 为传统企业设置的将计划开工和完工日期平行前移的量。单位是天。推荐不要采用'
/

comment on column MDS_ITEM.APP_PRODUCT_CODE is '适用项目ID'
/

comment on column MDS_ITEM.CREATED_BY is '创建人'
/

comment on column MDS_ITEM.CREATION_DATE is '创建时间'
/

comment on column MDS_ITEM.LAST_UPDATED_BY is '最后修改人'
/

comment on column MDS_ITEM.LAST_UPDATE_DATE is '最后修改时间'
/

comment on column MDS_ITEM.LAST_UPDATE_IP is '最后更新IP'
/

comment on column MDS_ITEM.VERSION is '版本'
/

comment on column MDS_ITEM.SHOP_ROUTE is '路线/车间流转'
/

comment on column MDS_ITEM.TOOL_TYPE is '工装类型,1-通用,2-专用'
/

comment on column MDS_ITEM.TOOL_ID_CTL_FLAG is 'ID控制标识,N-ID不控制,Y-  ID控制'
/

comment on column MDS_ITEM.TOOL_QUALITY_CTL_FLAG is '质量受控标识,,N-质量不受控,Y-质量受控'
/

comment on column MDS_ITEM.CHECK_TYPE is '检验类型,关于检验类型的文字描述'
/

comment on column MDS_ITEM.CHECK_CYCLE is '检验周期'
/

comment on column MDS_ITEM.CHK_PERIOD_TYPE is '检验周期单位 Y 年 Q 季 M 月 T  旬 W周 D 天'
/

comment on column MDS_ITEM.CHK_HR_DEPT_ID is '检验部门,HR_DEPT的主键id'
/

comment on column MDS_ITEM.FIX_HR_DEPT_ID is '维修部门,HR_DEPT的主键id'
/

comment on column MDS_ITEM.MAX_STOCK_QTY is '最高库存量'
/

comment on column MDS_ITEM.TOOL_HIGH_WASTE_FLAG is '是否易耗,Y-易耗,N-非易耗'
/

comment on column MDS_ITEM.IN_HR_DEPT_ID is '所属部门,HR_DEPT表的主键'
/

comment on column MDS_ITEM.PLANNED_PRICE is '计划价'
/

comment on column MDS_ITEM.MANUFACTURE_IN_OUT_RATE is '投入-产出比率--用于毛料和物料号没有分开的企业'
/

comment on column MDS_ITEM.MES_ITEM_SERIALNO_LENGTH is '零件顺序号长度--用于生成零件顺序号时根据不同零件确定零件顺序号位数'
/

comment on column MDS_ITEM.YN_DISPATCH is '是否派工或手工维护(是否管理零件顺序号)'
/

comment on column MDS_ITEM.YN_SUB_ITEM_ORDER is '是否使用小号 ^ Y-使用 N-不使用'
/

comment on column MDS_ITEM.WMS_INV_THREE_PERIOD_ID is '库存三期ID'
/

comment on column MDS_ITEM.INV_ABC_CODE is '库存ABC码 ^ 取值为A/B/C'
/

comment on column MDS_ITEM.INV_PROPERTY_CODE is '保管特征码 ^ 1-无要求 2-易变形 3-防锈不油封 4-油封 5-配钻'
/

comment on column MDS_ITEM.PICK_UP_CHECK_FLAG is '生产配套/JIT退库是否检验  ^ Y-检验 N-不检验'
/

comment on column MDS_ITEM.INV_OUT_PRIORITY_FLAG is '出库优先 ^  Y-优先 N-不优先'
/

comment on column MDS_ITEM.ALLOW_OVERSTOCK_PERIOD is '准许积压期限（天）'
/

comment on column MDS_ITEM.CHECK_HOUR is '检定工时'
/

comment on column MDS_ITEM.CHECK_FEE is '检定费用'
/

comment on column MDS_ITEM.CHK_SYS_USER_ID is '检定人'
/

comment on column MDS_ITEM.CHK_PLAN_TYPE is '检定计划类型,如A,B,C与通用代码CHK_PLAN_TYPE对应'
/

comment on column MDS_ITEM.ITEM_MANUFACTURE_FACTORY is '生产厂家'
/

comment on column MDS_ITEM.ITEM_QUALITY_GRADE is '质量等级'
/

comment on column MDS_ITEM.ITEM_PHASE is '如正样Z，初样C等'
/

comment on column MDS_ITEM.MAX_LEVEL is '底层码'
/

comment on column MDS_ITEM.MES_CONTROL_STRATEGY_ID is '现场控制策略ID ^MES_CONTROL_STRATEGY.ID'
/

comment on column MDS_ITEM.MES_ITEM_ORDER_LENGTH is '零件小号的长度，用于生成零件小号表时 格式化小号'
/

comment on column MDS_ITEM.TOOL_CHECK_TYPE is '工装检验类型：1，计量；2，自检；3，自管'
/

comment on column MDS_ITEM.TOOL_USEFUL_LIFE is '工装有效期，当工装是自管时有效'
/

comment on column MDS_ITEM.TOOL_USEFUL_LIFE_UNIT_TYPE is '工装有效期单位 Y年 Q季 M月 T旬 W周 D天'
/

comment on column MDS_ITEM.TOOL_IS_RETURN is '是否返还:Y是，N否'
/

comment on column MDS_ITEM.TOOL_PIECES_PER_SUIT is 'X件/套 工装中使用，表示一套工装中含有单件的个数'
/

comment on column MDS_ITEM.TOOL_ITEM_CODE is '零件号（工装）'
/

comment on column MDS_ITEM.SEIALNO_MODE is '顺序号规则'
/

comment on column MDS_ITEM.IS_SON_COUNT is '再往下的子件是否被计入单台数量 Y计入 N不计入'
/

comment on column MDS_ITEM.NOTE is '备注'
/

comment on column MDS_ITEM.WOLLENS_FLOAT_VALUE is '投料允差值'
/

comment on column MDS_ITEM.YN_INT is '单台数量是否整数'
/

comment on column MDS_ITEM.INDENT_LEAST_QTY is '订货起点'
/

comment on column MDS_ITEM.INDENT_MOST_QTY is '(372采购)最大采购批量'
/

comment on column MDS_ITEM.CHECK_LT is '(372采购)检验提前期'
/

comment on column MDS_ITEM.FOREIGN_TRADE_TYPE is '物料管控类型，易燃、易爆、易制毒'
/

comment on column MDS_ITEM.CHECK_TIME_TYPE is '(372采购)1.到货检验2.出库检验3.移库检验，4不检验'
/

comment on column MDS_ITEM.CALCULATE_MARKER is '(372采购)核算标记，1.核算，0.不核算'
/

comment on column MDS_ITEM.ZOOM_MODULUS is '(372采购)缩放系数  182:本数值表示的是百分比中的分子 假设本字段值是5 则意味着是5%'
/

comment on column MDS_ITEM.MAKE_USE_OF is '(372采购)下料利用率'
/

comment on column MDS_ITEM.FILTER_REGULAR is '(372采购)老炼筛选合格率'
/

comment on column MDS_ITEM.FILTER_MARKER is '(372采购)老炼筛选标记：1.老化 0.不老化'
/

comment on column MDS_ITEM.AVERAGE_WASTAGE is '(372采购)平均库存损耗率'
/

comment on column MDS_ITEM.STORAGE_LT is '保证期，国内标准件用，记录供应商提供的保证期、质保期'
/

comment on column MDS_ITEM.INV_OUT_PRINCIPLE is '(372采购)出入库原则：先入先出，后入先出，批次优先'
/

comment on column MDS_ITEM.HEAT_TREATMENT is '(372采购)热处理要求'
/

comment on column MDS_ITEM.MATERIAL_THICKNESS is '(372采购)板厚'
/

comment on column MDS_ITEM.MATERIAL_LENGTH is '(372采购)长'
/

comment on column MDS_ITEM.MATERIAL_WIDTH is '(372采购)宽'
/

comment on column MDS_ITEM.MATERIAL_DIAMETER is '(372采购)直径（棒）外径（管）'
/

comment on column MDS_ITEM.MATERIAL_WALL is '(372采购)壁厚'
/

comment on column MDS_ITEM.MATERIAL_OTHER is '冶金归并后的锻铸件物料码'
/

comment on column MDS_ITEM.CHECK_TIMES is '(372采购)可复验次数'
/

comment on column MDS_ITEM.PUR_FLOW_FLAG is '(372采购)采购流程标记  ^ 采购计划下达后,决定询价比价流程，1.询价 2. 比价结果维护3.订单管理'
/

comment on column MDS_ITEM.MATERIAL_TYPE is '(372采购)类TYPE'
/

comment on column MDS_ITEM.MATERIAL_CLASS is '分类(锻铸件)'
/

comment on column MDS_ITEM.MATERIAL_GRADE is '级别(锻铸件)'
/

comment on column MDS_ITEM.MATERIAL_FORM is '(372采购)FORM'
/

comment on column MDS_ITEM.SIZE_MDS_UNIT_ID is '(372采购)尺寸计量单位'
/

comment on column MDS_ITEM.CURRENCY_TYPE is '(372采购)币种'
/

comment on column MDS_ITEM.OUTER_TIME is '(372采购)允许外置时间^时间温度敏感材料'
/

comment on column MDS_ITEM.TIME_SENSE_FLAG is '(372采购)时间温度敏感标记Y-是 N-否'
/

comment on column MDS_ITEM.TOTAL_WASTE_RATE is '(372采购)综合损耗率'
/

comment on column MDS_ITEM.CONFIG_NO is '构型^如901,902等'
/

comment on column MDS_ITEM.YN_CRM_CUSTOMER_TYPE_CURRENCY is '是否军种通用 ^ Y--是，N--否（114需求）'
/

comment on column MDS_ITEM.YN_IN_INV is '是否入库 ^ Y--是，N--否（114需求）'
/

comment on column MDS_ITEM.MANUFACT_DIFFICULTY_LEVEL is '加工难度 ^ 0-困难、1-普通、2-容易（114需求）'
/

comment on column MDS_ITEM.YN_CHECK is '是否检验^Y-检验；N-不检验（114需求）'
/

comment on column MDS_ITEM.FINANCE_CLASS is '财务大类（114需求） 【172记录主表的ID】'
/

comment on column MDS_ITEM.PK_WASTE_RATE is '装配费损率（114需求）'
/

comment on column MDS_ITEM.CHECK_AREA is '测量范围'
/

comment on column MDS_ITEM.CHECK_PRECISION is '准确度等级'
/

comment on column MDS_ITEM.STANDARD_TYPE is '标准类别'
/

comment on column MDS_ITEM.STORE_TEMPERATURE is '(372采购)储存温度'
/

comment on column MDS_ITEM.CHECK_FLAG is '372采购)检测标记Y-是 N-否'
/

comment on column MDS_ITEM.ITEM_DEPT_ID is '承制部门'
/

comment on column MDS_ITEM.ITEM_STUFF_DEPT is '供应部门'
/

comment on column MDS_ITEM.ITEM_DESIGN_DEPT is '设计部门'
/

comment on column MDS_ITEM.ITEM_DESIGN_MANAGER is '设计员主管'
/

comment on column MDS_ITEM.ITEM_DESIGN_DUTYMAN is '设计员(多人)'
/

comment on column MDS_ITEM.CHECK_WAY is '检验方式'
/

comment on column MDS_ITEM.IMPORTS_FLAG is '进出口标志'
/

comment on column MDS_ITEM.ROUTE_NO is 'AO/FO号^与MDS_ROUTE表中DATA_PAG_REVERSION字段内容一致'
/

comment on column MDS_ITEM.ALL_USED_QTY is '行业平均使用次数'
/

comment on column MDS_ITEM.ALL_GRIND_QTY is '行业平均返磨次数'
/

comment on column MDS_ITEM.YN_COST_PIECE is '是否使用计件工资 Y-计件 N-计时'
/

comment on column MDS_ITEM.QUOTA_TYPE is '定额单位(正在使用)'
/

comment on column MDS_ITEM.QUOTA_STORE_UNIT_QUOTIENT is '定额/库存单位折算系数(正在使用)'
/

comment on column MDS_ITEM.UOI_QUOTA_TYPE is 'UOI计量单位 ^ 库存'
/

comment on column MDS_ITEM.SPLY_UNIT is '采购单位(正在使用)'
/

comment on column MDS_ITEM.UOP_TRANSFORM_QUOTIENT is '采购转换系数 ^ UOP/UOM'
/

comment on column MDS_ITEM.PURMG_FLAG is '(无计划)合同录入控制标志. 0 不控制; 1 控制'
/

comment on column MDS_ITEM.AVG_MONTH_EXPEND_VOLUME is '月平均消耗量-订货点法用^'
/

comment on column MDS_ITEM.FORGING_CLASS is '锻件级别'
/

comment on column MDS_ITEM.MAJOR_FLAG is '是否关重件，默认为0。1：是，0：否'
/

comment on column MDS_ITEM.CONSIGNMENT_METERIAL_FLAG is '寄售标记，默认为N。Y：是，N：否'
/

comment on column MDS_ITEM.THREE_PERIOD_FLAG is '三期要求（发运日期、制造日期、装船日期、收到日期、复验日期、再复验日期、最长期等、抽查期、提前预警时间）'
/

comment on column MDS_ITEM.SPLY_DRIFT_QUOTIENT is '采购偏离系数'
/

comment on column MDS_ITEM.SPLY_CYCLE_DRIFT_VOLUME is '采购周期偏离量'
/

comment on column MDS_ITEM.AVERAGE_EXPEND_VOLUME is '平均消耗量（自定义期间）'
/

comment on column MDS_ITEM.WMS_INV_UNIT is '库存单位'
/

comment on column MDS_ITEM.PRICE_INDEX_PRO is '价格指数项'
/

comment on column MDS_ITEM.KEEP_ROLE_ASSIGN is '保管员的角色分配'
/

comment on column MDS_ITEM.ATTRIBUTE_01 is '电子料单，用于设定哪些人可以看到该物料从而进行领用。'
/

comment on column MDS_ITEM.PLAN_DUTYMAN is '计划员'
/

comment on column MDS_ITEM.SPLY_DUTYMAN is '采购员'
/

comment on column MDS_ITEM.WMS_PLAN_DUTYMAN is '库房的计划员'
/

comment on column MDS_ITEM.SPLY_STORE_UNIT_QUOTIENT is '采购/库存单位折算系数(正在使用)'
/

comment on column MDS_ITEM.DEPTDESC is '使用部门名称^【172】临时使用系统上线后清除'
/

comment on column MDS_ITEM.ITEM_01 is '机型码值^ 保存编码系统中值'
/

comment on column MDS_ITEM.ITEM_02 is '机型代号全称^保存编码系统中值'
/

comment on column MDS_ITEM.ITEM_03 is '数据导入标记^锻铸件:DZJ,'
/

comment on column MDS_ITEM.ITEM_04 is 'BOM结构件或老系统机型标记'
/

comment on column MDS_ITEM.ITEM_05 is '检验大类ID'
/

comment on column MDS_ITEM.ITEM_06 is '标准编码（编码系统）'
/

comment on column MDS_ITEM.ITEM_07 is '记录编码系统中的检验类别'
/

comment on column MDS_ITEM.ITEM_08 is '预留扩展字段'
/

comment on column MDS_ITEM.ITEM_09 is '成品工艺图号'
/

comment on column MDS_ITEM.ITEM_10 is '供应商ID'
/

comment on column MDS_ITEM.PUR_PRICE is '最新采购价'
/

comment on column MDS_ITEM.ITEM_UNIFORM_CODE is '物料统一编码'
/

comment on column MDS_ITEM.ECONOMIC_ORDER_QTY is '经济批量(add 20150916)'
/

comment on column MDS_ITEM.PROJECT_CODE is '项目'
/

comment on column MDS_ITEM.LT_PLAN is '计划编制周期(天)'
/

comment on column MDS_ITEM.LT_PUR is '合同签订周期(天)'
/

comment on column MDS_ITEM.LT_STOCK_UP is '备货周期(天)'
/

comment on column MDS_ITEM.LT_TRANSPORT is '运输周期(天)'
/

comment on column MDS_ITEM.LT_RECEIVE is '接收周期(天)'
/

comment on column MDS_ITEM.LT_TEST is '理化周期(天)'
/

comment on column MDS_ITEM.LT_CHECK is '验收周期(天)'
/

comment on column MDS_ITEM.LT_DELIVERY is '发放周期(天)'
/

comment on column MDS_ITEM.MIN_STOCK_QTY is '最低库存'
/

comment on column MDS_ITEM.MIN_PACKAGE_QTY is '最小包装'
/

comment on column MDS_ITEM.SRM_VENDOR_ID is '供应商id'
/

comment on column MDS_ITEM.KIT_OUT_FLAG is '成品成套出库标记;  Y成套出库,N否   (同一成品主套下定义为成套出库的物料必须一起发放出库)'
/

comment on column MDS_ITEM.PRTNO is '记录老系统号，导入成品物料时使用'
/

comment on column MDS_ITEM.MDS_ITEM_CODEBACK_DETAIL_ID is '编码驳回流程表单id'
/

comment on column MDS_ITEM.ESTIMATES_PRICE is '暂估价'
/

comment on column MDS_ITEM.ITEM_PRICE_TYPE is '物料价格类型  P（PLAN_PRICE）计划价   O（ORDER_PRICE）采购合同价'
/

comment on column MDS_ITEM.ITEM_TYPE is 'G-机型K-虚拟产品,Z-装配单元A-组合件，D-成品，H-成品导线，M-零件，L-标准件，F-锻铸件，R-原材料，U-辅助材料，'
/