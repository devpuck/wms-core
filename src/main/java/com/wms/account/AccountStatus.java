package com.wms.account;

/**
 * @author puck
 * @date 2020/12/25 5:58 下午
 */
public class AccountStatus
{
    //非限制性库存
    public static String UNRESTRICTED_INVENTORY = "unrestricted_inventory";
    //冻结库存
    public static String FROZEN_INVENTORY = "frozen_inventory";
    //待检
    public static String TO_BE_QUALITY = "to_be_quality";
    //移动中
    public static String MOVING = "moving";
    //限制性库存
    public static String RESTRICTED_INVENTORY = "restricted_inventory";
}
