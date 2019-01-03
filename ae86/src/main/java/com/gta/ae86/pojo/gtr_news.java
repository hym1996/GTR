package com.gta.ae86.pojo;

import java.util.Date;

/**
 * 新闻表
 */
public class gtr_news {
    private int id;//新闻表主键
    private gtr_newstype newstype;//1.财经，2.汽车，3.军事，4.科技，5.房产，6.娱乐，7.时尚，8.体育，9.历史，10.游戏，11.城市，12.公益，13.民声，14.健康，15.世博
    private String title;//标题
    private String context;//内容
    private Date createdate;//发布日期

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public gtr_newstype getNewstype() {
        return newstype;
    }

    public void setNewstype(gtr_newstype newstype) {
        this.newstype = newstype;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}
