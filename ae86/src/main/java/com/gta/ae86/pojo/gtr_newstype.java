package com.gta.ae86.pojo;

/**
 * 新闻类型表
 */
public class gtr_newstype {
    private int id;//主键
    private String type;//1.财经，2.汽车，3.军事，4.科技，5.房产，6.娱乐，7.时尚，8.体育，9.历史，10.游戏，11.城市，12.公益，13.民声，14.健康，15.世博

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
