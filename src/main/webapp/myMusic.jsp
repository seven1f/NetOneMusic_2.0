<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="netonemusic.com.entity.User" %>
<%@ page import="netonemusic.com.entity.SonglistVo" %><%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/21
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <script src="js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <%--<script src="js/rank-js/jquery-1.12.4.min.js"></script>--%>
    <link rel="stylesheet" href="css/myMusiccss/base.css"/>
    <link rel="stylesheet" href="css/myMusiccss/login.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" type="text/css" href="css/myMusiccss/myMusic.css">
    <script src="js/animate.js"></script>
    <title>网易云音乐</title>
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
<div class="top">
    <div class="w">
        <div class="logo">

        </div>
        <div class="neirong" id="nr">
            <ul>
                <li>
                    <a href="index.jsp" onclick="window.parent.document.getElementById('iframe1').src='index.jsp';">发现音乐</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="javascript:location.reload()">我的音乐</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="friends.html">朋友</a>
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
                <li><a href="homepage?userId=myself"><i class="icon-phone"></i><em>我的主页</em></a></li>
                <li><a href="mysettings.jsp" onclick="window.parent.document.getElementById('iframe1').src='mysettings.jsp';"><i class="icon-wechart"></i><em>个人设置</em></a></li>
                <li><a href="loginout"><i class="icon-qq"></i><em>退出</em></a></li>
            </ul>
            <div class="sanjiaojian"></div>
        </div>


    </div>
    <div class="seek">
        <input type="text" id="text" value="单曲/歌手/专辑/歌单/MV/用户"/>
    </div>
    <div class="hot">
    </div>

    <div>
    <%
        User user=(User) session.getAttribute("user");
        if(user==null){
    %>
       <div class="deng">
            <a href="#" >登录</a>
        </div>
    </div>

    </div>
    <script src="js/myMusic-js/topBar.js"></script>
    <div class="redBar">
        <div class="w">
            <div class="redsanjiao"></div>
        </div>
    </div>
    <!--main的开始-->
    <div class="login-main" id="login-main" style="display:block;" >
        <div class="login-slider-main w">
            <div class="login-pglg"style="height: 374px;" >
                <div class="login-pic" id="loginPic">
                    <h2>登录网易云音乐</h2>
                    <a href="#" class="btn"  id="link" >立即登录</a>
                </div>
            </div>
        </div>
    </div>

<%
    }else{
    %>
        <div class="deng" id="deng">
            <img src="<%=user.getUserAvatar()%>"  class="img-circle" style= "border-radius: 20px;width: 40px;height: 40px;margin-top: -15px">
        </div>
    </div>

    </div>
    <script src="js/myMusic-js/topBar.js"></script>
    <div class="redBar">
        <div class="w">
            <div class="redsanjiao"></div>
        </div>
    </div>
<!--main的开始-->
<div class="section2" id="section2" style="display:block " >
    <div class="wrap2">
        <div class="wrap22" >
           <%--左边导航栏开始--%>
            <div class="side">
                <div class="sidestart">
                    <h2 id="mysinger-bnt" >
                        <a >我的歌手</a>
                    </h2>
                    <div class="create">
                        <h2 >
                            <a id="">创建的歌单</a>
                            <a class="btn btn-default" href="#" data-toggle="modal" data-target="#myModal" >新建</a>

                        </h2>
                        <ul id="mycreatesonglist">
                            <li>
                                <div class="data" >
                                    <div class="left" >
                                        <a href="mymusicplay?songlistId=1"><img src="img/Myimg/songlist/gedan1.jpg"></a>
                                    </div>
                                    <p><a href="#">这是样式歌单</a></p>
                                    <p>10首歌曲
                                        <span class="delete" style="display: none">
                                            <a id="delete-img" ><img src="img/Myimg/Smallicon/delete.jpg" ></a>
                                        </span>
                                    </p>
                                </div>
                            </li>

                            <c:forEach items="${mycreateSl}" var="songlist">
                                <li >
                                    <div class="data" >
                                        <div class="left" >
                                            <a href="mymusicplay?songlistId=${songlist.songlistId}" ><img src="${songlist.songlistUrl}"></a>
                                        </div>
                                        <p><a href="mymusicplay?songlistId=${songlist.songlistId}">${songlist.songlistName}</a></p>
                                        <p>收藏${songlist.collectionCount}次
                                            <span class="delete" style="display: none" del-id=${songlist.songlistId}>
                                            <a><img src="img/Myimg/Smallicon/delete.jpg"></a>
                                            </span>
                                        </p>
                                    </div>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                    <div class="create">
                        <h2 >
                            <a >收藏的歌单</a>
                        </h2>
                        <ul id="mycollectionesonglist">
                            <li >
                                <div class="data" >
                                    <div class="left">
                                        <a><img src="img/Myimg/songlist/gedan1.jpg"></a>
                                    </div>
                                    <p><a href="#">这是样式歌单</a></p>
                                    <p>10首歌曲
                                        <span class="delete2" style="display: none" del-id=${songlist.songlistId}>
                                            <a><img src="img/Myimg/Smallicon/delete.jpg"></a>
                                        </span>
                                    </p>
                                </div>
                            </li>

                            <c:forEach items="${mycollectioneSl}" var="songlist">
                                <li >
                                    <div class="data" >
                                        <div class="left" >
                                            <a href="mymusicplay?songlistId=${songlist.songlistId}" ><img src="${songlist.songlistUrl}"></a>
                                        </div>
                                        <p><a href="mymusicplay?songlistId=${songlist.songlistId}">${songlist.songlistName}</a></p>
                                        <p>收藏${songlist.collectionCount}次
                                            <span class="delete2" style="display: none" del-id=${songlist.songlistId}>
                                            <a><img src="img/Myimg/Smallicon/delete.jpg"></a>
                                            </span>
                                        </p>
                                    </div>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>
            </div>
            <%--1.歌手开始 --%>
            <div class="main" id="mysinger"  style="display: none">
                <div class="radio">
                    <div class="mainh">
                        <p class="lilogo" style="margin: 0px"><a href="#">我关注的歌手</a></p>
                    </div>
                    <ul>
                        <li>
                            <a><img src="img/Myimg/userAvatar/user2.jpg"></a>
                            <div class="data">
                                <h3><a href="#">edm吊炸天</a></h3>
                                <p>by:dasdasd</p>
                            </div>
                        </li>

                        <c:forEach items="${mysinger}" var="singer">
                            <li>
                                <a href="singlesinger?singerId=${singer.singerId}"><img src="${singer.singerAvatar}"></a>
                                <div class="data">
                                    <h3><a href="singlesinger?singerId=${singer.singerId}">${singer.singerName}</a></h3>
                                    <p>${singer.singerArea}${singer.singerSex}歌手</p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <%--1.歌手结束 --%>
            <%--左边导航栏结束--%>


            <%--我的歌单开始--%>
            <%--隐藏--%>
            <div class="main"  id="mysonglist" style="display: block">
                <div class="heard">
                    <div style="padding:47px 30px 30px 39px;">
                        <%--内容开始--%>
                        <div style="width: 640px;">
                            <%--歌单图片--%>
                            <img src="${playlist.songlist.songlistUrl}" style="border:1px solid #dad1d1;padding: 2px;position: absolute">
                            <%--歌单详细信息--%>
                            <div style="width: 410px;;margin-left: 230px;">
                                <div style="width: 410px;height: 24px;margin-bottom: 12px;display: inline">
                                    <img style="position: absolute" src="img/Myimg/songlist/gedan.png"/>
                                    <div name="tit" style="margin-left: 80px">
                                        <h2 style="font-size: 20px;">${playlist.songlist.songlistName}</h2>
                                    </div>
                                </div>
                                <div style="width: 410px;height: 35px;margin-bottom: 20px;margin-top: 20px">
                                    <img style="margin-top:  px" src="${playlist.userAvatar}">
                                    <span style="font-size: 15px;padding: 15px"><a  href="#">${playlist.userName}</a></span>
                                    <img src="img/Myimg/Smallicon/star.png">
                                    <span style="font-size: 12px;color: #81a69e">${playlist.songlist.creationDate}&nbsp;创建</span>
                                </div>
                                <div style="height: 31px;margin-bottom: 25px;position: relative">
                                    <span class="btns11">播放</span>
                                    <span class="btns21">+</span>
                                    <span class="btns31" style="color: #00000052">
                                收藏歌单
                            </span>
                                    <span class="btns41">分享</span>
                                    <span class="btns51">下载</span>
                                    <span class="btns61">(69128)</span>
                                </div>
                                <div style="font-size: 15px;color: #81a69e" >
                                    <div style="margin-bottom: 8px">
                                        <a>标签：</a>
                                        <a style="color: #81a69e" href="#">${playlist.songlist.songlistType}</a>
                                    </div>
                                    <div>
                                      ${playlist.songlist.songlistIntroduce}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mainh" style=" padding-top: 0px;">
                        <p class="lilogo"><a >歌曲列表</a></p>
                    </div>
                </div>
                <div class="musicrank">
                    <c:if test="${not empty playSongs}">
                    <table id="playsongtable" class="table table-striped" style="margin-bottom: 0px">
                        <tr>
                            <th class="first1" style="border: 1px solid #ccc;">
                                <div class=""></div>
                            </th>
                            <th class="first2" style="border: 1px solid #ccc;">
                                <div class="">歌曲标题</div>
                            </th>
                            <th class="first3" style="border: 1px solid #ccc;">
                                <div class="">时长</div>
                            </th>
                            <th class="first4" style="border: 1px solid #ccc;">
                                <div class="">歌手</div>
                            </th>
                            <th class="first5" style="border: 1px solid #ccc;">
                                <div class="">专辑</div>
                            </th>
                        </tr>
                        <tr class="even">
                            <td>
                                <div class="hd">
                                    <span class="palybnt"></span>
                                    <span class="num">1</span>
                                </div></td>
                            <td>
                                <div class="songtitle">
                                    <a href="singlesong?songId=">22</a>
                                </div>
                            </td>
                            <td>
                                <div class="songtime">
                                    <a>33</a>
                                </div>
                            </td>
                            <td>
                                <div class="singer">
                                    <a href="singlesinger?singerId=">121</a>
                                </div>
                            </td>
                            <td>
                                <div class="cd">
                                    <a href="cd?cdId=">4324</a>
                                    <div class="deleteSong" style="display: none">
                                        <a><img src="img/Myimg/Smallicon/delete.jpg" ></a>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        <c:forEach items="${playSongs}" var="songVo" varStatus="status" >
                            <tr class="even">
                                <td>
                                    <div class="hd">
                                        <span class="palybnt"></span>
                                        <span class="num">${status.index+1}</span>
                                    </div></td>
                                <td>
                                    <div class="songtitle">
                                        <a href="singlesong?songId=${songVo.song.songId}">${songVo.song.songName}</a>
                                    </div>
                                </td>
                                <td>
                                    <div class="songtime">
                                        <a>${songVo.song.songTime}</a>
                                    </div>
                                </td>
                                <td>
                                    <div class="singer">
                                        <a href="singlesinger?singerId=${songVo.song.singerId}">${songVo.singerName}</a>
                                    </div>
                                </td>
                                <td>
                                    <div class="cd">
                                        <a href="cd?cdId=${songVo.song.cdId}">${songVo.cdName}</a>
                                        <c:if test="${user.userId==playlist.songlist.userId}">
                                            <div class="deleteSong" dele-id="${songVo.song.songId}" style="display: none">
                                                <a><img src="img/Myimg/Smallicon/delete.jpg" ></a>
                                            </div>
                                        </c:if>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                    </c:if>
                    <c:if test="${empty playSongs}">
                        <img src="img/Myimg/Smallicon/emptysong.png">
                    </c:if>
                </div>
                <%--评论开始--%>
                <div class="mainh">
                    <p class="lilogo"><a href="#">评论</a></p>
                </div>

                <div class="mainh" style="border-bottom: 0;height: 98px;position: relative;margin-top:0;">
                    <textarea style="width: 600px; height: 74px; margin: 0px 0px 0px 50px;resize:none;" placeholder="评论" name="comment"></textarea>
                    <input type="button" class="remarkinput" value="提交">
                </div>
                <div class="remarkmain">
                    <h3>精彩评论</h3>
                    <%--精彩评论开始--%>
                    <div class="remark">
                        <div class="head">
                            <a href="#">
                                <img src="img/Myimg/userAvatar/user1.jpg">
                            </a>
                        </div>
                        <div class="cntwrap">
                            <div class="f-brk">
                                <a href="#">小7</a>
                                "：这里是评论区，这里是评论区这里是评论区这里是评论区这里是评论区这里是评论区"
                            </div>
                        </div>
                    </div>

                </div>
                <%--评论结束--%>
            </div>
            <%--我的歌单结束--%>
        </div>
    </div>
</div>
    <%
        }
    %>


<!--login-vip的开始-->
<div id="loginVip" class="login-vip"  >
    <div id="loginTitle" class="login-title">登录
        <span class="close-login-bg">
            <a id="closeBtn" href="javascript:void(0);" class="close-login">&nbsp;&nbsp;</a>
        </span>
    </div>
    <div class="login-input-content">
        <div class="login-input">
            <div class="iphone-input" id="iphone-input"><a href="#">手机号登录</a></div>
            <div class="zhuce-input" id="zhuce-input"><a href="#">注&nbsp;&nbsp;&nbsp;册</a></div>
            <div id="login-Btn" class="login-button">
                <div class="weico"></div>
                <a href="#" class="weico-login">微信登录</a>
                <div class="qq"></div>
                <a href="#" class="qq-login">QQ登录</a>
                <div class="sina"></div>
                <a href="#" class="sina-login">微博登录</a>
                <div class="wyiemail"></div>
                <a href="#" class="wyemail-login">网易邮箱账号登录</a>
            </div>
        </div>
    </div>
</div>
<!--login-vip的结束-->

<%--登入框开始--%>
<div id="phonelogin" class="login-vip" style="display: none;" >
    <div id="phoneloginTitle" class="login-title">登录
        <span class="close-login-bg">
            <a id="logincloseBtn" href="javascript:void(0);" class="close-login">&nbsp;&nbsp;</a>
        </span>
    </div>
    <div class="login-input-content">
       <div style="width: 260px;padding: 30px 0 43px;margin: 0 auto;">
           <input type="text" name="userId" id="userId" placeholder="请输入手机号" style="width: 230px;height: 30px;padding: 5px 6px 6px 6px;border: 1px solid #cdcdcd;margin-top: 20px ">
           <input type="password" name="userPassword" id="userPassword" placeholder="请输入密码" style="width: 230px;height: 30px;padding: 5px 6px 6px 6px;border: 1px solid #cdcdcd;margin-top: 20px "><br>
           <div id="error1" style="color: red;font-size: 15px;margin-top: 10px;display:none"><p>⚠输入正确的手机号</p></div>
           <div id="error2"style="color: red;font-size: 15px;margin-top: 10px;display:none"  ><p >⚠账号或密码错误</p></div>
           <button type="button" id="loginbnt" class="btn btn-primary" style="margin-top: 20px;width: 230px;">登录</button><br>
           <a id="returnregister" href="javascript:void(0);"  style="float: right;margin-right: 20px;margin-top: 20px">没有账号？免费注册></a>
       </div>
        <div style="height: 80px">
        </div>
    </div>
</div>
<%--登入框结束--%>

<%--注册框开始--%>
<div id="register" class="login-vip"  >
    <div id="registerTitle" class="login-title">注册
        <span class="close-login-bg">
            <a id="registerclosebtn" href="javascript:void(0);" class="close-login">&nbsp;&nbsp;</a>
        </span>
    </div>
    <div class="login-input-content">
        <div style="width: 260px;padding: 30px 0 43px;margin: 0 auto;">
            手机号：<br>
            <input type="text" name="userId" id="registerId"  placeholder="请输入手机号" style="width: 230px;height: 30px;padding: 5px 6px 6px 6px;border: 1px solid #cdcdcd;margin-top:5px;margin-bottom: 15px "><br>
            密码：（不少于六位字符）<br>
            <input type="password" name="userPassword" id="registerPwd"  placeholder="请输入密码" style="width: 230px;height: 30px;padding: 5px 6px 6px 6px;border: 1px solid #cdcdcd;margin-top: 5px"><br>
            <div id="error3" style="color: red;font-size: 15px;margin-top: 10px;display:none"><p>⚠输入正确的手机号</p></div>
            <div id="error4" style="color: red;font-size: 15px;margin-top: 10px;display:none" ><p >⚠密码不少于六位字符</p></div>
            <div id="error5" style="color: red;font-size: 15px;margin-top: 10px;display:none" ><p >⚠此手机号已经注册</p></div>
            <button type="button" id="registerbtn" class="btn btn-primary" style="margin-top: 30px;width: 230px;">注册</button><br>
            <a href="javascript:void(0);" id="returnlogin" style="float: left" >返回登入></a>
        </div>
        <div style="height: 80px">

        </div>
    </div>
</div>
<%--注册框结束--%>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 480px;margin-top: 200px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">新建歌单</h4>
            </div>
            <div class="modal-body" style="padding: 0px">
                <div class="newsonglist">
                    歌单名：<input type="text" id="songlistname">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="creatnew" class="btn btn-primary">创建</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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

</body>
<script src="js/myMusic-js/tools.js"></script>
<script src="js/myMusic-js/login.js"></script>
<script src="js/footer-js.js"></script>
<script src="js/myjs/register"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
</html>
