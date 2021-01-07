package com.wms.warehouse;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;
/**
 * @author puck
 * @date 2020/10/27 3:42 下午
 */
@Data
@ApiModel(value = "库房",description = "库房")
public class WareHouse {
    @ApiModelProperty(name = "id",value ="库房ID")
    private String id = null;
    @ApiModelProperty(name = "name",value ="库房名称")
    private String name = null;
    @ApiModelProperty(name = "warehouseNo",value ="库房编码")
    private String warehouseNo = null;
    @ApiModelProperty(name = "warehouseType",value ="库房类型")
    private String warehouseType = null;
    @ApiModelProperty(name = "warehouseClassify",value ="库房分类")
    private WarehouseClassify warehouseClassify = null;
    @ApiModelProperty(name = "autoWarehouseConfig",value ="自动仓配置")
    private AutoWarehouseConfig autoWarehouseConfig = null;
    @ApiModelProperty(name = "departmentName",value ="部门名称")
    private String departmentName = null;
    @ApiModelProperty(name = "departmentNo",value ="部门编号")
    private String departmentNo = null;
    @ApiModelProperty(name = "phone",value ="联系电话")
    private String phone = null;
    @ApiModelProperty(name = "state",value ="状态")
    private String state = null;
    @ApiModelProperty(name = "inventoryType",value ="库房盘点方式")
    private String inventoryType = null;
    @ApiModelProperty(name = "place",value ="库房位置")
    private String place = null;
    @ApiModelProperty(name = "createUser",value ="创建人")
    private String createUser = null;
    @ApiModelProperty(name = "createTime",value ="创建时间")
    private Date createTime = null;
    @ApiModelProperty(name="version",value = "版本号")
    private String version = null;
    @ApiModelProperty(name="details",value = "备注")
    private String details = null;
}
