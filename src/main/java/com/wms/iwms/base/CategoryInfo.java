package com.wms.iwms.base;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @author puck
 * @date 2020/10/29 10:53 上午
 */
@ApiModel(value = "CagegoryInfo",description = "向第三方iwms同步物料分类的数据")
public class CategoryInfo
{
    @ApiModelProperty(name = "categoryCode",value = "分类编号")
    private String categoryCode = null;
    @ApiModelProperty(name = "fatherCode",value = "上级分类编号")
    private String fatherCode = null;
    @ApiModelProperty(name = "name",value = "分类名称")
    private String name = null;
    @ApiModelProperty(name = "details",value = "描述")
    private String details = null;
    @ApiModelProperty(name="version",value = "版本号")
    private String version = null;
}
