package com.wms.iwms.operation;

import com.wms.iwms.base.LocationInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @author puck
 * @date 2020/10/29 11:30 上午
 */
@ApiModel(value = "LocationInfoOperation",description = "传递物料分类数据类")
public class LocationInfoOperation
{
    @ApiModelProperty(value = "operate",name = "单据类型\n" +
            "新增 create：第一次同步库位信息默认为新增\n" +
            "更新 update： 当iWMS库位信息发生变更,依据库房编码和库位编码进行更新。\n" +
            "删除 delete ：当iWMS删除库位信息，删除为标记删除，依据库房编码和库位编码进行删除。")
    private String operate = null;
    @ApiModelProperty(value = "locationInfo",name="传递的物料分类数据")
    private LocationInfo locationInfo = null;
}
