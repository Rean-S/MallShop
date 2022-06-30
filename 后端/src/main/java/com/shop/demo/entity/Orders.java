package com.shop.demo.entity;

import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 订单表
 */
@Data
public class Orders implements Serializable {
    private static final long serialVersionUID = -63183366256913240L;

    @ApiModelProperty(value = "每页多少条", example = "10")
    private Integer limit;

    @ApiModelProperty(value = "第几页", example = "1")
    private Integer offset;

    @ApiModelProperty(value = "", example = " ")
    private Integer id;

    @ApiModelProperty(value = "订单号", example = " ")
    private String code;

    @ApiModelProperty(value = "关联用户", example = " ")
    private Integer uid;

    @ApiModelProperty(value = "关联商家", example = " ")
    private Integer gid;

    @ApiModelProperty(value = "状态 已下单 已退货", example = " ")
    private String status;

    @ApiModelProperty(value = "数量", example = " ")
    private Integer num;

    @ApiModelProperty(value = "时间", example = " ")
    public String time;

    @ApiModelProperty(value = "关联商家", example = " ")
    public Integer bid;


}
