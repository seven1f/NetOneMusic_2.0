<%@ page import="netonemusic.com.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/21
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>网易云音乐，发现好音乐</title>
    <link rel="stylesheet" href="css/myMusiccss/login.css">
    <link rel="stylesheet" href="css/indexcss/base.css"/>
    <link rel="stylesheet" href="css/indexcss/index.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" class="ico"/>
    <script src="js/tools.js"></script>
    <script src="js/common.js"></script>
    <script src="js/demo06.js"></script>
    <script src="js/animate.js"></script>
</head>
<body>
<script type="text/javascript">
    var iframe1 = window.parent.document.getElementById('iframe1');
    window.onload = function() {
        var clientHeight = document.body.clientHeight,
            scrollHeight = document.body.scrollHeight;
        actualHeight = Math.max(clientHeight, scrollHeight);
        iframe1.height =actualHeight;
    };
</script>
<!--<div class="topBar"></div>-->
<!--<div class="header-nav"></div>-->
<div class="top">
    <div class="w">
        <div class="logo">

        </div>
        <div class="neirong" id="nr">
            <ul>
                <li>
                    <a href="javascript:location.reload()">发现音乐</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="myMusic.jsp"  onclick="window.parent.document.getElementById('iframe1').src='myMsic.jsp';">我的音乐</a>
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
                <li><a href="mysettings.jsp"><i class="icon-wechart"></i><em>个人设置</em></a></li>
                <li><a href="loginout"><i class="icon-qq"></i><em>退出</em></a></li>
            </ul>
            <div class="sanjiaojian"></div>
        </div>

    </div>
    <div class="seek">
        <input type="text" id="search" onkeypress="search();" value="单曲/歌手/专辑/歌单/MV/用户"/>
        <script type="text/javascript">
           function search() {
               var Keyword=document.getElementById("search").value;
               if(event.keyCode==13){
                   alert(Keyword);
                   window.location.href="search?Keyword="+Keyword;
               }
           }
        </script>
    </div>
    <div class="hot">

    </div>
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
            <img src="<%=user.getUserAvatar()%>" class="img-circle" style=" border-radius: 20px;width: 40px;height: 40px;margin-top: -15px">
        </div>
        <%
            }
        %>
    </div>

</div>

<!--//红色栏部分-->
<div class="nav">
    <div class="w">
        <div class="xunze">
            <ul>
                <li><a href="#">推荐</a></li>
                <li><a href="rankinglist" onclick="window.parent.document.getElementById('iframe1').src='rankinglist.jsp';">排行榜</a></li>
                <li><a href="songlist" onclick="window.parent.document.getElementById('iframe1').src='musiclist.jsp';">歌单</a></li>
                <li><a href="discover.html">主播电台</a></li>
                <li><a href="singer" onclick="window.parent.document.getElementById('iframe1').src='singer.jsp';">歌手</a></li>
                <li><a href="#">新碟上架</a></li>
            </ul>
        </div>
        <div class="sanjiao">

        </div>
    </div>
</div>
<script src="js/01.js"></script>
<div class="bg" id="bg">
    <div class="top-w" id="top-w">
        <div class="dlpic">
            <a href="#"></a>
            <p>PC 安卓 iPhone WP iPad Mac 六大客户端</p>
        </div>
        <div class="top-imgs" id="top-imgs">
            <a href="#"><img src="img/indeximg/00.png" alt="" id="images"/></a>
            <ol class="spans" id="spans">
                <li><span id="s1"></span></li>
                <li><span id="s2"></span></li>
                <li><span id="s3"></span></li>
                <li><span id="s4"></span></li>
                <li><span id="s5"></span></li>
                <li><span id="s6"></span></li>
                <li><span id="s7"></span></li>

            </ol>
        </div>
        <div class="arrTop" id="arrTop">
            <span id="arrLeft">&lt;</span>
            <span id="arrRight">&gt;</span>
        </div>
    </div>
</div>
<script src="js/02demo.js"></script>
<div class="content w">
    <div class="left">
        <!--热门开始-->
        <div class="hot">
            <div class="hotIndro">
                <div class="hotIndro-nav">
                    <div class="small-nav" id="smallnav">
                        <span class="sCircle"></span>
                        <span class="head">热门推荐</span>
                        <a href="#">华语</a>
                        <span class="line"></span>
                        <a href="#">流行</a>
                        <span class="line"></span>
                        <a href="#">摇滚</a>
                        <span class="line"></span>
                        <a href="#">民谣</a>
                        <span class="line"></span>
                        <a href="#">电子</a>
                        <span class="arrRight"></span>
                        <a href="songlist" class="more">更多</a>
                    </div>
                </div>
                <div class="hotIndro-contont" id="hotContent">
                    <ul id="imgShow">
                        <li class="first">
                            <a href="#"><img src="img/indeximg/热门推荐01.jpg" alt=""/></a>
                            <a href="#" class="showDes">一个偏执的家人和他的平凡之痛</a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>33万</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                        <li>
                            <a href="#"><img src="img/indeximg/热门推荐02.jpg" alt=""/></a>
                            <a href="#" class="showDes">活泼的调子，不如跳支舞吧</a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>103万</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                        <li>
                            <a href="#"><img src="img/indeximg/热门推荐03.jpg" alt=""/></a>
                            <a href="#" class="showDes">安静又不失节奏</a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>99万</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                        <li>
                            <a href="#"><img src="img/indeximg/热门推荐04.jpg" alt=""/></a>
                            <a href="#" class="showDes"><i class="column"></i><span class="top2">最最最浪漫的</span><span class="botm">情调</span></a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>13万</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                        <li class="five">
                            <a href="#"><img src="img/indeximg/热门推荐05.jpg" alt=""/></a>
                            <a href="#" class="showDes">最重要的事情说</a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>3万</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                        <li>
                            <a href="#"><img src="img/indeximg/热门推荐06.jpg" alt=""/></a>
                            <a href="#" class="showDes"><i class="column"></i><span class="top2">别管那些嘴巴</span><span class="botm">先成为清爽温厚的人</span> </a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>2万</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                        <li>
                            <a href="#"><img src="img/indeximg/热门推荐07.jpg" alt=""/></a>
                            <a href="#" class="showDes">浪漫复古小调 陷入微醺时光</a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>55万</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                        <li>
                            <a href="#"><img src="img/indeximg/热门推荐08.jpg" alt=""/></a>
                            <a href="#" class="showDes"><i class="column"></i><span class="top2">不如我们分手</span><span class="botm">吧!</span></a>
                            <span class="transparent">
                    <i class="headset"></i>
                    <i>3369</i>
                    <a href="#"><i class="player"></i>
                    </a>
                </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--热门结束-->
        <!--<div class="ad">广告</div>-->
        <!--<div class="newCD">新碟</div>-->
        <div class="zmx w">
            <div class="centre-zmx" id="centre">
                <div class="banner-zmx" id="banner">
                    <ul>
                        <li>
                            <a href="#"><img src="img/indeximg/广告1.jpg" alt=""/></a>
                        </li>
                        <li>
                            <a href="#"><img src="img/indeximg/广告2.jpg" alt=""/></a>
                        </li>
                    </ul>
                </div>
                <div class="title-zmx" id="titles">
                    <i class="jll1-zmx"></i>
                    <a href="#">新碟上架</a>
                    <span class="character-zmx">
                <a href="#">更多</a>
                <i class="jll2-zmx">&nbsp;</i>
            </span>
                </div>

                <div class="newCd1-zmx" id="newCd1">
                    <div class="newCd2-zmx" id="newCd2">
                        <div class="newCd3-zmx" id="newCd3">
                            <ul>
                                <li>
                            <span>
                                <div>
                                    <a href="#" title="我的前半生 电视原声带">
                                        <img src="img/indeximg/18887410742170941.jpg" />
                                    </a>
                                    <a href="javascript:;" class="play0" title="播放" ></a>
                                </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="我的前半生 电视原声带">我的前半生 电视原声带</a></p>
                                <p class="wz1"><a href="#" title="群星">群星</a></p>
                            </span>
                                    <span>
                                    <div>
                                        <a href="#" title="ONE DAY">
                                            <img src="img/indeximg/19111711114264139.jpg" />
                                        </a>
                                        <a href="javascript:;" class="play1" title="播放" ></a>
                                    </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="ONE DAY">ONE DAY</a></p>
                                <p class="wz1"><a href="#" title="ONE">ONE</a></p>
                            </span>
                                    <span>
                                 <div>
                                     <a href="#" title="燕返">
                                         <img src="img/indeximg/18736777650906621.jpg" />
                                     </a>
                                     <a href="javascript:;" class="play2" title="播放" ></a>
                                 </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="燕返">燕返</a></p>
                                <p class="wz1"><a href="#" title="燕池">燕池</a></p>
                            </span>
                                    <span>
                                    <div>
                                        <a href="#" title="Funk Wav Bounces Vol. 1">
                                            <img src="img/indeximg/18980869230504690.jpg" />
                                        </a>
                                        <a href="javascript:;" class="play3" title="播放" ></a>
                                    </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="Funk Wav Bounces Vol. 1">Funk Wav Bounces Vol. 1</a></p>
                                <p class="wz1"><a href="#" title="Calvin Harris">Calvin Harris</a></p>
                            </span>
                                    <span>
                                 <div>
                                     <a href="#" title="군주 - 가면의 주인 OST">
                                         <img src="img/indeximg/18902803904961604.jpg" />
                                     </a>
                                     <a href="javascript:;" class="play4" title="播放" ></a>
                                 </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="군주 - 가면의 주인 OST">군주 - 가면의 주인 OST</a></p>
                                <p class="wz1"><a href="#" title="V.A.">V.A.</a></p>
                            </span>
                                </li>
                                <li>
                            <span>
                                <div>
                                    <a href="#" title="Kaleidoscope">
                                        <img src="img/indeximg/18977570695642597.jpg" />
                                    </a>
                                    <a href="javascript:;" class="play5" title="播放" ></a>
                                </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="Kaleidoscope">Kaleidoscope</a></p>
                                <p class="wz1"><a href="#" title="Coldplay">Coldplay</a></p>
                            </span>
                                    <span>
                                    <div>
                                        <a href="#" title="2017跨界歌王 第十三期">
                                            <img src="img/indeximg/19113910137488600.jpg" />
                                        </a>
                                        <a href="javascript:;" class="play6" title="播放" ></a>
                                    </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="2017跨界歌王 第十三期">2017跨界歌王 第十三期</a></p>
                                <p class="wz1"><a href="#" title="群星">群星</a></p>
                            </span>
                                    <span>
                                    <div>
                                        <a href="#" title="涙を流せないピエロは太陽も月もない空を見上げた">
                                            <img src="img/indeximg/18743374720672509.jpg" />
                                        </a>
                                        <a href="javascript:;" class="play7" title="播放" ></a>
                                    </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="涙を流せないピエロは太陽も月もない空を見上げた">涙を流せないピエロは太陽も月もない空を見上げた</a></p>
                                <p class="wz1"><a href="#" title="GENERATIONS from EXILE TRIBE">GENERATIONS from EXILE TRIBE</a></p>
                            </span>
                                    <span>
                                    <div>
                                        <a href="#" title="TELEVISION">
                                            <img src="img/indeximg/19111711114264181.jpg" />
                                        </a>
                                        <a href="javascript:;" class="play8" title="播放" ></a>
                                    </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="TELEVISION">TELEVISION</a></p>
                                <p class="wz1"><a href="#" title="Zico">Zico</a></p>
                            </span>
                                    <span>
                                     <div>
                                         <a href="#" title="我想和你唱 第二季 第11期">
                                             <img src="img/indeximg/19043541393299282.jpg" />
                                         </a>
                                         <a href="javascript:;" class="play9" title="播放" ></a>
                                     </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="我想和你唱 第二季 第11期">我想和你唱 第二季 第11期</a></p>
                                <p class="wz1"><a href="#" title="群星">群星</a></p>
                            </span>
                                </li>
                                <li>
                            <span>
                                <div>
                                    <a href="#" title="我的前半生 电视原声带">
                                        <img src="img/indeximg/18887410742170941.jpg" />
                                    </a>
                                    <a href="javascript:;" class="play10" title="播放" ></a>
                                </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="我的前半生 电视原声带">我的前半生 电视原声带</a></p>
                                <p class="wz1"><a href="#" title="群星">群星</a></p>
                            </span>
                                    <span>
                                    <div>
                                        <a href="#" title="ONE DAY">
                                            <img src="img/indeximg/19111711114264139.jpg" />
                                        </a>
                                        <a href="javascript:;" class="play11" title="播放" ></a>
                                    </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="ONE DAY">ONE DAY</a></p>
                                <p class="wz1"><a href="#" title="ONE">ONE</a></p>
                            </span>
                                    <span>
                                 <div>
                                     <a href="#" title="燕返">
                                         <img src="img/indeximg/18736777650906621.jpg" />
                                     </a>
                                     <a href="javascript:;" class="play12" title="播放" ></a>
                                 </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="燕返">燕返</a></p>
                                <p class="wz1"><a href="#" title="燕池">燕池</a></p>
                            </span>
                                    <span>
                                    <div>
                                        <a href="#" title="Funk Wav Bounces Vol. 1">
                                            <img src="img/indeximg/18980869230504690.jpg" />
                                        </a>
                                        <a href="javascript:;" class="play13" title="播放" ></a>
                                    </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="Funk Wav Bounces Vol. 1">Funk Wav Bounces Vol. 1</a></p>
                                <p class="wz1"><a href="#" title="Calvin Harris">Calvin Harris</a></p>
                            </span>
                                    <span>
                                 <div>
                                     <a href="#" title="군주 - 가면의 주인 OST">
                                         <img src="img/indeximg/18902803904961604.jpg" />
                                     </a>
                                     <a href="javascript:;" class="play14" title="播放" ></a>
                                 </div>
                                <div class="pic"></div>
                                <p class="wz"><a href="#" title="군주 - 가면의 주인 OST">군주 - 가면의 주인 OST</a></p>
                                <p class="wz1"><a href="#" title="V.A.">V.A.</a></p>
                            </span>
                                </li>
                            </ul>
                        </div>
                        <div id="arr">
                            <span  id="left">&nbsp;</span>
                            <span  id="right">&nbsp;</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/demo7.js"></script>
        <div class="band">
            <!--榜单top的制作开始-->
            <div class="BD-top">
                <span class="spirit-one"></span>
                <span class="BD-title">榜单</span>
                <span class="more">
        <a href="rankinglist">更多</a>
        <span class="spirit-two"></span>
    </span>

            </div>

            <!--歌曲目录的制作开始-->

            <div class="catalog-box">

                <!--云音乐飙升榜-->
                <div class="catalog-left" id="catalog-left">
                    <ul>
                        <li>
                            <a href="#" class="pic">
                                <img src="img/indeximg/飙升榜.jpg" />
                            </a>
                            <a href="#" class="bsb">云音乐飙升榜</a>
                            <span>
                    <a href="#" class="bf" id="bf"></a>
                    <a href="#" class="sc" id="sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="f-color">1</span>
                            <a href="#" class="gm">Fetish</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="f-color">2</span>
                            <a href="#" class="gm">如果我爱你</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="f-color">3</span>
                            <a href="#" class="gm">Summer Bummer</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="num">4</span>
                            <a href="#" class="gm">因你</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="num">5</span>
                            <a href="#" class="gm">再也没有</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">6</span>
                            <a href="#" class="gm">Coming Home</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">7</span>
                            <a href="#" class="gm">Miracles (Someone Special)</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">8</span>
                            <a href="#" class="gm">追光者</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">9</span>
                            <a href="#" class="gm">Tired (Kygo Remix)</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">10</span>
                            <a href="#" class="gm">齐天</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>
                        <li><a href="#">查看全部></a></li>
                    </ul>
                </div>

                <!--云音乐新歌榜-->
                <div class="catalog-middle" id="catalog-middle">
                    <ul>
                        <li>
                            <a href="#" class="pic">
                                <img src="img/indeximg/新歌榜.jpg" />
                            </a>
                            <a href="#" class="bsb">云音乐新歌榜</a>
                            <span>
                    <a href="#" class="bf" id="bf2"></a>
                    <a href="#" class="sc" id="sc2"></a>
                </span>
                        </li>

                        <li>
                            <span class="f-color">1</span>
                            <a href="#" class="gm">清白之年</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="f-color">2</span>
                            <a href="#" class="gm">Fetish</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="f-color">3</span>
                            <a href="#" class="gm">一百种热爱</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="num">4</span>
                            <a href="#" class="gm">마지막처럼</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="num">5</span>
                            <a href="#" class="gm">我们</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">6</span>
                            <a href="#" class="gm">我想念</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">7</span>
                            <a href="#" class="gm">Summer Bummer</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">8</span>
                            <a href="#" class="gm">Hold Me</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">9</span>
                            <a href="#" class="gm">해야해</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">10</span>
                            <a href="#" class="gm">桃花诺</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>
                        <li><a href="#">查看全部></a></li>
                    </ul>
                </div>
                <!--网易云原创新歌榜-->
                <div class="catalog-right" id="catalog-right">
                    <ul>
                        <li>
                            <a href="#" class="pic">
                                <img src="img/indeximg/原创榜.jpg" />
                            </a>
                            <a href="#" class="bsb">网易原创歌曲榜</a>
                            <span>
                    <a href="#" class="bf" id="bf3"></a>
                    <a href="#" class="sc" id="sc3"></a>
                </span>
                        </li>

                        <li>
                            <span class="f-color">1</span>
                            <a href="#" class="gm">依然</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="f-color">2</span>
                            <a href="#" class="gm">装</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="f-color">3</span>
                            <a href="#" class="gm">我喜欢如此的你</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="num">4</span>
                            <a href="#" class="gm">七月</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>

                </span>
                        </li>

                        <li>
                            <span class="num">5</span>
                            <a href="#" class="gm">后海</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">6</span>
                            <a href="#" class="gm">裁梦为魂</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">7</span>
                            <a href="#" class="gm">Lucky</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">8</span>
                            <a href="#" class="gm">封夜</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">9</span>
                            <a href="#" class="gm">隐</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>

                        <li>
                            <span class="num">10</span>
                            <a href="#" class="gm">RiCH</a>
                            <span class="s-function">
                    <a href="#" class="s-bf"></a>
                    <a href="#" class="s-tj"></a>
                    <a href="#" class="s-sc"></a>
                </span>
                        </li>
                        <li><a href="#">查看全部></a></li>
                    </ul>
                </div>




            </div>
        </div>
        <script src="js/第八部分-榜单.js"></script>
    </div>
    <div class="right">
        <!--登陆开始-->
        <div class="login">
            <p>登录网易云音乐，可以享受无限收藏的乐趣，并且无限同步到手机</p>
            <a href="#" class="login-btn">用户登陆</a>

        </div>

        <!--登陆结束-->
        <!--歌手开始-->
        <div class="singer">
            <!--enter-singer-header的开始-->
            <div class="enter-singer">
                <div class="enter-singer-header">
                    <span class="es-singer">入驻歌手</span>
                    <a href="#" class="es-more">查看全部 ></a>
                </div>
                <!--enter-singer-header的结束-->


                <!--enter-singer-middle的开始-->
                <ul class="enter-singer-middle" id="enterSingerMiddle">
                    <li><a href="#"><div class="head"><img src="img/indeximg/zhm.jpg" alt=""/></div><div class="ifo"><span>张惠妹aMEI</span><p>台湾歌手张惠妹</p></div></a></li>
                    <li><a href="#"><div class="head"><img src="img/indeximg/swj.jpg" alt=""/></div><div class="ifo"><span>尚雯婕</span><p>原创电子唱作人</p></div></a></li>
                    <li><a href="#"><div class="head"><img src="img/indeximg/yq.jpg" alt=""/></div><div class="ifo"><span>羽泉组合</span><p>国内知名演唱组合 羽..</p></div></a></li>
                    <li><a href="#"><div class="head"><img src="img/indeximg/lz.jpg" alt=""/></div><div class="ifo"><span>李志</span><p>个体音乐人李志</p></div></a></li>
                    <li><a href="#"><div class="head"><img src="img/indeximg/mdmyy.jpg" alt=""/></div><div class="ifo"><span>马頔麻油叶</span><p>民谣音乐人</p></div></a></li>
                </ul>
                <!--enter-singer-middle的结束-->

                <!--enter-singer-bottom的开始-->
                <div class="enter-singer-bottom">
                    <a target="_blank" href="#" class="es-join">申请成为网易音乐人</a>
                </div>
            </div>

        </div>
        <script src="js/enter-singer.js"></script>
        <!--歌手结束-->
        <!--Dj开始-->
        <div class="dj">
            <h5>热门DJ</h5>
            <ul>
                <li>
                    <img src="img/indeximg/dj1.jpg" alt=""/>
                    <div class="right">
                        <a href="#">陈立</a><span class="v"></span>
                        <p>美食家陈立教授</p>
                    </div>
                </li>
                <li>
                    <img src="img/indeximg/dj2.jpg" alt=""/>
                    <div class="right">
                        <a href="#">Dj艳秋</a><span class="v"></span>
                        <p>著名音乐节目主持人</p>
                    </div>
                </li>
                <li>
                    <img src="img/indeximg/dj3.jpg" alt=""/>
                    <div class="right">
                        <a href="#">国家大剧院古典音乐频道</a><span class="v"></span>
                        <p>国家大剧院古典音乐官网</p>
                    </div>
                </li>
                <li>
                    <img src="img/indeximg/dj4.jpg" alt=""/>
                    <div class="right">
                        <a href="#">谢谢收听</a><span class="v"></span>
                        <p>南京电台主持人王馨</p>
                    </div>
                </li>
                <li>
                    <img src="img/indeximg/dj5.jpg" alt=""/>
                    <div class="right">
                        <a href="#">DJ晓苏</a><span class="v"></span>
                        <p>独立DJ，CRI环球旅游广播...</p>
                    </div>
                </li>
            </ul>
        </div>
        <!--dj结束-->
    </div>
    <div class="toTop" id="backTop"></div>
</div>

<%--登陆框开始--%>
<div id="loginVip" class="login-vip">
    <div id="loginTitle" class="login-title">登录
        <span class="close-login-bg">
            <a id="closeBtn" href="javascript:void(0);" class="close-login">&nbsp;&nbsp;</a>
        </span>
    </div>
    <div class="login-input-content">
        <div class="login-input">
            <div class="iphone-input"><a href="#">手机号登录</a></div>
            <div class="zhuce-input"><a href="#">注&nbsp;&nbsp;&nbsp;册</a></div>
            <div id="loginBtn" class="login-button">
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
<%--登入框结束--%>


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
<!--<div class="footer"></div>-->
<script src="js/backTop.js"></script>
<script src="js/login-block.js"></script>
</body>
</html>
