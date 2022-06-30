package com.shop.demo.entity;

import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 商家表
 */
@Data
public class Business implements Serializable {
    private static final long serialVersionUID = -26527246180289206L;

    @ApiModelProperty(value = "每页多少条", example = "10")
    private Integer limit;

    @ApiModelProperty(value = "第几页", example = "1")
    private Integer offset;

    @ApiModelProperty(value = "", example = " ")
    private Integer id;

    @ApiModelProperty(value = "账号", example = " ")
    private String user;

    @ApiModelProperty(value = "密码", example = " ")
    private String pwd;

    @ApiModelProperty(value = "名称", example = " ")
    private String name;

    @ApiModelProperty(value = "时间", example = " ")
    public String time;


}
