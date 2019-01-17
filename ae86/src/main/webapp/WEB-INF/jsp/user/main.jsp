<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Author" contect="http://www.webqin.net">
    <title>Nissan-GTR</title>
    <link rel="shortcut icon" href="../../../img/favicon.ico"/>

    <!-- Bootstrap -->
    <link href="../../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../css/response.css" rel="stylesheet">
    <link href="../../../css/silde.css" rel="stylesheet">
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
        <h1 class="logo"><a href="index.html"><img src="../../../img/imgs/gtrlog.jpg" width="150px" height="100px"/></a>
        </h1>
        <div class="topLink">
            <%--   <a href="../../../img/contact.html" class="tl1">联系我们</a>
               <a href="../../../../../../../../Desktop/快递网页/service.html" class="tl2">投诉建议</a>--%>

            <c:if test="${userSession==null}"><a href="">注册/登录</a></c:if>
            <c:if test="${userSession!=null}">
                <span><a href="/userShow.html?userId=${userSession.userId}" onsubmit="">欢迎登陆:${userSession.nickName}
               </a>
             </span>
            </c:if>
            <%-- <a href="../../../../../../../../Desktop/快递网页/download.html" class="tl3">注册/登陆</a>--%>


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
        <li><a href="../../../../../../../../Desktop/快递网页/service.html">服务大厅</a>
            <div class="chilNav">
                <a href="../../../../../../../../Desktop/快递网页/service.html">GTR常识</a>
                <a href="../../../../../../../../Desktop/快递网页/service.html">新手入门</a>
                <a href="../../../../../../../../Desktop/快递网页/tousu.html">投诉建议</a>
                <a href="../../../../../../../../Desktop/快递网页/download.html">下载中心</a>
            </div>
        </li>
        <li><a href="../../../../../../../../Desktop/快递网页/search.html">自助查询</a>
            <div class="chilNav">
                <a href="../../../../../../../../Desktop/快递网页/search.html">运单查询</a>
                <a href="../../../../../../../../Desktop/快递网页/search2.html">网点查询</a>
                <a href="../../../../../../../../Desktop/快递网页/search3.html">货物追踪</a>
                <a href="../../../../../../../../Desktop/快递网页/search4.html">订单查询</a>
            </div>
        </li>
        <li><a href="../../../../../../../../Desktop/快递网页/product.html">产品与服务</a>
            <div class="chilNav">
                <a href="../../../../../../../../Desktop/快递网页/product.html">我要寄件</a>
                <a href="../../../../../../../../Desktop/快递网页/product.html">运费时效查询</a>
                <a href="../../../../../../../../Desktop/快递网页/product.html">网点查询</a>
                <a href="../../../../../../../../Desktop/快递网页/product.html">收寄范围查询</a>
                <a href="../../../../../../../../Desktop/快递网页/product.html">在线服务</a>
            </div>
        </li>
        <li><a href="../../../../../../../../Desktop/快递网页/join.html">加入我们</a>
            <div class="chilNav">
                <a href="../../../../../../../../Desktop/快递网页/join.html">加盟指南</a>
                <a href="../../../../../../../../Desktop/快递网页/join.html">在线加盟</a>
                <a href="../../../../../../../../Desktop/快递网页/join.html">人才服务</a>
                <a href="../../../../../../../../Desktop/快递网页/job.html">人才招聘</a>
                <a href="../../../../../../../../Desktop/快递网页/job.html">在线招聘</a>
            </div>
        </li>
        <li><a href="../../../../../../../../Desktop/快递网页/news.html">新闻公告</a>
            <div class="chilNav">
                <a href="../../../../../../../../Desktop/快递网页/news.html">新闻</a>
                <a href="../../../../../../../../Desktop/快递网页/news.html">公告</a>
                <a href="../../../../../../../../Desktop/快递网页/news.html">行业动态</a>
                <a href="../../../../../../../../Desktop/快递网页/news.html">企业视频</a>
                <a href="../../../../../../../../Desktop/快递网页/news.html">企业微博</a>
            </div>
        </li>
        <li><a href="../../../../../../../../Desktop/快递网页/about.html">走进我们</a>
            <div class="chilNav">
                <a href="../../../../../../../../Desktop/快递网页/about.html">我们的简介</a>
                <a href="../../../../../../../../Desktop/快递网页/about.html">我们的历程</a>
                <a href="../../../../../../../../Desktop/快递网页/about.html">十七文化</a>
                <a href="../../../../../../../../Desktop/快递网页/about.html">十七品牌</a>
                <a href="../../../../../../../../Desktop/快递网页/contact.html">联系我们</a>
                <a href="javascript:;">企业邮箱登陆</a>
                <a href="javascript:;">十七快运系统登陆</a>
            </div>
        </li>
        <div class="clears"></div>
    </ul>
</div><!--nav/-->

<!-- Swiper -->
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="../../../img/imgs/banner1.jpg"/></div>
        <div class="swiper-slide"><img src="../../../img/imgs/banner2.jpg"/></div>
        <div class="swiper-slide"><img src="../../../img/imgs/banner3.jpg"/></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
</div>
<!-- Swiper JS -->

<div class="content">
    <div class="width1003">
        <h2 class="title">产品与服务 <span>/ Proudct & Service</span></h2>
        <div class="index-pro">
            <dl>
                <a href="/toadd.html">
                    <dt><img src="../../../img/imgs/pcon1.png" width="100" height="100"/></dt>
                    <dd>
                        <h3>我要寄件</h3>
                        <p>运输快捷，经济实用</p>
                    </dd>
                </a>
            </dl>
            <dl>
                <a href="../../../../../../../../Desktop/快递网页/product.html">
                    <dt><img src="../../../img/imgs/pcon2.png" width="100" height="100"/></dt>
                    <dd>
                        <h3>运费时效查询</h3>
                        <p>安全保价，放心托运</p>
                    </dd>
                </a>
            </dl>
            <dl>
                <a href="../../../../../../../../Desktop/快递网页/product.html">
                    <dt><img src="../../../img/imgs/pcon3.png" width="100" height="100"/></dt>
                    <dd>
                        <h3>网点查询</h3>
                        <p>运输快捷，经济实用</p>
                    </dd>
                </a>
            </dl>
            <dl>
                <a href="../../../../../../../../Desktop/快递网页/product.html">
                    <dt><img src="../../../img/imgs/pcon4.png" width="100" height="100"/></dt>
                    <dd>
                        <h3>收寄范围查询</h3>
                        <p>专业打包，暖心服务</p>
                    </dd>
                </a>
            </dl>
            <dl>
                <a href="../../../../../../../../Desktop/快递网页/product.html">
                    <dt><img src="../../../img/imgs/pcon5.png" width="100" height="100"/></dt>
                    <dd>
                        <h3>在线服务</h3>
                        <p>客户反馈，足不出户</p>
                    </dd>
                </a>
            </dl>
            <div class="clearfix"></div>
        </div><!--index-pro/-->
    </div><!--width1003/-->
    <div class="index-search">
        <div class="width1003">
            <h2 class="title">自助查询 <span>/ Self Inquiry</span></h2>


        </div><!--index-search-list/-->
        <div class="index-search-list">
            <div class="isl-box">
                <h2>订单查询</h2>
                <form action="/list.html">

                    <div class="islinput"><input type="text" name="serialNumber" placeholder="请输入订单号"/></div>
                    <div class="islsub"><input type="submit" value="查询"/></div>
                </form>
            </div>
        </div><!--index-search-list/-->
        <div class="clearfix"></div>
    </div><!--index-search/-->
</div><!--index-search/-->
<div class="width1003">
    <h2 class="title">新闻快讯 <span>/ News</span></h2>
    <div class="index-new">
        <ul class="new fl">
            <li>
                <a href="../../../../../../../../Desktop/快递网页/newinfo.html">习近平会见奥巴马:中美应坚持不冲突不对抗</a><span>2018-11-30</span>
            </li>
            <li><a href="../../../../../../../../Desktop/快递网页/newinfo.html">传统出租公司加速进军专车市场 逆袭</a><span>2018-11-30</span>
            </li>
            <li><a href="../../../../../../../../Desktop/快递网页/newinfo.html">中纪委秒杀8“虎”：从抓到通报最</a><span>2018-11-30</span>
            </li>
            <li><a href="../../../../../../../../Desktop/快递网页/newinfo.html">村民阻运煤专线施工被关铁笼
                官方：自</a><span>2018-11-30</span></li>
            <li><a href="../../../../../../../../Desktop/快递网页/newinfo.html">山东邹平工厂煤气泄致17人中毒
                目前已</a><span>2018-11-30</span></li>
            <li>
                <a href="../../../../../../../../Desktop/快递网页/newinfo.html">分期乐CEO肖文杰：做理性的创业者绝不</a><span>2018-11-30</span>
            </li>
            <li><a href="../../../../../../../../Desktop/快递网页/newinfo.html">桑兰晒赴美面签申请自证清白
                称未申请政治</a><span>2018-11-30</span></li>
        </ul>
        <div class="inde-new-img fr">
            <img src="../../../img/imgs/n1.png"/>
        </div>
        <div class="clearfix"></div>
    </div><!--index-new/-->
</div><!--width1003/-->
<div class="links">
    <div class="width1003">
        <h2 class="title">合作伙伴 <span>/ Partners</span></h2>
        <ul>
            <li><a href="javascript:;"><img src="../../../img/imgs/link1.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link2.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link3.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link4.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link5.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link6.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link7.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link8.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link9.jpg"/></a></li>
            <li><a href="javascript:;"><img src="../../../img/imgs/link1.jpg"/></a></li>
            <div class="clearfix"></div>
        </ul>
    </div><!--width1003/-->
</div><!--links/-->
</div><!--content/-->
<footer>
    <div class="width1003">
        <ul>
            <li class="ft-title">服务大厅</li>
            <li><a href="../../../../../../../../Desktop/快递网页/service.html">常识</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/service.html">新手入门</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/tousu.html">投诉建议</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/download.html">下载中心</a></li>
        </ul>
        <ul>
            <li class="ft-title">自助查询</li>
            <li><a href="../../../../../../../../Desktop/快递网页/search.html">运单查询</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/search2.html">网点查询</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/search3.html">货物追踪</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/search4.html">订单查询</a></li>
        </ul>
        <ul>
            <li class="ft-title">产品与服务</li>
            <li><a href="../../../../../../../../Desktop/快递网页/product.html">快运产品</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/product.html">定制产品</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/product.html">增值服务</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/product.html">整车转运</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/product.html">仓储物流</a></li>
        </ul>
        <ul>
            <li class="ft-title">加入我们</li>
            <li><a href="../../../../../../../../Desktop/快递网页/join.html">加盟指南</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/join.html">在线加盟</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/join.html">人才服务</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/job.html">人才招聘</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/job.html">在线招聘</a></li>
        </ul>
        <ul>
            <li class="ft-title">新闻公告</li>
            <li><a href="../../../../../../../../Desktop/快递网页/news.html">新闻</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/news.html">公告</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/news.html">行业动态</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/news.html">企业视频</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/news.html">企业微博</a></li>
        </ul>
        <ul>
            <li class="ft-title">走进我们</li>
            <li><a href="../../../../../../../../Desktop/快递网页/about.html">我们的简介</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/about.html">我们的历程</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/about.html">我们的文化</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/about.html">我们的品牌</a></li>
            <li><a href="../../../../../../../../Desktop/快递网页/contact.html">联系我们</a></li>
            <li><a href="javascript:;">企业邮箱登陆</a></li>
            <li><a href="javascript:;">十七快运系统登陆</a></li>
        </ul>
        <div class="footcontact">
            <h2 class="ft-title">联系我们</h2>
            <div class="fttext">
                咨询热线：021—39927055、4001001717<br/>
                总部地址：上海市嘉定区马陆浏翔公路2158号<br/>
                官方网站：www.56ky.cn
            </div>
            <dl>
                <dt><img src="../../../img/imgs/weixin.jpg" width="90" height="91"/></dt>
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
    Copyright © 2019 Wliu Co.,Ltd. 粤ICP备00000000号 佛山市禅城区八嘎亚路2222号
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../../../js/jss/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../../js/order/bootstrap.min.js"></script>
<script src="../../../js/jss/style.js"></script>
<!--焦点轮换-->
<script src="../../../js/jss/jquery.excoloSlider.js"></script>
<script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true
    });


</script>

<script type="text/javascript">
    $(function () {
        //导航定位
        $(".nav li:eq(0) a:first").addClass("navCur");
    })
</script>

</body>

</html>