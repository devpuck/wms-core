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
@ApiModel(value="库房分类",description = "库房分类，根据类型的分类")
public class WarehouseClassify
{
    @ApiModelProperty(name = "id",value ="库房分类ID")
    private String id = null;
    @ApiModelProperty(name = "code",value="库房分类编码")
    private String code = null;
    @ApiModelProperty(name="fatherCode",value = "父分类编码")
    private String fatherCode = null;
    @ApiModelProperty(name="name",value="库房分类名称")
    private String name = null;
    @ApiModelProperty(name="state",value = "库房分类状态")
    private String state = null;
    @ApiModelProperty(name = "createUser",value = "创建人")
    private String createUser = null;
    @ApiModelProperty(name="createDate",value = "创建时间")
    private Date createDate = null;

}
