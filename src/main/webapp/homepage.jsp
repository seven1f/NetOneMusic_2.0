<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="netonemusic.com.entity.User" %><%--
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
                        <img src="<%=user.getUserAvatar()%>" class="img-circle" style=" margin-top: -5px">
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="login-block" id="loginBlock">
                    <ul>
                        <li><a href="homepage?userId=myself"><i class="icon-phone"></i><em>我的主页</em></a></li>
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
                    <a href="javascript:location.reload()">排行榜</a>
                    <span></span>
                </li>
                <li>
                    <a href="musiclist">歌单</a>
                    <span></span>
                </li>
                <li>
                    <a href="discover.html">主播电台</a>
                    <span></span>
                </li>
                <li>
                    <a href="singer">歌手</a>
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
            <%
                User somebody=(User) request.getSession().getAttribute("somebody");
            %>
            <div class="main">
                <%--头像及个人信息start--%>
                <div class="heard">
                    <dl >
                        <dt style="width: 180px;height: 180px;border: 1px solid #dad1d1;padding: 3px;margin-right: 40px;float: left">
                            <img src="<%=somebody.getUserAvatar()%>">
                        </dt>
                        <dd>
                            <div class="namef-cb">
                                <div class="f-cb">
                                    <h2><%=somebody.getUserName()%></h2>
                                    <button type="button" class="btn btn-primary">关注</button>
                                </div>
                            </div>
                            <ul class="data">
                                <li>动态9</li>
                                <li>关注7</li>
                                <li>粉丝12</li>
                            </ul>
                            <div class="inf">
                                <span>所在地区：<%=somebody.getUserArea()%></span><br>
                                <span>介绍：<%=somebody.getUserSign()%></span><br>
                            </div>
                        </dd>
                    </dl>
                </div>
                <%--头像及个人信息end--%>
                <div class="mainh">
                    <p class="lilogo"><a >听歌排行</a></p>
                </div>
                <%--汀歌排行start--%>
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
                         <c:forEach items="${mysongrank}" var="songVo" varStatus="status" >
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
                                     </div>
                                 </td>
                         </c:forEach>

                     </table>
                 </div>
                <%--汀歌排行end--%>

                <%--创建歌单开始--%>
                <div class="mainh">
                    <p class="lilogo"><a >创建的歌单</a></p>
                </div>
                    <ul class="collection">
                        <%--<li>--%>
                            <%--<div class="musiclist">--%>
                                <%--<img src="img/Myimg/songlist/gedan1.jpg">--%>
                                <%--<p><a>璀璨人生，傻逼人生</a></p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                       <c:forEach items="${songlistsCreat}" var="songlist">
                           <li>
                               <div class="musiclist">
                                   <a href="singlesonglist?songlistId=${songlist.songlistId}"><img src="${songlist.songlistUrl}"></a>
                                   <a href="singlesonglist?songlistId=${songlist.songlistId}"><p><a>${songlist.songlistName}</a></p></a>
                               </div>
                           </li>
                       </c:forEach>
                    </ul>
                 <div class="clearfix"></div>
                <%--创建歌单结束--%>
                <%--收藏歌单开始--%>
                <div class="mainh">
                     <p class="lilogo"><a >创建的歌单</a></p>
                </div>
                    <ul class="collection">
                        <%--<li>--%>
                            <%--<div class="musiclist">--%>
                                <%--<img src="img/Myimg/songlist/gedan1.jpg">--%>
                                <%--<p><a>璀璨人生，傻逼人生</a></p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <c:forEach items="${songlistCollection}" var="songlist">
                            <li>
                                <div class="musiclist">
                                    <img src="${songlist.songlistUrl}">
                                    <p><a>${songlist.songlistName}</a></p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                <%--收藏歌单结束--%>

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
</body>
</html>
<script src="js/login-block.js"></script>
