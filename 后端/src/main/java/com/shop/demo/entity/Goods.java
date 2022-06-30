package com.shop.demo.entity;

import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 商品表
 */
@Data
public class Goods implements Serializable {
    private static final long serialVersionUID = 736724253555168317L;

    @ApiModelProperty(value = "每页多少条", example = "10")
    private Integer limit;

    @ApiModelProperty(value = "第几页", example = "1")
    private Integer offset;

    @ApiModelProperty(value = "", example = " ")
    private Integer id;

    @ApiModelProperty(value = "名称", example = " ")
    private String name;

    @ApiModelProperty(value = "内容", example = " ")
    private String content;

    @ApiModelProperty(value = "图片", example = " ")
    private String img;

    @ApiModelProperty(value = "状态", example = " ")
    private String status;

    @ApiModelProperty(value = "数量", example = " ")
    private Integer num;

    @ApiModelProperty(value = "价格", example = " ")
    private Double price;

    @ApiModelProperty(value = "时间", example = " ")
    public String time;

    @ApiModelProperty(value = "关联商家", example = " ")
    private Integer bid;


}
