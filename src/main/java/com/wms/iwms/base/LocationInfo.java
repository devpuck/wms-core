package com.wms.iwms.base;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * @author puck
 * @date 2020/10/27 3:42 下午
 */
@Data
@ApiModel(value="LocationInfo",description = "iwms同步的库位数据")
public class LocationInfo
{

    @ApiModelProperty(value = "whCode",name = "库房编码，WMS识别库房到唯一标识。由WMS系统生成，iWMS系统需要将此编码与管理逻辑内仓库一一对应。")
    private String whCode = null;
    @ApiModelProperty(value = "locationCode",name = "库位编码，单个库房内库位编码唯一")
    private String locationCode = null;
    @ApiModelProperty(value = "createTime",name = "建库位时间，格式是 yyyy-MM-dd  HH:mm:ss。对于之前已经运行的自动仓此字段必填。不填默认为第一次传递时间。")
    private String createTime = null;
    @ApiModelProperty(value = "place",name = "位置编码")
    private String place = null;
    @ApiModelProperty(value = "direction",name = "库位朝向")
    private String direction = null;
    @ApiModelProperty(value = "weight",name = "承重，库位所承受到最大重量")
    private double weight = 0;
    @ApiModelProperty(value = "height",name = "库位高（单位cm）")
    private double height = 0;
    @ApiModelProperty(value = "width",name = "库位宽（单位cm）")
    private double width = 0;
    @ApiModelProperty(value = "length",name = "库位长（单位cm）")
    private double length =0 ;
    @ApiModelProperty(value = "weightUnit",name = "承重单位，kg、g")
    private double weightUnit = 0;
    @ApiModelProperty(value = "attribute1",name = "备选参数")
    private String attribute1 = null;
    @ApiModelProperty(value = "attribute2",name = "备选参数")
    private String attribute2 = null;
    @ApiModelProperty(value = "attribute3",name = "备选参数")
    private String attribute3 = null;

}
