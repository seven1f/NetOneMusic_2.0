<%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/21
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>网易云音乐</title>
    <link rel="stylesheet" href="css/friendscss/base.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/friendscss/friends.css"/>
    <script src="js/animate.js"></script>
    <script src="js/rank-js/jquery-1.12.4.min.js"></script>
    <script src="js/friends/content.js"></script>
</head>
<body>
<div class="top">
    <div class="w">
        <div class="logo">

        </div>
        <div class="neirong" id="nr">
            <ul>
                <li>
                    <a href="index.html">发现音乐</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="myMusic.html">我的音乐</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="javascript:location.reload()">朋友</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="demo.html">商城</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="#">音乐人</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="load.html">下载客户端</a>
                </li>
            </ul>
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

    </div>
    <div class="seek">
        <input type="text" id="text" value="单曲/歌手/专辑/歌单/MV/用户"/>
    </div>
    <div class="hot">

    </div>
    <div class="deng" id="deng">
        <a href="#" >登录</a>
    </div>
    <div class="daosan" id="daosan">

    </div>

</div>
<script src="js/friends/topBar.js"></script>
<div class="redBar">
    <div class="w">
        <div class="redsanjiao"></div>
    </div>
</div>
<div class="content">
    <div class="w">
        <div class="notlogin">
            <a href="javascript:void(0)" id="login"></a>
        </div>
        <div class="login-block" id="login-block">
            <div class="header">
                <span>登陆</span>
                <i id="closeContent">x</i>
            </div>
            <div class="login-block-content">
                <div class="u-main">
                    <div class="u-pic"></div>
                    <a href="#" class="phone-login">手机号登陆</a>
                    <a href="" class="submit">注册</a>
                </div>
                <div class="u-alt">
                    <ul>
                        <li><a href="#"><i class="icon-wechart"></i>微信登陆</a></li>
                        <li><a href="#"><i class="icon-qq"></i>QQ登陆</a></li>
                        <li><a href="#"><i class="icon-weibo"></i>微博登陆</a></li>
                        <li><a href="#"><i class="icon-nest"></i>网易邮箱账号登陆</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="g-ft">
    <div class="m-ft">
        <div class="w f-cb">
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

<script src="js/footer-js.js"></script>
</body>
</html>
