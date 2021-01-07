package com.wms.iwms.operation;

import com.wms.iwms.base.CategoryInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


/**
 * @author puck
 * @date 2020/10/29 11:25 上午
 */
@ApiModel(value = "CategoryInfoOperation",description = "物料分类传递")
public class CategoryInfoOperation
{
    @ApiModelProperty(name = "operate",value = "单据类型\n" +
            "新增 create：第一此同步物料分类信息默认为新增\n" +
            "更新 update： 当WMS物料分类信息发生变更\n" +
            "删除 delete ：当WMS删除物料分类信息")
    private String operate = null;
    @ApiModelProperty(name = "categoryInfo",value = "物料分类")
    private CategoryInfo categoryInfo = null;

}
