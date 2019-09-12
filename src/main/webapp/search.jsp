<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="netonemusic.com.entity.User" %><%--
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
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src='js/musiclist-js/jquery-1.12.4.min.js'></script>
    <link rel="stylesheet" href="css/myMusiccss/base.css"/>
    <link rel="stylesheet" href="css/myMusiccss/login.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" type="text/css" href="css/search/search.css">
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
<script type="text/javascript">
    // 播放按钮
    $(function () {
        $(".palybnt").click(function (){
            console.log($(this).attr("play-id"));
            var  url=$(this).attr("play-id");
            var iframe2 = window.parent.document.getElementById('iframe2');
            var audio=iframe2.contentDocument.getElementById("audio");
            audio.src=url;
            alert(audio.src);
            audio.play();
        })
    })
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
                <li><a href="#"><i class="icon-phone"></i><em>我的主页</em></a></li>
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
        <%
        }else{
        %>
        <div class="deng" id="deng">
            <img src="<%=user.getUserAvatar()%>" class="img-circle" style= "border-radius: 20px;width: 40px;height: 40px;margin-top: -15px">
        </div>
        <script type="text/javascript">
            $('#login-main').hide();
        </script>
        <%
            }
        %>
    </div>



</div>
<script src="js/myMusic-js/topBar.js"></script>
<div class="redBar">
    <div class="w">
    </div>
</div>

<!--main的开始-->
<div class="section2" >
    <div class="wrap2">
        <div class="wrap22" >
            <%--搜索框--%>
            <div class="row" style=" margin-left: 260px;">
                <div class="col-lg-6">
                    <div class="input-group">
                        <input type="text" id="Keyword" style="width: 276px;" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" id="search-bnt" type="button">Go!</button>
                        </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
            <div class="m-search">
                <div class="search-title">
                    搜索“${Keyword}”，结果如下
                </div>
                <%--导航栏--%>
                <div class="btn-group btn-group-justified" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default" id="single-bnt">单曲</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default" id="singer-bnt">歌手</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default" id="cd-bnt">专辑</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default" id="songlist-bnt">歌单</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default" id="user-bnt">用户</button>
                    </div>
                </div>

                <%--单曲结果--%>
                <div class="single-result" style="display: block" id="single-result">
                    <div class="musicrank">
                        <table class="table table-striped">
                            <tr style="">
                                <th class="heard1">
                                    1
                                    <a href="#"><span class="palybnt"></span></a>
                                </th>
                                <th class="heard2">
                                    歌曲1
                                </th>
                                <th class="heard3">
                                    李健
                                </th>
                                <th>
                                    3：50
                                </th>
                                <th>
                                    cd1
                                </th>
                            </tr>

                            <c:forEach items="${searchSong}" var="songVo" varStatus="status">
                                <tr>
                                    <td class="heard1">
                                            ${status.index+1}
                                        <a href="#"><span class="palybnt" play-id="${songVo.song.songUrl}"></span></a>
                                    </td>
                                    <td class="heard2"><a href="singlesong?songId=${songVo.song.songId}">${songVo.song.songName}</a></td>
                                    <th class="heard3">
                                        <a href="singlesinger?singerId=${songVo.song.singerId}">${songVo.singerName}</a>
                                    </th>
                                    <td>${songVo.song.songTime}</td>
                                    <td><a href="singlecd?cdId=${songVo.song.cdId}">${songVo.cdName}</a></td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>
                </div>

                <%--歌手结果--%>
                <div class="singer-result" style="display: none" id="singer-result">
                    <div class="singers">
                        <ul style="margin-left: -24px">
                            <li class="singers-li">
                                <div class="singer-img">
                                    <a>
                                        <img src="img/singerimg/隔壁老樊.jpg">
                                    </a>
                                </div>
                                <p>
                                    <a href="#">隔壁老樊</a>
                                    <%--<span><i></i></span>--%>
                                </p>
                            </li>

                            <c:forEach items="${searchSinger}" var="singer" varStatus="status">
                                <li class="singers-li">
                                    <div class="singer-img">
                                        <a href="singlesinger?singerId=${singer.singerId}">
                                            <img src="${singer.singerAvatar}" >
                                        </a>
                                    </div>
                                    <p>
                                        <a href="singlesinger?singerId=${singer.singerId}">${singer.singerName}></a>
                                            <%--<span><i></i></span>--%>
                                    </p>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>

                <%--歌单结果--%>
                <div class="songlist-result" style="display: none" id="songlist-result">
                    <div class="songlists">
                        <table class="table table-striped">
                            <tr class="songlist-tr">
                                <td class="songlist-heard1" style="padding-top: 20px;">
                                    <a href="#"><span class="palybnt2"></span></a>
                                </td>
                                <td class="songlist-heard2" >
                                    <img src="img/indeximg/default_album.jpg">
                                </td>
                                <td class="songlist-heard3" >
                                    歌单测试1
                                </td>
                                <td class="songlist-heard4" >
                                    by 77
                                </td>
                                <td class="songlist-heard4" >
                                    收藏0次
                                </td>
                                <td class="songlist-heard4" >
                                    收听0次
                                </td>
                            </tr>

                            <c:forEach items="${searchSonglist}" var="songlistVo" varStatus="status">
                                <tr class="songlist-tr">
                                    <td class="songlist-heard1" style="padding-top: 20px;">
                                        <a href="#"><span class="palybnt2"></span></a>
                                    </td>
                                    <td class="songlist-heard2" >
                                        <a href="singlesonglist?songlistId=${songlistVo.songlist.songlistId}"><img src="${songlistVo.songlist.songlistUrl}"></a>
                                    </td>
                                    <td class="songlist-heard3" >
                                        <a href="singlesonglist?songlistId=${songlistVo.songlist.songlistId}">${songlistVo.songlist.songlistName}</a>
                                    </td>
                                    <td class="songlist-heard4" >
                                        by <a href="homepage?userId=${songlistVo.songlist.userId}">${songlistVo.userName}</a>
                                    </td>
                                    <td class="songlist-heard4" >
                                        收藏${songlistVo.songlist.collectionCount}次
                                    </td>
                                    <td class="songlist-heard4" >
                                        收听10次
                                    </td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>
                </div>

                <%--用户结果--%>
                <div class="user-result" style="display: none" id="user-result">
                    <div class="users">
                        <table>
                            <tr class="users-tr">
                                <td class="user-img">
                                    <img src="img/Myimg/userAvatar/user2.jpg">
                                </td>
                                <td class="user-msg">
                                    <div class="name">
                                        <a href="#">dasd</a>
                                    </div>
                                    <div class="sign">
                                        dasd
                                    </div>
                                </td>
                                <td class="follow-bnt">
                                    <button class="btn btn-default" type="submit">+关注</button>
                                </td>
                                <td class="follow-bnt">
                                    歌单：11
                                </td>
                                <td class="follow-bnt">
                                    粉丝：11
                                </td>
                            </tr>

                            <c:forEach items="${searchUser}" var="user" varStatus="status">
                                <tr class="users-tr" <c:if test="${status.count%2==0}">bgcolor="#f9f9f9"</c:if> align="left">
                                    <td class="user-img">
                                        <a href="homepage?userId=${user.userId}"><img src="${user.userAvatar}"><a/>
                                    </td>
                                    <td class="user-msg">
                                        <div class="name">
                                            <a href="homepage?userId=${user.userId}">${user.userName}</a>
                                        </div>
                                        <div class="sign">
                                            ${user.userSign}
                                        </div>
                                    </td>
                                    <td class="follow-bnt">
                                        <button class="btn btn-default" type="submit">+关注</button>
                                    </td>
                                    <td class="follow-bnt">
                                        歌单：2
                                    </td>
                                    <td class="follow-bnt">
                                        粉丝：11
                                    </td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>
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

</body>
<script src="js/myMusic-js/tools.js"></script>
<script src="js/myMusic-js/login.js"></script>
<script src="js/footer-js.js"></script>
<script src="js/myjs/search.js"></script>
</html>
