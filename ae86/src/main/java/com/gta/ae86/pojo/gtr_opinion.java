package com.gta.ae86.pojo;

/**
 * 意见表表
 */
public class gtr_opinion {
    private int id;//意见表主键
    private gtr_opiniontype OpinionType;//1.投诉2.建议
    private String context;//内容

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public gtr_opiniontype getOpinionType() {
        return OpinionType;
    }

    public void setOpinionType(gtr_opiniontype opinionType) {
        OpinionType = opinionType;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }
}
