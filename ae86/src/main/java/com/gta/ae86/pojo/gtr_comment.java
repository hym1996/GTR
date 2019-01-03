package com.gta.ae86.pojo;

import java.util.Date;


/**
 * 评价类
 */
public class gtr_comment {

    private int id;//主键
    private gtr_star star;//星级
    private String evaluate;//评价
    private String author;//发布人
    private Date createdate;//发布时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public gtr_star getStar() {
        return star;
    }

    public void setStar(gtr_star star) {
        this.star = star;
    }

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}
