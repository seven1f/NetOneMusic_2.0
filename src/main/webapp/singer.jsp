<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="netonemusic.com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="netonemusic.com.entity.Singer" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/21
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>网易云音乐</title>
    <link rel="stylesheet" href="css/singercss/singer.css">
    <link rel="stylesheet" href="css/singercss/base.css">
    <link rel="stylesheet" href="css/rankcss/footer-css.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/login-block.css"/>
    <link rel="stylesheet" href="css/myMusiccss/login.css">
</head>
<body>
<script type="text/javascript">
    var iframe1 = window.parent.document.getElementById('iframe1');
    window.onload = function() {
        iframe1.height=0;
        var clientHeight = document.body.clientHeight,
            scrollHeight = document.body.scrollHeight;
        actualHeight = Math.max(clientHeight, scrollHeight);
        iframe1.height =actualHeight;
    };
</script>
<!--头部开始-->
<!--顶部导航开始-->
<div class="m-top">
    <div class="m-top-pass">
        <div class="m-top-nav">
            <div class="m-top-nav-logo">
                <a href="#"></a>
            </div>
            <div class="m-top-nav-list">
                <ul>
                    <li><a href="index.jsp" style="color:#fff">发现音乐</a></li>
                    <li></li>
                    <li><a href="myMusic.jsp" style="color:#fff">我的音乐</a></li>
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
            <div class="m-top-nav-login" id="deng1">

                <div>
                    <%
                        User user=(User) session.getAttribute("user");
                        if(user==null){
                    %>
                    <div class="deng" style="margin-top: 5px">
                        <a href="myMusic.jsp"  style="color: #787878;;">登录</a>
                    </div>
                    <%
                    }else{
                    %>
                    <div class="deng" id="deng">
                        <img src="<%=user.getUserAvatar()%>" class="img-circle" style=" border-radius: 20px;width: 40px;height: 40px;margin-top: -5px;margin-left: -10px">
                    </div>
                    <script type="text/javascript">
                        $('#login-main').hide();
                    </script>
                    <%
                        }
                    %>
                </div>

                <div class="login-block" id="loginBlock">
                    <ul>
                        <li><a href="#"><i class="icon-phone"></i><em>我的主页</em></a></li>
                        <li><a href="mysettings.jsp"><i class="icon-wechart"></i><em>个人设置</em></a></li>
                        <li><a href="loginout"><i class="icon-qq"></i><em>退出</em></a></li>
                    </ul>
                    <div class="sanjiaojian"></div>
                </div>

            </div>
        </div>
    </div>
    <div class="m-bottom-nav">
        <div class="m-bottom-nav-list">
            <ul>
                <li>
                    <a href="index.jsp">推荐</a>
                    <span></span>
                    <i></i>
                </li>
                <li>
                    <a href="rankinglist" onclick="window.parent.document.getElementById('iframe1').src='rankinglist.jsp';">排行榜</a>
                    <span></span>
                </li>
                <li>
                    <a href="songlist" onclick="window.parent.document.getElementById('iframe1').src='musiclist.jsp';">歌单</a>
                    <span></span>
                </li>
                <li>
                    <a href="discover.html">主播电台</a>
                    <span></span>
                </li>
                <li>
                    <a href="singer" onclick="window.parent.document.getElementById('iframe1').src='singer.jsp';">歌手</a>
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

<!--头部结束-->

<div class="singer-box">
    <!-- 左边歌手类目制作 -->
    <div class="singer-left">
        <ul class="singer-catalog-one ">
            <li class="singer-tj"><span class="singer-zi">推荐</span></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">推荐歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">入驻歌手</a></li>

        </ul>
        <ul class="singer-catalog">
            <li class="singer-title"><span class="singer-zi">华语</span></li>
            <li class="move"><span class="singer-dot"></span><a href="findsingerbutype?singerType=华语男歌手">华语男歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="findsingerbutype?singerType=华语女歌手">华语女歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">语组合/乐队</a></li>

        </ul>
        <ul class="singer-catalog">
            <li class="singer-title"><span class="singer-zi">欧美</span></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">欧美男歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">欧美女歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">欧美组合/乐队</a></li>
        </ul>
        <ul class="singer-catalog">
            <li class="singer-title"><span class="singer-zi">日本</span></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">日本男歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">日本女歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">日本组合/乐队</a></li>
        </ul>
        <ul class="singer-catalog">
            <li class="singer-title"><span class="singer-zi">韩国</span></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">韩国男歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">韩国女歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">韩国组合/乐队</a></li>
        </ul>
        <ul class="singer-catalog">
            <li class="singer-title"><span class="singer-zi">其他</span></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">其他男歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">其他女歌手</a></li>
            <li class="move"><span class="singer-dot"></span><a href="javascript:void(0)">其他组合/乐队</a></li>
        </ul>
    </div>
    <!-- 右边 -->
    <!-- 入驻歌手制作 -->
    <div class="singer-right">
        <div class="rz-singer">
            <div class="rz-singer-title">
                <h3>入驻歌手</h3>
                <a class="singer-right-more" href="#">更多</a>
            </div>
            <ul>
                <%
                    List<Singer> ruzhuSinger=(ArrayList)request.getSession().getAttribute("ruzhuSinger");
                %>
                <c:forEach items="${ruzhuSinger}" var="singer" begin="1" end="10">
                    <li><a href="singlesinger?singerId=${singer.singerId}" onclick="window.parent.document.getElementById('iframe1').src='singlesinger.jsp';"><img src="${singer.singerAvatar}" alt=""></a>
                        <span class="singerName"><a href="singlesinger?singerId=${singer.singerId}" onclick="window.parent.document.getElementById('iframe1').src='singlesinger.jsp';">${singer.singerName}</a><i></i></span>
                    </li>
                </c:forEach>
            </ul>

        </div>
        <!-- 热门歌手 -->
        <div class="rm-singer">

            <div class="rm-singer-title">
                <h3>热门歌手</h3>
                <a class="singer-right-more" href="#">更多</a>
            </div>
            <ul>
                <%
                    List<Singer> singers=(ArrayList)request.getSession().getAttribute("singers");
                %>

                <c:forEach items="${singers}" var="singer1" begin="1" end="10">
                    <li><a href="singlesinger?singerId=${singer1.singerId}" onclick="window.parent.document.getElementById('iframe1').src='singlesinger.jsp';"><img src="${singer1.singerAvatar}" alt=""></a>
                        <span class="singerName"><a href="singlesinger?singerId=${singer1.singerId}" onclick="window.parent.document.getElementById('iframe1').src='singlesinger.jsp';">${singer1.singerName}</a><i></i></span>
                    </li>
                </c:forEach>
            </ul>

        </div>

        <!-- 右边下面的歌曲列表 -->
        <div class="singer-song" >
            <ul id="#singer-song">
                <c:forEach items="${singers}" var="singer2" begin="10" >
                    <li><a href="singlesinger?singerId=${singer2.singerId}" onclick="window.parent.document.getElementById('iframe1').src='singlesinger.jsp';">${singer2.singerName}</a><i></i></li>
                </c:forEach>
            </ul>
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

<script src="js/rank-js/jquery-1.12.4.min.js"></script>
<script src="js/rank-js/ranking list.js"></script>
<script src="js/rank-js/common.js"></script>
<script src="js/rank-js/footer-js.js"></script>




<script src="js/rank-js/jquery-1.12.4.min.js"></script>

</body>
</html>
<script src="js/login-block.js"></script>