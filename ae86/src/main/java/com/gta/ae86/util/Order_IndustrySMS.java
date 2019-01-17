package com.gta.ae86.util;
import java.text.SimpleDateFormat;


import java.net.URLEncoder;
import java.util.Date;

public class Order_IndustrySMS {
    private static String operation = "/industrySMS/sendSMS";

    private static String accountSid = Note_Config.ACCOUNT_SID;
    //private static String to = "18676599481";

    // private static String code = smsCode();
    //  登录验证码：{1}，如非本人操作，请忽略此短信。
    // private static String smsContent = "【本熊科技】您的验证码为：" + code + "，请于10分钟内正确输入，如非本人操作，请忽略此短信。";

    /**
     * 验证码通知短信
     */


    //创建验证码
    public static String ordersmsCode() {
        String str = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        String random = (int) ((Math.random() * 9 + 1) * 1000000) + ""+str;
        System.out.println("验证码：" +str+ random);
        return random;
    }

}
