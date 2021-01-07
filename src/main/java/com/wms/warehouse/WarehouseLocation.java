package com.wms.warehouse;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author puck
 * @date 2020/10/27 3:42 下午
 */
@Data
@ApiModel(value = "库位定义",description = "统一库位定义")
public class WarehouseLocation
{
    @ApiModelProperty(name="id",value = "ID")
    private String id = null;
    @ApiModelProperty(name="locationNo",value = "库位号")
    private String locationNo = null;
    @ApiModelProperty(name="warehouseNo",value = "库位号")
    private String warehouseNo = null;
    @ApiModelProperty(name="locationType",value = "库位类型，常规库位、灵活库位")
    private String locationType = null;
    @ApiModelProperty(name="state",value = "状态")
    private String state = null;
    @ApiModelProperty(name="isEmpty",value = "是否为空库位")
    private int isEmpty = 0;
    @ApiModelProperty(name="size",value = "尺寸")
    private String size = null;
    @ApiModelProperty(name="remarks",value = "备注")
    private String remarks = null;
    @ApiModelProperty(name="createUser",value = "创建人")
    private String createUser = null;
    @ApiModelProperty(name="createTime",value = "创建时间")
    private String createTime = null;
    @ApiModelProperty(name="version",value = "版本号")
    private String version = null;

}
