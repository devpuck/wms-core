package com.wms.errorcode;

/**
 * @author puck
 * @date 2020/12/16 9:40 下午
 */
public class ErrorCode
{
    public static final int OK = 0;
    public static final int ERROR = 1;
    public static final int OUT_OK = 200;
    //库房管理错误码30000-39999
    public static final int WAREHOUSE_CODE_REPEAT = 30001;
    public static final String WAREHOUSE_CODE_REPEAT_MESSAGE = "库房编码重复";
    public static final int WAREHOUSE_LOCATION_CODE_REPEAT = 30002;
    public static final String WAREHOUSE_LOCATION_CODE_REPEAT_MESSAGE = "库位编码重复";
    public static final int WAREHOUSE_TRANSACTIONS_CODE_REPEAT = 30003;
    public static final String WAREHOUSE_TRANSACTIONS_CODE_REPEAT_MESSAGE = "事务编码重复";
    public static final int WAREHOUSE_DEAL_CODE_REPEAT = 30004;
    public static final String WAREHOUSE_DEAL_CODE_REPEAT_MESSAGE = "子事务编码重复";

    //库房需求管理错误吗40000-49999
    public static final int WAREHOUSE_REQUIREMENT_CODE_REPEAT = 40001;
    public static final String WAREHOUSE_REQUIREMENT_CODE_REPEAT_MESSAGE = "需求编码重复";

    //出入库、移库错误吗50000-59999
    public static final int WAREHOUSE_CONFIG_IN_REPEAT = 50001;
    public static final String  WAREHOUSE_CONFIG_IN_REPEAT_MESSAGE = "入库配置重复";
    public static final int WAREHOUSE_SPE_CONFIG_IN_REPEAT = 50002;
    public static final String  WAREHOUSE_SPE_CONFIG_IN_REPEAT_MESSAGE = "特殊入库配置重复";

}