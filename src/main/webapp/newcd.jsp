<%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/21
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>网易云音乐</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/rankcss/ranking list.css"/>
    <link rel="stylesheet" href="css/rankcss/footer-css.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/login-block.css"/>
    <link rel="stylesheet" href="css/homepagecss/homepage.css">
</head>
<body style="height: auto;color: #2a2a2a">
<script type="text/javascript">
    var iframe1 = window.parent.document.getElementById('iframe1');
    window.onload = function() {
        iframe1.height=0;
        var clientHeight = document.body.clientHeight,
            scrollHeight = document.body.scrollHeight;
        actualHeight = Math.max(clientHeight, scrollHeight);
        iframe1.height = actualHeight;
    };
</script>
<!--顶部导航开始-->
<div class="m-top">
    <div class="m-top-pass">
        <div class="m-top-nav">
            <div class="m-top-nav-logo">
                <a href="#"></a>
            </div>
            <div class="m-top-nav-list">
                <ul>
                    <li><a href="index.html" style="color:#fff">发现音乐</a></li>
                    <li></li>
                    <li><a href="myMusic.html" style="color:#fff">我的音乐</a></li>
                    <li></li>
                    <li><a href="friends.html" style="color:#fff">朋友</a></li>
                    <li></li>
                    <li><a href="demo.html" style="color:#fff">商城</a></li>
                    <li></li>
                    <li>音乐人</li>
                    <li></li>
                    <li>
                        <a href="load.html" style="color:#fff">下载客户端</a>
                        <span class="hot"></span>
                    </li>
                </ul>
            </div>
            <div class="m-top-nav-input">
                <input type="txt" value="单曲/歌手/专辑/歌单/MV/用户" class="inp"/>
                <span class="search"></span>
            </div>
            <div class="m-top-nav-login" id="deng">
                <div class="login-out">
                    <a href="#">登录</a>
                    <span class="trigon1"></span>
                </div>
                <div class="login-block" id="loginBlock">
                    <ul>
                        <li><a href="#"><i class="icon-phone"></i><em>手机号登陆</em></a></li>
                        <li><a href="#"><i class="icon-wechart"></i><em>微信登陆</em></a></li>
                        <li><a href="#"><i class="icon-qq"></i><em>QQ登陆</em></a></li>
                        <li><a href="#"><i class="icon-weibo"></i><em>微博登陆</em></a></li>
                        <li><a href="#"><i class="icon-nest"></i><em>网易邮箱账号登陆</em></a></li>
                    </ul>
                    <div class="sanjiaojian"></div>
                </div>
                <!--<div class="login-over">-->
                <!--<a href="#">登录</a>-->
                <!--<span class="trigon2"></span>-->
                <!--</div>-->
            </div>
            <!-- 登录框 -->
            <!--<div class="m-top-nav-login-case">-->
            <!--<ul>-->
            <!--<li>-->
            <!--<a href="#">-->
            <!--<i></i>-->
            <!--<span>手机登录</span>-->
            <!--</a>-->
            <!--</li>-->
            <!--<li>-->
            <!--<a href="#">-->
            <!--<i></i>-->
            <!--<span>微信登录</span>-->
            <!--</a>-->
            <!--</li>-->
            <!--<li>-->
            <!--<a href="#">-->
            <!--<i></i>-->
            <!--<span>QQ登录</span>-->
            <!--</a>-->
            <!--</li>-->
            <!--<li>-->
            <!--<a href="#">-->
            <!--<i></i>-->
            <!--<span>新浪微博登录</span>-->
            <!--</a>-->
            <!--</li>-->
            <!--<li>-->
            <!--<a href="#">-->
            <!--<i></i>-->
            <!--<span>网易邮箱账号登录</span>-->
            <!--</a>-->
            <!--</li>-->
            <!--</ul>-->
            <!--</div>-->
        </div>
    </div>
    <div class="m-bottom-nav">
        <div class="m-bottom-nav-list">
            <ul>
                <li>
                    <a href="index.html">推荐</a>
                    <span></span>
                    <i></i>
                </li>
                <li>
                    <a href="javascript:location.reload()">排行榜</a>
                    <span></span>
                </li>
                <li>
                    <a href="musiclist.html">歌单</a>
                    <span></span>
                </li>
                <li>
                    <a href="discover.html">主播电台</a>
                    <span></span>
                </li>
                <li>
                    <a href="singer.html">歌手</a>
                    <span></span>
                </li>
                <li>
                    <a href="#">新碟上架</a>
                    <span></span>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--顶部导航结束-->
<!--主体部分的开始-->
<div class="section2">
    <div class="wrap2"style="padding: 40px;">
        <div class="wrap22" >

            <div class="main">

            </div>
        </div>
    </div>
</div>


<!--底部开始-->

<div class="g-ft">
    <div class="m-ft">
        <div class="wrap f-cb">
            <div class="copy">
                <p>
                    <a href="#" class="s-fc4">关于网易</a>
                    <span class="line"></span>
                    <a href="#" class="s-fc4">客户服务</a>
                    <span class="line"></span>
                    <a href="#" class="s-fc4">服务条款</a>
                    <span class="line"></span>
                    <a href="#" class="s-fc4">网站导航</a>
                    <span class="line"></span>
                    <a href="#" class="s-fc4">意见反馈</a>
                </p>
                <p class="s-fc3">
                    <span class="sep">网易公司版权所有©1997-2017</span>
                    杭州乐读科技有限公司运营 :
                    <a href="#" class="s-fc3">浙网文[2015] 0415-135号</a>
                </p>
            </div>
            <ul class="enter f-fr">
                <li>
                    <a href="#" class="logo logo-musician f-tid"></a>
                </li>
                <li>
                    <a href="#" class="logo logo-topic f-tid"></a>
                </li>
                <li>
                    <a href="#" class="logo logo-midea f-tid"></a>
                </li>
                <li>
                    <a href="#" class="logo logo-reward f-tid"></a>
                </li>
            </ul>
            <div class="wrap.cfb::after"></div>
        </div>
        <!--<a href="#" class="m-back" id="g_backtop" title="回到顶部">回到顶部</a>-->
    </div>
</div>


<!--底部结束-->
<script src="js/rank-js/jquery-1.12.4.min.js"></script>
<script src="js/rank-js/ranking list.js"></script>
<script src="js/rank-js/common.js"></script>
<script src="js/rank-js/footer-js.js"></script>
</body>
</html>
<script src="js/login-block.js"></script>
