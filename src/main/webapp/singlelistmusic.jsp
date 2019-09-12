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
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src='js/musiclist-js/jquery-1.12.4.min.js'></script>
    <link rel="stylesheet" href="css/rankcss/ranking list.css"/>
    <link rel="stylesheet" href="css/rankcss/footer-css.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/login-block.css"/>
    <link rel="stylesheet" href="css/singlemusiclist/single.css">
</head>
<body style="height: auto;color: #2a2a2a">
<script type="text/javascript">
    //iframe高度设置
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
            <div class="m-top-nav-login" id="deng">
                <div>
                    <%
                        User user=(User) session.getAttribute("user");
                        if(user==null){
                    %>
                    <div class="deng">
                        <a href="myMusic.jsp" >登录</a>
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
                    <a href="index.html">推荐</a>
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
            SonglistVo songlistVo=(SonglistVo) request.getSession().getAttribute("songlistVo");//歌单信息
            List<SongVo> songVos=(ArrayList)request.getSession().getAttribute("songVos");//歌单歌曲
        %>

            <div class="main" >
                <div style="padding:47px 30px 40px 39px;">
                    <%--内容开始--%>
                    <div style="width: 640px; height: auto">
                        <%--歌单图片--%>
                        <img src="<%=songlistVo.getSonglist().getSonglistUrl()%>" style="border:1px solid #dad1d1;padding: 2px;position: absolute">
                         <%--歌单详细信息   --%>
                        <div style="width: 410px;height: auto;margin-left: 230px;">
                            <div style="width: 410px;height: 24px;margin-bottom: 12px;display: inline">
                                <img style="position: absolute" src="img/Myimg/songlist/gedan.png"/>
                                <div name="tit" style="margin-left: 80px">
                                    <h2 style="font-size: 20px;"><%=songlistVo.getSonglist().getSonglistName()%></h2>
                                </div>
                            </div>
                            <div style="width: 410px;height: 35px;margin-bottom: 20px;margin-top: 20px">
                                <a href="homepage?userId=<%=songlistVo.getSonglist().getUserId()%>"><img  src="<%=songlistVo.getUserAvatar()%>"></a>
                                <span style="font-size: 15px;padding: 15px"><a  href="homepage?userId=<%=songlistVo.getSonglist().getUserId()%>"><%=songlistVo.getUserName()%></a></span>
                                <img src="img/Myimg/Smallicon/star.png">
                                <span style="font-size: 12px;color: #81a69e"><%=songlistVo.getSonglist().getCreationDate()%>&nbsp;创建</span>
                            </div>
                            <div style="height: 31px;margin-bottom: 25px;position: relative">
                                <span class="btns11">播放</span>
                                <span class="btns21">+</span>
                                <span class="btns31" collection-id="<%=songlistVo.getSonglist().getSonglistId()%>">
                        收藏歌单
                    </span>
                                <span class="btns41">(1922)</span>
                                <span class="btns51">下载</span>
                                <span class="btns61">&nbsp;评论</span>
                            </div>
                            <div style="font-size: 15px;color: #81a69e" >
                                <div style="margin-bottom: 8px">
                                    <a>标签：</a>
                                    <a style="color: #81a69e" href="musiclist.jsp"><%=songlistVo.getSonglist().getSonglistTags()%></a>
                                </div>
                                <div>
                                    <p style="line-height: 25px;color: #666;text-indent: 2em;font-size: 12px;">
                                        <%=songlistVo.getSonglist().getSonglistIntroduce()%>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mainh" style="height: 62px;padding-top: 0px;">
                        <p class="lilogo"><a >歌曲列表</a></p>
                    </div>
                    <div style="width: 641px;border:1px solid #dcccdc;min-height: 100px;height: auto ">

                        <div class="musicrank">
                            <table class="table table-striped" style="margin-bottom: 0px">
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

                                <c:forEach items="${songVos}" var="songVo" varStatus="status" >
                                    <tr class="even">
                                        <td>
                                            <div class="hd">
                                                <a href="#"><span class="palybnt" play-id="${songVo.song.songUrl}"></span></a>
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
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </table>
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
                        <span style="font-size: 15px">喜欢这个歌单的人</span>
                    </h3>
                    <ul style="width: 213px;height: 106px;padding-bottom: 25px;margin-left: -13px;padding-left: 0px;margin-top: 10px">
                        <li style="padding: 0 0 13 13;width: 40px;float: left"><a href="#"><img src="img/Myimg/userAvatar/user1.jpg"></a></li>

                    </ul>
                    <h3 style="border-bottom: 1px solid #dad1d1;padding-bottom: 12px">
                        <span style="font-size: 15px">热门歌单</span>
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
<script src="js/myjs/songlistsingle.js"></script>
</body>
</html>
<script src="js/login-block.js"></script>
