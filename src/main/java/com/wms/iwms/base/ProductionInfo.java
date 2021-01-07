package com.wms.iwms.base;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @author puck
 * @date 2020/10/29 11:01 上午
 */
@ApiModel(value = "productionInfo",description = "物料基础数据")
public class ProductionInfo
{

    @ApiModelProperty(name = "proCode",value = "物料编号，物料的唯一标识")
    private String proCode = null;
    @ApiModelProperty(name = "name",value = "物料名称")
    private String name = null;
    @ApiModelProperty(name = "specifications",value = "规格")
    private String specifications = null;
    @ApiModelProperty(name = "model",value = "型号")
    private String model = null;
    @ApiModelProperty(name = "drawCode",value = "图号")
    private String drawCode = null;
    @ApiModelProperty(name = "material",value = "材质")
    private String material = null;
    @ApiModelProperty(name = "introduce",value = "物料描述")
    private String introduce = null;
    @ApiModelProperty(name = "unit",value = "物料主单位")
    private String unit = null;
    @ApiModelProperty(name = "categoryCode",value = "分类编码")
    private String categoryCode = null;
    @ApiModelProperty(name = "weight",value = "物料毛重")
    private String weight = null;
    @ApiModelProperty(name = "length",value = "长（单位cm）")
    private String length = null;
    @ApiModelProperty(name = "width",value = "宽（单位cm）")
    private String width = null;
    @ApiModelProperty(name = "",value = "高（单位cm")
    private String height = null;
    @ApiModelProperty(name = "",value = "备选参数")
    private String attribute1 = null;
    @ApiModelProperty(name = "",value = "备选参数")
    private String attribute2 = null;
    @ApiModelProperty(name = "",value = "备选参数")
    private String attribute3 = null;
    @ApiModelProperty(name = "",value = "备选参数")
    private String attribute4 = null;
    @ApiModelProperty(name = "",value = "备选参数")
    private String attribute5 = null;
}
