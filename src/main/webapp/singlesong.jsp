<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="netonemusic.com.entity.*" %><%--
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
    <script src="js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/rankcss/ranking list.css"/>
    <link rel="stylesheet" href="css/rankcss/footer-css.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/login-block.css"/>
    <link rel="stylesheet" href="css/singlemusiclist/single.css">
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
        $(".btns11").click(function (){
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
            <div class="m-top-nav-login" >
                <div>
                    <%
                        User user=(User) session.getAttribute("user");
                        if(user==null){
                    %>
                    <div class="deng" style="margin-top: 5px">
                        <a href="myMusic.jsp" style="color: #999999" >登录</a>
                    </div>
                    <%
                    }else{
                    %>
                    <div class="deng" id="deng">
                        <img src="<%=user.getUserAvatar()%>" class="img-circle" style=" border-radius: 20px;width: 40px;height: 40px;margin-top: -5px">
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="login-block" id="loginBlock">
                    <ul>
                        <li><a href="#"><i class="icon-phone"></i><em>我的主页</em></a></li>
                        <li><a a href="mysettings.jsp" onclick="window.parent.document.getElementById('iframe1').src='mysettings.jsp';"><i class="icon-wechart"></i><em>个人设置</em></a></li>
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
                SingleSongVo singlesong=(SingleSongVo) request.getSession().getAttribute("singlesong");
            %>

            <div class="main" >
                <div style="padding:47px 30px 40px 39px;">
                    <%--内容开始--%>
                    <div style="width: 640px; height: auto">
                        <%--歌单图片--%>
                        <img src="<%=singlesong.getCdUrl()%>" style="border:1px solid #dad1d1;padding: 2px;position: absolute;border-radius:50%">
                        <%--歌单详细信息   --%>
                        <div style="width: 410px;height: auto;margin-left: 230px;">
                            <div style="width: 410px;height: 24px;margin-bottom: 12px;display: inline">
                                <img style="position: absolute" src="img/Myimg/Smallicon/danqu.png"/>
                                <div name="tit" style="margin-left: 80px">
                                    <h2 style="font-size: 20px;"><%=singlesong.getSong().getSongName()%></h2>
                                </div>
                            </div>
                            <div style="width: 410px;height: 35px;margin-bottom: 20px;margin-top: 20px">
                                <a href="singlesinger?singerId=<%=singlesong.getSong().getSingerId()%>">歌手：<%=singlesong.getSingerName()%></a>
                                <span style="font-size: 15px;padding: 15px"><a  href="homepage?userId="></a></span>
                                <br><a href="#">所属专辑：<%=singlesong.getCdName()%></a>
                                <span style="font-size: 15px;padding: 15px"><a  href="homepage?userId=%>"></a></span>
                            </div>
                            <div style="height: 31px;margin-bottom: 25px;position: relative">
                                <span class="btns11" play-id="<%=singlesong.getSong().getSongUrl()%>">播放</span>
                                <span class="btns21">+</span>
                                <span class="btns31" data-toggle="modal" data-target="#myModal">
                                 收藏歌曲
                                </span>
                                <span class="btns41">(1922)</span>
                                <span class="btns51">下载</span>
                                <span class="btns61">&nbsp;评论</span>
                            </div>
                            <div style="font-size: 15px;color: #81a69e" >
                                <div style="margin-bottom: 8px">
                                    <a>标签：<%=singlesong.getSong().getSongType()%></a>
                                    <a style="color: #81a69e" href="musiclist.jsp"></a>
                                </div>
                                <div>
                                    <p style="line-height: 25px;color: #666;text-indent: 2em;font-size: 12px;" id="lyices">
                                    <p style="display: none" id="songlyrics"><%=singlesong.getSong().getSongLyrics()%></p>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                        <div class="mainh" style="margin-top: 15px">
                        <p class="lilogo" style="margin-top: 0px"><a href="#">评论</a></p>
                    </div>

                    <div class="mainh" style="border-bottom: 0;height: 98px;position: relative;margin-top:0;">
                        <textarea style="width: 600px; height: 74px; margin: 0px 0px 0px 20px;resize:none;" placeholder="评论" name="comment"></textarea>
                        <input type="button" class="remarkinput" value="提交">
                    </div>
                    <div class="remarkmain">
                        <h3>精彩评论</h3>
                        <%--评论开始--%>
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

                        <%--评论结束   --%>
                    </div>
                    <div class="clearFix"></div>
                </div>

                <div class="clearFix"></div>
            </div>
            <%--右侧面--%>
            <div style="width: 270px;margin-left: 709px">
                <div style="padding: 20px 40px 40px 30px;">
                    <h3 style="border-bottom: 1px solid #dad1d1;padding-bottom: 12px">
                        <span style="font-size: 15px">喜欢这个歌曲的人</span>
                    </h3>
                    <ul style="width: 213px;height: 106px;padding-bottom: 25px;margin-left: -13px;padding-left: 0px;margin-top: 10px">
                        <li style="padding: 0 0 13 13;width: 40px;float: left"><a href="#"><img src="img/Myimg/userAvatar/user1.jpg"></a></li>

                    </ul>
                    <h3 style="border-bottom: 1px solid #dad1d1;padding-bottom: 12px">
                        <span style="font-size: 15px">热门歌曲</span>
                    </h3>
                    <ul style="width: 200px;padding-left: 0px;margin-top: 10px">
                        <li style="margin-bottom: 15px;">
                            <div style="width: 50px;height: 50px;position: absolute">
                                <a href="#"><img style="width: 50px;height: 50px" src="img/Myimg/songlist/gedan1.jpg"></a>
                            </div>
                            <div style="margin-left:60px;"><a href="#"><p style="margin-bottom: 5px;">璀璨人生</p></a>
                                <a style="color: #81a69e">by</a>
                                <a href="#"> 性空山</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--主体部分的结束-->

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 480px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加到歌单</h4>
            </div>
            <div class="modal-body" style="padding: 0px">
                <div class="mySonglist">
                    <ul class="mySonglistUl">
                        <a id="singlesongId" style="display: none;"><%=singlesong.getSong().getSongId()%></a>
                        <li class="songlistli">
                            <div class="songlist">
                                <div class="left">
                                    <a href="#"><img src="img/Myimg/songlist/gedan1.jpg"></a>
                                </div>
                                <p class="songlistname">
                                    <a>我喜欢的音乐</a>
                                </p>
                                <p class="songCount">
                                    10首
                                </p>
                            </div>
                        </li>
                        <c:forEach items="${mycreateSl}" var="songlist">
                            <li class="songlistli" sl-id="${songlist.songlistId}">
                                <div class="songlist">
                                    <div class="left">
                                        <a href="#"><img src="${songlist.songlistUrl}"></a>
                                    </div>
                                    <p class="songlistname">
                                        <a>${songlist.songlistName}</a>
                                    </p>
                                    <p class="songCount">
                                        10首
                                    </p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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
<script src="js/rank-js/jquery-1.12.4.min.js"></script>css
<script src="js/rank-js/ranking list.js"></script>
<script src="js/rank-js/common.js"></script>
<script src="js/rank-js/footer-js.js"></script>
<script src="js/myjs/singlesong.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
</body>
</html>
<script src="js/login-block.js"></script>
