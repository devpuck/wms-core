package com.wms.warehouse;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * @author puck
 * @date 2020/10/27 3:42 下午
 */
@Data
@ApiModel(value = "自动仓配置",description = "自动仓配置")
public class AutoWarehouseConfig
{
    @ApiModelProperty(name = "id",value = "自动仓配置id")
    private String id = null;
    @ApiModelProperty(name = "warehouseNo",value ="仓库编号")
    private String warehouseNo = null;
    @ApiModelProperty(name = "communicationPlace",value ="通讯地址")
    private String communicationPlace = null;
    @ApiModelProperty(name = "autoType",value ="自动仓类型，如立体仓、垂直仓、AGV仓库等")
    private String autoType = null;
    @ApiModelProperty(name = "strategy",value = "自动仓策略")
    private String strategy = null;
    @ApiModelProperty(name="appKey",value="自动仓Key")
    private String appKey = null;
    @ApiModelProperty(name = "appSecret",value = "自动仓密钥")
    private String appSecret = null;
    @ApiModelProperty(name="version",value = "版本号")
    private String version = null;

}
