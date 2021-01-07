package com.wms.iwms.base;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @author puck
 * @date 2020/10/29 2:26 下午
 */
@ApiModel(value = "InStorageOrder",description = "推送入库单据")
public class InStorageOrder
{
    @ApiModelProperty(name = "",value = "")
    private String orderNum = null;
    private String orderOriCode = null;
    private String whCode = null;
    private String proCode = null;
    private String quantity = null;
    private String unit = null;
    private String locationCode = null;
    private String priority = null;
    private String intoPersonCode = null;
    private String genData = null;
    private String expireData = null;
    private String qualityStatus = null;
    private String projectCode = null;
    private String batch = null;
    private String splysotCode = null;
    private String aircraftCode = null;
    private String sortieCode = null;
    private String attribute1 = null;
    private String attribute2 = null;
    private String attribute3 = null;
    private String attribute4 = null;
    private String attribute5 = null;
    private String attribute6 = null;
    private String attribute7 = null;
    private String attribute8 = null;
    private String attribute9 = null;
    private String attribute10 = null;

}
