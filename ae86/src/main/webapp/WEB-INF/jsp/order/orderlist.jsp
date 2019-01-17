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
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../css/response.css" rel="stylesheet">
    <link href="../../css/silde.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
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
    <div class="width1003">

        <div class="content-right">
            <h2 class="right-title">我的订单</h2>
            <div class="netlist">
                <table id="customers">
                    <tr >
                    <td>订单编号</td><td>用户名</td><td>是否支付</td><td>备注</td><td>起送时间</td><td>货到时间</td><td>接收人</td><td>接收人电话</td><td>接收地址</td>
                    </tr>
                    <tr>
                    <td>${orderList.serialNumber}</td>
                        <td>${userNickName.nickName}</td>
                <td>
                    <c:if test="${orderList.payStatus==1}">已支付</c:if>
                    <c:if test="${orderList.payStatus==2}">未支付</c:if>
                </td>
                <td>${orderList.remark}</td>
                <td><fm:formatDate value="${orderList.startTime}" pattern="yyyy-MM-dd" /></td>
                <td><fm:formatDate value="${orderList.endTime}" pattern="yyyy-MM-dd" /></td>
                <td>${orderList.receiveName}</td>
                <td>${orderList.receivePhone}</td>
                <td>${orderList.receiveAddress}</td>
                    </tr>
                </table>
        </div><!--netlist/-->
        </div><!--content-right/-->
        <div class="clearfix"></div>
    </div><!--width1003/-->
</div><!--content/-->

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

</body>
</html>