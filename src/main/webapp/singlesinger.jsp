<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="netonemusic.com.entity.User" %>
<%@ page import="netonemusic.com.entity.Singer" %><%--
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
    <script src='js/musiclist-js/jquery-1.12.4.min.js'></script>
    <link rel="stylesheet" href="css/rankcss/ranking list.css"/>
    <link rel="stylesheet" href="css/rankcss/footer-css.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/login-block.css"/>
    <link rel="stylesheet" href="css/singlesingercss/single.css">
</head>
<body style="height: auto;color: #2a2a2a">
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
            <div class="m-top-nav-login">

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
<!--主体部分的开始-->
<div class="section2">
    <div class="wrap2">
        <div class="wrap22" >

            <%
                Singer singlesinger=(Singer)request.getSession().getAttribute("singlesinger");
            %>
            <div class="main" >
                <%--内容开始--%>
                <div style="padding:47px 30px 40px 39px;">
                   <div class="singerhead">
                       <h2><%=singlesinger.getSingerName()%></h2>
                       <img src="img/Myimg/userAvatar/张惠妹.jpg">
                       <button id="followsinger" singer-id="<%=singlesinger.getSingerId()%>" type="button" class="btn btn-default" style="position: relative;margin-top:-50px;margin-left: 550px;">关注</button>
                   </div>
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" id="hotmusic" class="btn btn-default" style="width: 213px;">热门作品</button>
                        <button type="button" id="record" class="btn btn-default" style="width: 213px;" >所有专辑</button>
                        <button type="button" id="jieshao" class="btn btn-default" style="width: 213px;">艺人介绍</button>
                    </div>

<%--热门作品开始--%>
                    <div class="popularmusic" id="popularmusic">
                        <%--热门作品开始--%>
                        <div class="heard">
                            <span class="btns11">播放</span>
                            <span class="btns21"style="left: 63px;">+</span>
                            <span class="btns31">
                        收藏热门
                    </span>
                        </div>
                        <div class="musicrank">
                            <table class="table table-striped">
                                <tr style="display: none">
                                    <th class="heard1">
                                        1
                                        <a href="#"><span class="palybnt"></span></a>
                                    </th>
                                    <th class="heard2">
                                        歌曲1
                                    </th>
                                    <th>
                                        3：50
                                    </th>
                                    <th>
                                        cd1
                                    </th>
                                </tr>

                                <c:forEach items="${singersong}" var="songVo" varStatus="status">
                                    <tr>
                                        <td class="heard1">
                                            ${status.index+1}
                                            <a href="#"><span class="palybnt" play-id="${songVo.song.songUrl}"></span></a>
                                        </td>
                                        <td class="heard2"><a href="singlesong?songId=${songVo.song.songId}">${songVo.song.songName}</a></td>
                                        <td>${songVo.song.songTime}</td>
                                        <td><a href="singlecd?cdId=${songVo.song.cdId}">${songVo.cdName}</a></td>
                                    </tr>
                                </c:forEach>

                            </table>
                        </div>
                        <%--热门作品结束--%>
                    </div>
<%--热门作品结束--%>

<%--所有专辑开始--%>
                    <div class="allrecord" id="allrecord">
                        <ul>
                            <li>
                                <a href="#"><img src="img/Myimg/record/recordtest.jpg"></a>
                                <p><a href="#">鸡你太美</a></p>
                                <span>2019.8.23</span>
                            </li>
                        </ul>
                    </div>
<%--所有专辑结束--%>

<%--艺人介绍开始--%>
                    <div class="introduction" id="introduction">
                        <h2>简介</h2>
                        <p>
                            <%=singlesinger.getSingerIntroduce()%>
                        </p>
                    </div>
<%--艺人介绍结束--%>
                    <div class="introduction"></div>
                </div>
                <div class="clearFix"></div>
            </div>
            <%--右侧面--%>
            <div class="similar">
                <div class="singer">
                    <h3>相似歌手</h3>
                    <ul>
                        <li>
                            <img src="img/Myimg/userAvatar/user2.jpg">
                            <p> <span>张惠妹</span></p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--主体部分的结束-->

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
<script src="js/rank-js/jquery-1.12.4.min.js"></script>css
<script src="js/rank-js/ranking list.js"></script>
<script src="js/rank-js/common.js"></script>
<script src="js/rank-js/footer-js.js"></script>
<script src="js/myjs/singlesinger.js"></script>
</body>
</html>
<script src="js/login-block.js"></script>

