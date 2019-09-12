<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="netonemusic.com.entity.SongVo" %>
<%@ page import="java.util.ArrayList" %>
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
    <link rel="stylesheet" href="css/rankcss/ranking list.css"/>
    <link rel="stylesheet" href="css/rankcss/footer-css.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/login-block.css"/>
    <script src="js/rank-js/jquery-1.12.4.min.js"/>

</head>
<body>
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
<script>
    $(function () {
       $(".clickP").click(function (){
            console.log($(this).attr("click-id"));
            var  url=$(this).attr("click-id");
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
                    <li><a href="myMusic.jsp" style="color:#fff"  onclick="window.parent.document.getElementById('iframe1').src='myMsic.jsp';">我的音乐</a>
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
                    <div  style="color: #999999;margin-top: 5px">
                        <a href="myMusic.jsp" style="color: #999999" >登录</a>
                    </div>
                    <%
                    }else{
                    %>
                    <div class="deng" id="deng" >
                        <img src="<%=user.getUserAvatar()%>" class="img-circle" style=" border-radius: 20px;margin-top: -5px;margin-right: 30px">
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="login-block" id="loginBlock">
                    <ul>
                        <li><a href="#"><i class="icon-phone"></i><em>我的主页</em></a></li>
                        <li><a href="#"><i class="icon-wechart"></i><em>个人设置</em></a></li>
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
<div class="m-main">
    <!--内容侧边栏开始-->
    <div class="m-main-side">
        <div class="m-main-side-top">
            <p class="txt-head1">云音乐飙升榜</p>
            <ul>
                <li class="top-bgc" id="top-bgc">
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐飙升榜</span>
                        <span class="txt-bottom">每天更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐新歌榜</span>
                        <span class="txt-bottom">每天更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">网易原创歌曲榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="m-main-side-bottom">
            <p class="txt-head2">全球媒体榜</p>
            <ul>
                <li class="top-bgc" id="bottom-bgc">
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐飙升榜</span>
                        <span class="txt-bottom">每天更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐新歌榜</span>
                        <span class="txt-bottom">每天更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">网易原创歌曲榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="bg-img"></span>
                        <span class="txt-top">云音乐热歌榜</span>
                        <span class="txt-bottom">每周四更新</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!--内容侧边栏结束-->
    <!--内容展示区开始-->
    <div class="m-main-content">
        <!-- 飙升榜的开始 -->
        <div class="content-bsb">
            <div class="content-bsb-top">
                <div class="bsb-t-logo">
                    <img src="img/rankimg/18696095720518497.jpg" alt=""/>
                </div>
                <div class="bsb-t-content">
                    <p>云音乐飙升榜</p>
                    <span>
                    ⏱最近更新：懂得自然懂
                    <span class="txt">（每天更新）</span>
                </span>
                    <div class="bsb-t-btns">
                        <span class="btns1">播放</span>
                        <span class="btns2">+</span>
                        <span class="btns4" style="left: 100px;">(1922)</span>
                        <span class="btns5" style="left: 175px;">下载</span>
                        <span class="btns6" style="left: 240px;">(69128)</span>
                    </div>
                </div>
            </div>
            <div class="content-bsb-bottom">
                <div class="bottom-txt">
                    <span class="txt1">歌曲列表</span>
                    <span class="txt2">54首歌</span>
                    <span class="txt3">
                        播放：
                        <span class="txt4">408083200</span>
                        次
                    </span>
                </div>
            </div>
            <div class="content-bsb-center">
                <div class="center-head">
                    <div class="head1"></div>
                    <div class="head2">标题</div>
                    <div class="head3">时长</div>
                    <div class="head4">歌手</div>
                </div>
                <div class="center-content">
                    <ul class="content-list" id="center-content-list">
                        <li class="list-song1">
                            <ul class="tr01">
                                <li>
                                    1
                                    <span>-0</span>
                                </li>
                                <li>
                                    <i></i>
                                    <b></b>
                                    Cola
                                </li>
                                <li>06:55</li>
                                <li>CamelPha...</li>
                            </ul>
                        </li>
                        <li class="list-song2">
                            <ul class="tr01">
                                <li>
                                    2
                                    <span>↑3</span>
                                </li>
                                <li>
                                    <i></i>
                                    <b></b>
                                    LaLaLand(Prok&Fitch Sixteen Remix)
                                </li>
                                <li>06:46</li>
                                <li>PROK & Fl...</li>
                            </ul>
                        </li>
                        <li class="list-song3">
                            <ul class="tr01">
                                <li>
                                    3
                                    <span>↓1</span>
                                </li>
                                <li>
                                    <i></i>
                                    <b></b>
                                    House & Pressure (Original Mix)
                                </li>
                                <li>05:09</li>
                                <li>Route 94</li>
                            </ul>
                        </li>

                        <c:forEach items="${ranklist}" var="songVo" varStatus="status">
                            <li class="list-song01">
                                <ul class="tr02">
                                    <li>
                                        ${status.index+4}
                                        <span>new</span>
                                    </li>
                                    <li>
                                        <b class="clickP" click-id="${songVo.song.songUrl}"></b>

                                        <a href="singlesong?songId=${songVo.song.songId}">${songVo.song.songName}</a>
                                    </li>
                                    <li>${songVo.song.songTime}</li>
                                    <li><a href="singlesinger?singerId=${songVo.song.singerId}">${songVo.singerName}</a></li>
                                </ul>
                            </li>
                        </c:forEach>
                        <%--<li class="list-song01">--%>
                            <%--<ul class="tr02">--%>
                                <%--<li>--%>
                                    <%--4--%>
                                    <%--<span>new</span>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<b></b>--%>
                                    <%--Kwelanga (Original Mix)--%>
                                <%--</li>--%>
                                <%--<li>06:30</li>--%>
                                <%--<li>SecondCity</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>


                    </ul>
                </div>
                <div class="center-comment">
                    <div class="comment-top">
                        <span class="txt1">评论</span>
                        <span class="txt2">共69235条评论</span>
                    </div>
                    <div class="comment-center">
                        <span class="login">
                            <img src="img/rankimg/content_05.jpg" alt=""/>
                        </span>
                        <div class="text">
                            <span class="sanjiao">◇</span>
                            <textarea name="" id="" cols="30" rows="10" class="textarea"></textarea>
                        </div>
                        <div class="center-login">
                            <a href="#" class="txt1">☺</a>
                            <a href="#" class="txt2">@</a>
                            <a href="#" class="txt3">评论</a>
                            <span class="txt4">140</span>
                            <span class="txt5">精彩评论</span>
                        </div>
                    </div>
                    <div class="comment-bottom">
                        <ul class="bottom-list">
                            <li>
                                <span class="list11"></span>
                                <a href="#" class="list2">有腹肌的Pdd</a>
                                <span class="list3">：明天linkinpark 专场</span>
                                <span class="list4">12:38</span>
                                <a href="#" class="list5"><span></span>(84)</a>
                                <span class="list6">回复</span>
                                <!--<span class="list7"></span>-->
                            </li>
                            <li>
                                <span class="list12"></span>
                                <a href="#" class="list2">云中雪</a>
                                <span class="list3">：血洗！血洗！LP屠榜吧！</span>
                                <span class="list4">13:38</span>
                                <a href="#" class="list5"><span></span>(34)</a>
                                <span class="list6">回复</span>
                                <!--<span class="list7"></span>-->
                            </li>
                            <li>
                                <span class="list13"></span>
                                <a href="#" class="list2">动视药丸</a>
                                <span class="list3">：我嗜睡（滑稽）</span>
                                <span class="list4">14:22</span>
                                <a href="#" class="list5"><span></span>(33)</a>
                                <span class="list6">回复</span>
                                <!--<span class="list7"></span>-->
                            </li>
                            <li>
                                <span class="list14"></span>
                                <a href="#" class="list2">风雨不动</a>
                                <span class="list3">：想当年，听lp时我还在用QQ音乐。。。</span>
                                <span class="list4">58分钟前</span>
                                <a href="#" class="list5"><span></span>(1)</a>
                                <span class="list6">回复</span>
                                <!--<span class="list7"></span>-->
                            </li>
                            <li>
                                <span class="list15"></span>
                                <a href="#" class="list2">W_淏t</a>
                                <span class="list3">：美国独立后第一人总统</span>
                                <span class="list4">33分钟前</span>
                                <a href="#" class="list5"><span></span>(3)</a>
                                <span class="list6">回复</span>
                                <!--<span class="list7"></span>-->
                            </li>
                            <li>
                                <span class="list16"></span>
                                <a href="#" class="list2">天河童</a>
                                <span class="list3">：抢不到前排</span>
                                <span class="list4">11分钟前</span>
                                <a href="#" class="list5"><span></span>(3)</a>
                                <span class="list6">回复</span>
                                <!--<span class="list7"></span>-->
                            </li>
                        </ul>
                    </div>
                    <div class="comment-foot">
                        <ul>
                            <li><a href="#">< 上一页</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">...</a></li>
                            <li><a href="#">3463</a></li>
                            <li><a href="#">下一页 ></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- 飙升榜的结束 -->



        <div class="content-xgb"></div>
        <div class="content-ycb"></div>
        <div class="content-rgb"></div>
    </div>
    <!--内容展示区结束-->
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
</body>
</html>
<script src="js/login-block.js"></script>
