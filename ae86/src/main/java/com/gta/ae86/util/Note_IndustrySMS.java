package com.gta.ae86.util;


import java.net.URLEncoder;

public class Note_IndustrySMS {
    private static String operation = "/industrySMS/sendSMS";

    private static String accountSid = Note_Config.ACCOUNT_SID;
    //private static String to = "18676599481";

    // private static String code = smsCode();
    //  登录验证码：{1}，如非本人操作，请忽略此短信。
    // private static String smsContent = "【本熊科技】您的验证码为：" + code + "，请于10分钟内正确输入，如非本人操作，请忽略此短信。";

    /**
     * 验证码通知短信
     */
    public static void execute(String phone, String code) {
        String tmpSmsContent = null;
        try {
            tmpSmsContent = URLEncoder.encode("【本熊科技】您的验证码为：" + code + "，请于10分钟内正确输入，如非本人操作，请忽略此短信。", "UTF-8");
        } catch (Exception e) {

        }
        String url = Note_Config.BASE_URL + operation;
        String body = "accountSid=" + accountSid + "&to=" + phone + "&smsContent=" + tmpSmsContent
                + Note_HttpUtil.createCommonParam();

        // 提交请求
        String result = Note_HttpUtil.post(url, body);
        System.out.println("result:" + System.lineSeparator() + result);
    }

    //创建验证码
    public static String smsCode() {
        String random = (int) ((Math.random() * 9 + 1) * 100000) + "";
        System.out.println("验证码：" + random);
        return random;
    }

}
