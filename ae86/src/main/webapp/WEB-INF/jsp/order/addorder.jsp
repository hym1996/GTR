<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Author" contect="http://www.webqin.net">
    <title>我的订单</title>
    <link rel="shortcut icon" href="images/favicon.ico" />

    <!-- Bootstrap -->
    <link href="../../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../css/response.css" rel="stylesheet">
    <link href="../../../css/silde.css" rel="stylesheet">
    <link href="../../../css/jquery.toast.css" rel="stylesheet">

    <link href="../../../css/addorder/Index.css" rel="stylesheet">
    <link href="../../../css/addorder/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>7.2/html5shiv.min.js
    <script src="http://cdn.bootcss.com/html5shiv/3."></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <script src="../../../js/jquery.toast.js"></script>
    <script src="../../../js/order/orderAdd.js"></script>

    <![endif]-->
</head>
<body>
<div class="header">
    <div class="width1003">
        <h1 class="logo"><a href="index.html"><img src="images/logo.png" width="202" height="74" /></a></h1>
        <div class="topLink">
            <a href="contact.html" class="tl1">联系我们</a>
            <a href="service.html" class="tl2">投诉建议</a>
            <a href="download.html" class="tl3">下载中心</a>
            <a href="job.html" class="tl4">人才招聘</a>
        </div><!--topLink/-->
        <div class="phones">
            <div><a href="javascript:;" onclick="AddFavorite(window.location,document.title)">加入收藏</a>&nbsp;
                <a href="javascript:;" onclick="SetHome(this,window.location)">设为首页</a></div>
            <p>服务热线：<strong>4001001717</strong></p>
        </div><!--phones/-->
        <div class="clears"></div>
    </div><!--width1003/-->
</div><!--header/-->
<div class="nav-toggle">
    <div class="nav-open"><span class="glyphicon glyphicon-th-list"></span></div>
    <div class="nav-close"><span class="glyphicon glyphicon-remove"></span></div>
</div>
<div class="clearfix"></div>
<div class="nav">
    <ul class="width1003">
        <li><a href="index.html">首页</a></li>
        <li><a href="service.html">服务大厅</a>
            <div class="chilNav">
                <a href="service.html">十七常识</a>
                <a href="service.html">新手入门</a>
                <a href="tousu.html">投诉建议</a>
                <a href="download.html">下载中心</a>
            </div>
        </li>
        <li><a href="search.html">自助查询</a>
            <div class="chilNav">
                <a href="search.html">运单查询</a>
                <a href="search2.html">网点查询</a>
                <a href="search3.html">货物追踪</a>
                <a href="search4.html">订单查询</a>
            </div>
        </li>
        <li><a href="product.html">产品与服务</a>
            <div class="chilNav">
                <a href="product.html">快运产品</a>
                <a href="product.html">定制产品</a>
                <a href="product.html">增值服务</a>
                <a href="product.html">整车转运</a>
                <a href="product.html">仓储物流</a>
            </div>
        </li>
        <li><a href="join.html">加入十七</a>
            <div class="chilNav">
                <a href="join.html">加盟指南</a>
                <a href="join.html">在线加盟</a>
                <a href="join.html">人才服务</a>
                <a href="job.html">人才招聘</a>
                <a href="job.html">在线招聘</a>
            </div>
        </li>
        <li><a href="news.html">新闻公告</a>
            <div class="chilNav">
                <a href="news.html">十七新闻</a>
                <a href="news.html">十七公告</a>
                <a href="news.html">行业动态</a>
                <a href="news.html">企业视频</a>
                <a href="news.html">企业微博</a>
            </div>
        </li>
        <li><a href="about.html">走进十七</a>
            <div class="chilNav">
                <a href="about.html">十七简介</a>
                <a href="about.html">十七历程</a>
                <a href="about.html">十七文化</a>
                <a href="about.html">十七品牌</a>
                <a href="contact.html">联系我们</a>
                <a href="javascript:;">企业邮箱登陆</a>
                <a href="javascript:;">十七快运系统登陆</a>
            </div>
        </li>
        <div class="clears"></div>
    </ul>
</div><!--nav/-->

<div class="content">
    <div class="sendUser clearfix">
        <form action="/Saveorder.html" method="post">
            <input type="hidden" value="${userSession.userId}" name="userId">
        <div class="title"><p style="padding-top:53px;">寄</p><p>件</p><p>人</p><p>信</p><p>息</p></div>
        <div class="SendUserInfo" style="float:left; width:960px">
            <div class="line clearfix">
                <div class="fastentrydiv">
                    <a class="fastentry" onclick="Fastentry(1)">寄件人智能录入</a>
                </div>
                <div class="left">
                    <label>姓名：</label>
                    <input id="SenderName" name="senderName" maxlength="32" required placeholder="请输入寄件人姓名" onblur="senderNamecheck()">
                </div>
                <div class="order_text_img">
                    <a class="order_address_list">
                    </a>
                </div>
                <div class="right ui-widget">
                    <label>手机号码：</label>
                    <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><input id="senderPhone" name="senderPhone" maxlength="11" placeholder="请输入寄件人手机号码" class="ui-autocomplete-input" autocomplete="off" required>
                </div>
            </div>
            <div class="line clearfix">
                <div class="left">
                    <label>发件地址：</label>
                    <div style="display:inline-block;position:relative">
                        <input id="sendFullAddress" data-toggle="city-picker" type="text" name="sendFullAddress" readonly="readonly" placeholder="请选择省市区" class="city-picker-input"><span class="city-picker-span" style="width:280px;height:40px;line-height:39px;"><span class="placeholder">请选择省市区</span><span class="title" style="display: none;"></span><div class="arrow"></div></span><div class="city-picker-dropdown" style="left: 0px; top: 100%; width: 320px; display: none;"><div class="city-select-wrap"><div class="city-select-tab"><a class="active" data-count="province">省份</a><a data-count="city">城市</a><a data-count="district">区县</a></div><div class="city-select-content"><div class="city-select province" data-count="province" style="display: block;"><dl class="clearfix"><dt>A-G</dt><dd><a title="安徽省" data-code="340000" class="">安徽省</a><a title="北京" data-code="110000" class="">北京</a><a title="重庆" data-code="500000" class="">重庆</a><a title="福建省" data-code="350000" class="">福建省</a><a title="甘肃省" data-code="620000" class="">甘肃省</a><a title="广东省" data-code="440000" class="">广东省</a><a title="广西壮族自治区" data-code="450000" class="">广西壮族自治区</a><a title="贵州省" data-code="520000" class="">贵州省</a></dd></dl><dl class="clearfix"><dt>H-K</dt><dd><a title="海南省" data-code="460000" class="">海南省</a><a title="河北省" data-code="130000" class="">河北省</a><a title="黑龙江省" data-code="230000" class="">黑龙江省</a><a title="河南省" data-code="410000" class="">河南省</a><a title="湖北省" data-code="420000" class="">湖北省</a><a title="湖南省" data-code="430000" class="">湖南省</a><a title="江苏省" data-code="320000" class="">江苏省</a><a title="江西省" data-code="360000" class="">江西省</a><a title="吉林省" data-code="220000" class="">吉林省</a></dd></dl><dl class="clearfix"><dt>L-S</dt><dd><a title="辽宁省" data-code="210000" class="">辽宁省</a><a title="内蒙古自治区" data-code="150000" class="">内蒙古自治区</a><a title="宁夏回族自治区" data-code="640000" class="">宁夏回族自治区</a><a title="青海省" data-code="630000" class="">青海省</a><a title="山东省" data-code="370000" class="">山东省</a><a title="上海" data-code="310000" class="">上海</a><a title="山西省" data-code="140000" class="">山西省</a><a title="陕西省" data-code="610000" class="">陕西省</a><a title="四川省" data-code="510000" class="">四川省</a></dd></dl><dl class="clearfix"><dt>T-Z</dt><dd><a title="天津" data-code="120000" class="">天津</a><a title="新疆维吾尔自治区" data-code="650000" class="">新疆维吾尔自治区</a><a title="西藏自治区" data-code="540000" class="">西藏自治区</a><a title="云南省" data-code="530000" class="">云南省</a><a title="浙江省" data-code="330000" class="">浙江省</a></dd></dl></div><div class="city-select city" data-count="city" style="display: none;"><dl class="clearfix"><dd></dd></dl></div><div class="city-select district" data-count="district" style="display: none;"><dl class="clearfix"><dd></dd></dl></div></div></div></div>
                    </div>

                </div>
                <div class="right">
                    <label>详细地址：</label>
                    <input id="senderAddress" name="senderAddress" maxlength="100" placeholder="请输入详细地址(例如xx路，xx号)" required>
                </div>
            </div>



            <div class="line clearfix">
                <div class="left">
                    <label>付款方式：</label>
                    <select id="payway" name="payway" onchange="func()" required>
                        <option value="请选择付款方式">请选择付款方式</option>
                        <option value="现付">现付</option>
                        <option value="到付">到付</option>
                    </select>
                </div>
            </div>
        </div>

    <div class="putUser clearfix">
        <div class="title"><p style="padding-top:53px;">收</p><p>件</p><p>人</p><p>及</p><p>物</p><p>品</p><p>信</p><p>息</p></div>
        <div class="putUserInfo" style="float:left; width:960px">
            <div class="line clearfix">
                <div class="fastentrydiv">
                    <a class="fastentry" onclick="Fastentry(2)">收件人智能录入</a>
                </div>
                <div class="left">
                    <label>姓名：</label>
                    <input id="receiveName" name="receiveName" maxlength="32" placeholder="请输入寄件人姓名" required>
                </div>
                <div class="order_text_img">
                    <a class="order_address_recvList">

                    </a>
                </div>
                <div class="right ui-widget">
                    <label>手机号码：</label>
                    <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><input id="receivePhone" name="receivePhone" maxlength="11" placeholder="请输入寄件人手机号码" class="ui-autocomplete-input" autocomplete="off" required>
                </div>
            </div>
            <div class="line clearfix">
                <div class="left">
                    <label>收件地址：</label>
                    <div style="display:inline-block;position:relative">
                        <input id="ReceiveFullAddress" data-toggle="city-picker" readonly="readonly" name="ReceiveFullAddress" type="text" placeholder="请选择省市区" class="city-picker-input"><span class="city-picker-span" style="width:280px;height:40px;line-height:39px;"><span class="placeholder">请选择省市区</span><span class="title" style="display: none;"></span><div class="arrow"></div></span><div class="city-picker-dropdown" style="left: 0px; top: 100%; width: 320px; display: none;"><div class="city-select-wrap"><div class="city-select-tab"><a class="active" data-count="province">省份</a><a data-count="city">城市</a><a data-count="district">区县</a></div><div class="city-select-content"><div class="city-select province" data-count="province" style="display: block;"><dl class="clearfix"><dt>A-G</dt><dd><a title="安徽省" data-code="340000" class="">安徽省</a><a title="北京" data-code="110000" class="">北京</a><a title="重庆" data-code="500000" class="">重庆</a><a title="福建省" data-code="350000" class="">福建省</a><a title="甘肃省" data-code="620000" class="">甘肃省</a><a title="广东省" data-code="440000" class="">广东省</a><a title="广西壮族自治区" data-code="450000" class="">广西壮族自治区</a><a title="贵州省" data-code="520000" class="">贵州省</a></dd></dl><dl class="clearfix"><dt>H-K</dt><dd><a title="海南省" data-code="460000" class="">海南省</a><a title="河北省" data-code="130000" class="">河北省</a><a title="黑龙江省" data-code="230000" class="">黑龙江省</a><a title="河南省" data-code="410000" class="">河南省</a><a title="湖北省" data-code="420000" class="">湖北省</a><a title="湖南省" data-code="430000" class="">湖南省</a><a title="江苏省" data-code="320000" class="">江苏省</a><a title="江西省" data-code="360000" class="">江西省</a><a title="吉林省" data-code="220000" class="">吉林省</a></dd></dl><dl class="clearfix"><dt>L-S</dt><dd><a title="辽宁省" data-code="210000" class="">辽宁省</a><a title="内蒙古自治区" data-code="150000" class="">内蒙古自治区</a><a title="宁夏回族自治区" data-code="640000" class="">宁夏回族自治区</a><a title="青海省" data-code="630000" class="">青海省</a><a title="山东省" data-code="370000" class="">山东省</a><a title="上海" data-code="310000" class="">上海</a><a title="山西省" data-code="140000" class="">山西省</a><a title="陕西省" data-code="610000" class="">陕西省</a><a title="四川省" data-code="510000" class="">四川省</a></dd></dl><dl class="clearfix"><dt>T-Z</dt><dd><a title="天津" data-code="120000" class="">天津</a><a title="新疆维吾尔自治区" data-code="650000" class="">新疆维吾尔自治区</a><a title="西藏自治区" data-code="540000" class="">西藏自治区</a><a title="云南省" data-code="530000" class="">云南省</a><a title="浙江省" data-code="330000" class="">浙江省</a></dd></dl></div><div class="city-select city" data-count="city" style="display: none;"><dl class="clearfix"><dd></dd></dl></div><div class="city-select district" data-count="district" style="display: none;"><dl class="clearfix"><dd></dd></dl></div></div></div></div>
                    </div>
                </div>
                <div class="right">
                    <label>详细地址：</label>
                    <input id="receiveAddress" name="receiveAddress" maxlength="100" placeholder="请输入详细地址(例如xx路，xx号)" required>
                </div>
            </div>
            <div class="line clearfix">


            </div>

        </div>
        <div class="goodsType" style="float:left; width:960px">
            <label>物品类型：</label>
            <span>
                    <input type="radio" name="remark" value="文件">文件
                </span>
            <span>
                    <input type="radio" name="remark" value="服饰">服饰
                </span>
            <span>
                    <input type="radio" name="remark" value="食品">食品
                </span>
            <span>
                    <input type="radio" name="remark" value="数码用品">数码用品
                </span>
            <span>
                    <input type="radio" name="remark" value="生活用品">生活用品
                </span>
            <span>
                    <input type="radio" name="remark" value="其他" id="elseDeliveryGoods">其他
                </span>

            <textarea id="memo" placeholder="物品描述" class="memotextarea" maxlength="50" style="display:none"></textarea>


        </div>

        <div class="predictLine" style="float:left; width:960px">

            <div class="right">

                <label>物品是否属实</label>
                <select id="isReal" name="isReal" onchange="func()">
                    <option value="1">是</option>
                    <option value="0">否</option>
                </select>
            </div>
        </div>
    </div>

    <div class="submitBox">
        <p class="protocol">
            <input type="checkbox" checked="checked">
            <span>我愿意遵守<a href="javascript:void()" onclick="Show()" style="color:#ed6a00">《全民超跑快递服务协议》</a></span>
        </p>
        <p class="submitBtn">
            <input type="submit" id="orderSubmit" value="提交订单">

        </p>


</div>
    </form>

<footer>
    <div class="width1003">
        <ul>
            <li class="ft-title">服务大厅</li>
            <li><a href="service.html">十七常识</a></li>
            <li><a href="service.html">新手入门</a></li>
            <li><a href="tousu.html">投诉建议</a></li>
            <li><a href="download.html">下载中心</a></li>
        </ul>
        <ul>
            <li class="ft-title">自助查询</li>
            <li><a href="search.html">运单查询</a></li>
            <li><a href="search2.html">网点查询</a></li>
            <li><a href="search3.html">货物追踪</a></li>
            <li><a href="search4.html">订单查询</a></li>
        </ul>
        <ul>
            <li class="ft-title">产品与服务</li>
            <li><a href="product.html">快运产品</a></li>
            <li><a href="product.html">定制产品</a></li>
            <li><a href="product.html">增值服务</a></li>
            <li><a href="product.html">整车转运</a></li>
            <li><a href="product.html">仓储物流</a></li>
        </ul>
        <ul>
            <li class="ft-title">加入十七</li>
            <li><a href="join.html">加盟指南</a></li>
            <li><a href="join.html">在线加盟</a></li>
            <li><a href="join.html">人才服务</a></li>
            <li><a href="job.html">人才招聘</a></li>
            <li><a href="job.html">在线招聘</a></li>
        </ul>
        <ul>
            <li class="ft-title">新闻公告</li>
            <li><a href="news.html">十七新闻</a></li>
            <li><a href="news.html">十七公告</a></li>
            <li><a href="news.html">行业动态</a></li>
            <li><a href="news.html">企业视频</a></li>
            <li><a href="news.html">企业微博</a></li>
        </ul>
        <ul>
            <li class="ft-title">走进十七</li>
            <li><a href="about.html">十七简介</a></li>
            <li><a href="about.html">十七历程</a></li>
            <li><a href="about.html">十七文化</a></li>
            <li><a href="about.html">十七品牌</a></li>
            <li><a href="contact.html">联系我们</a></li>
            <li><a href="javascript:;">企业邮箱登陆</a></li>
            <li><a href="javascript:;">十七快运系统登陆</a></li>
        </ul>
        <div class="footcontact">
            <h2 class="ft-title">联系我们</h2>
            <div class="fttext">
                咨询热线：021—39927055、4001001717<br />
                总部地址：上海市嘉定区马陆浏翔公路2158号<br />
                官方网站：www.56ky.cn
            </div>
            <dl>
                <dt><img src="images/weixin.jpg" width="90" height="91" /></dt>
                <dd>
                    公司微信公众号平台，最新资讯，一扫了之！敬请关注!
                </dd>
                <div class="clearfix"></div>
            </dl>
        </div><!--footcontact/-->
        <div class="clearfix"></div>

    </div><!--width1003/-->

</footer>
<div class="copy">
    Copyright © 2015 Wliu Co.,Ltd.    沪ICP备00000000号    上海市浦东新区八嘎路2222号 技术支持：17素材
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<script src="js/style.js"></script>
<!--焦点轮换-->
<script src="js/jquery.excoloSlider.js"></script>
<script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
</script>
<script type="text/javascript">
    $(function(){
        //导航定位
        $(".nav li:eq(1) a:first").addClass("navCur");
    })
</script>

    </div>
</div>
</body>
</html>