package com.wms.iwms.operation;

import com.wms.iwms.base.ProductionInfo;
import io.swagger.annotations.ApiModelProperty;

/**
 * @author puck
 * @date 2020/10/29 11:34 上午
 */
public class ProductionInfoOperation
{
    @ApiModelProperty(name = "operate",value = "单据类型\n" +
            "新增 create：第一此同步物料信息默认为新增\n" +
            "更新 update： 当WMS物料信息发生变更，依据物料编号进行变更\n" +
            "删除 delete ：当WMS删除物料信息，删除为标记删除，依据物料编号进行删除")
    private String operate = null;
    @ApiModelProperty(name = "productionInfo",value = "物料数据")
    private ProductionInfo productionInfo = null;
}
