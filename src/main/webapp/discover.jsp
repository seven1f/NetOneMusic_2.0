<%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/21
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>网易云音乐</title>
    <link rel="stylesheet" href="css/discovercss/base.css">
    <link rel="stylesheet" href="css/discovercss/discover.css">
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/rankcss/footer-css.css"/>
    <script src="js/animate.js"></script>
    <link rel="stylesheet" href="css/login-block.css"/>
</head>

<body>
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
                    <li><a href="index.html" style="color:#fff">发现音乐</a></li>
                    <li></li>
                    <li><a href="myMusic.html" style="color:#fff">我的音乐</a></li>
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
                <div class="login-out">
                    <a href="#">登录</a>
                    <span class="trigon1"></span>
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
                <!--<div class="login-over">-->
                <!--<a href="#">登录</a>-->
                <!--<span class="trigon2"></span>-->
                <!--</div>-->
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
                    <a href="rankinglist.html">排行榜</a>
                    <span></span>
                </li>
                <li>
                    <a href="musiclist.html">歌单</a>
                    <span></span>
                </li>
                <li>
                    <a href="javascript:location.reload()">主播电台</a>
                    <span></span>
                </li>
                <li>
                    <a href="singer.html">歌手</a>
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




<div class="zmx w">
    <div class="main-zmx" id="main">
        <div class="lb1-zmx" id="lb1">
            <div class="lb2-zmx" id="lb2">
                <ul id="ul1">
                    <li>
                        <a href="#">
                            <span class="pic1"></span>
                            <span class="wz1">有声书</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic2"></span>
                            <span class="wz2">知识技能</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic3"></span>
                            <span class="wz2">商业财经</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic4"></span>
                            <span class="wz2">人文历史</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic5"></span>
                            <span class="wz2">外语世界</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic6"></span>
                            <span class="wz2">亲子宝贝</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic7"></span>
                            <span class="wz2">创作翻唱</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic8"></span>
                            <span class="wz2">音乐故事</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic9"></span>
                            <span class="wz3">3D|电子</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic10"></span>
                            <span class="wz2">相声曲艺</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic11"></span>
                            <span class="wz2">情感调频</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic12"></span>
                            <span class="wz2">美文读物</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic13"></span>
                            <span class="wz1">脱口秀</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic14"></span>
                            <span class="wz1">广播剧</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic15"></span>
                            <span class="wz1">二次元</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic16"></span>
                            <span class="wz4">明星做主播</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic17"></span>
                            <span class="wz2">娱乐|影视</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic18"></span>
                            <span class="wz2">科技科学</span>
                        </a>
                    </li>
                </ul>
                <ul id="ul2">
                    <li>
                        <a href="#">
                            <span class="pic19"></span>
                            <span class="wz2">校园|教育</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic20"></span>
                            <span class="wz2">旅途|城市</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="pic21"></span>
                            <span class="wz4">我要做主播</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="arr">
                <span id="left"></span>
                <span id="right"></span>
            </div>
            <div id="round">
                <span id="round1"></span>
                <span id="round2"></span>
            </div>
        </div>
        <div class="recommend-zmx">
            <div class="recommend-box-zmx">
                <div class="recommend-title-zmx">
                    <a href="#" class="big-zmx">推荐节目</a>
                    <a href="#" class="more-zmx">更多&nbsp;></a>
                </div>
                <div class="recommend-main-zmx">
                    <ul>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/1396379778174456.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="第二季 - 你知道松鼠桂鱼名字的来由吗？">第二季 - 你知道松鼠桂鱼名字的来由吗？</a>
                                <a href="#" title="围炉夜话">围炉夜话</a>
                            </div>
                            <div class="last-zmx"><a href="#">人文历史</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/18633423557852484.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="十二星座的睡前故事">十二星座的睡前故事</a>
                                <a href="#" title="伦敦华语电台">伦敦华语电台</a>
                            </div>
                            <div class="last1-zmx"><a href="#">脱口秀</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/19090820393266546.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="精益创业：创业像开车一样简单？">精益创业：创业像开车一样简单？</a>
                                <a href="#" title="老马商书房">老马商书房</a>
                            </div>
                            <div class="last-zmx"><a href="#">商业财经</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/18958878997907413.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="钮大可与陈本瑜 山谷与风的对话（1989）-听山谷的爱与风的心事">钮大可与陈本瑜 山谷与风的对话（1989）-听山谷的爱与风的心事</a>
                                <a href="#" title="林非的唱片私藏馆">林非的唱片私藏馆</a>
                            </div>
                            <div class="last-zmx"><a href="#">音乐故事</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/18692797185553323.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="《李光斗观察》世界上最容易的赚钱方式：故事营销">《李光斗观察》世界上最容易的赚钱方式：故事营销</a>
                                <a href="#" title="李光斗观察">李光斗观察</a>
                            </div>
                            <div class="last-zmx"><a href="#">商业财经</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/19147994997852270.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="香炸天的炸藕盒&茄盒，一口吃下菜与肉的大满足！">香炸天的炸藕盒&茄盒，一口吃下菜与肉的大满足！</a>
                                <a href="#" title="小厨FM">小厨FM</a>
                            </div>
                            <div class="last1-zmx"><a href="#">脱口秀</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/18541064581135410.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="张雨生 想念我（1989）-向学生告别，向明天致敬">张雨生 想念我（1989）-向学生告别，向明天致敬</a>
                                <a href="#" title="林非的唱片私藏馆">林非的唱片私藏馆</a>
                            </div>
                            <div class="last-zmx"><a href="#">音乐故事</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/18544363116011671.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="第二季 - 诈尸">第二季 - 诈尸</a>
                                <a href="#" title="中国诡实录">中国诡实录</a>
                            </div>
                            <div class="last1-zmx"><a href="#">有声书</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/19042441881628004.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="Cheer绮贞 让我想一想（1998）-不确定的年代里，最真实的声音">Cheer绮贞 让我想一想（1998）-不确定的年代里，最真实的声音</a>
                                <a href="#" title="林非的唱片私藏馆">林非的唱片私藏馆</a>
                            </div>
                            <div class="last-zmx"><a href="#">音乐故事</a></div>
                        </li>
                        <li>
                            <a href="#" class="pt1-zmx">
                                <img src="img/discoverimg/18692797185763780.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center-zmx">
                                <a href="#" title="史上最淫乱的公主-刘楚玉">史上最淫乱的公主-刘楚玉</a>
                                <a href="#" title="圣人请卸妆">圣人请卸妆</a>
                            </div>
                            <div class="last-zmx"><a href="#">知识技能</a></div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="recommend-box1-zmx">
                <div class="recommend-title-zmx">
                    <a href="#" class="big-zmx">节目排行榜</a>
                    <a href="#" class="more1-zmx">更多&nbsp;></a>
                </div>
                <div class="recommend-main-zmx">
                    <ul>
                        <li>
                            <div class="num-zmx">
                                <span>01</span>
                                <sapn class="s-color"><i class="i-con"></i>0</sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/18752170813697980.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="你总要历经艰辛，习惯一个人">你总要历经艰辛，习惯一个人</a>
                                <a href="#" title="一个人听">一个人听</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-zmx"></span>
                                <span class="pmgressbar2-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num-zmx">
                                <span>02</span>
                                <sapn class="s-color"><i class="i-con1"></i></sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/19083123811923739.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="宝贝，你是我的例外。">宝贝，你是我的例外。</a>
                                <a href="#" title="程一电台">程一电台</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-1-zmx"></span>
                                <span class="pmgressbar2-1-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num-zmx">
                                <span>03</span>
                                <sapn class="s-color"><i class="i-con"></i>0</sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/18727981557899391.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="【翻唱】儿歌">【翻唱】儿歌</a>
                                <a href="#" title="岁慕天寒">岁慕天寒</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-2-zmx"></span>
                                <span class="pmgressbar2-2-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num1-zmx">
                                <span>04</span>
                                <sapn class="s-color-red"><i class="i-con2"></i>3</sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/18664209883406106.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="我的一个道姑朋友 - 桃十五">我的一个道姑朋友 - 桃十五</a>
                                <a href="#" title="桃桃桃15-">桃桃桃15-</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-3-zmx"></span>
                                <span class="pmgressbar2-3-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num1-zmx">
                                <span>05</span>
                                <sapn class="s-color-blue"><i class="i-con3"></i>5</sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/19097417463121025.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="我是真的真的很喜欢你啊">我是真的真的很喜欢你啊</a>
                                <a href="#" title="小北电台">小北电台</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-4-zmx"></span>
                                <span class="pmgressbar2-4-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num1-zmx">
                                <span>06</span>
                                <sapn class="s-color-red"><i class="i-con2"></i>10</sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/19100715997996313.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="拉黑吧，前任。">拉黑吧，前任。</a>
                                <a href="#" title="小北电台">小北电台</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-zmx"></span>
                                <span class="pmgressbar2-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num1-zmx">
                                <span>07</span>
                                <sapn class="s-color"><i class="i-con1"></i></sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/18819241023017021.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="还没说再见，就再也不见了。">还没说再见，就再也不见了。</a>
                                <a href="#" title="程一电台">程一电台</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-2-zmx"></span>
                                <span class="pmgressbar2-2-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num1-zmx">
                                <span>08</span>
                                <sapn class="s-color-blue"><i class="i-con3"></i>4</sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/18559756278836993.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="【3D环绕】Game of Thrones (KSHMR）">【3D环绕】Game of Thrones (KSHMR）</a>
                                <a href="#" title="3D环绕，刺激每一个听神经♪">3D环绕，刺激每一个听神经♪</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-5-zmx"></span>
                                <span class="pmgressbar2-5-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num1-zmx">
                                <span>09</span>
                                <sapn class="s-color-blue"><i class="i-con3"></i>8</sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/18601537720685733.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="ofo小黄车：人多，钱傻，速来">ofo小黄车：人多，钱傻，速来</a>
                                <a href="#" title="亮三点">亮三点</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-6-zmx"></span>
                                <span class="pmgressbar2-6-zmx"></span>
                                </span>
                        </li>
                        <li>
                            <div class="num1-zmx">
                                <span>10</span>
                                <sapn class="s-color"><i class="i-con1"></i></sapn>
                            </div>
                            <a href="#" class="pt2-zmx">
                                <img src="img/discoverimg/18910500486367230.jpg">
                                <i class="play1"></i>
                            </a>
                            <div class="center1-zmx">
                                <a href="#" title="连浓眉大眼的阿联酋航空都抠门了!">连浓眉大眼的阿联酋航空都抠门了!</a>
                                <a href="#" title="网易轻松一刻">网易轻松一刻</a>
                            </div>
                            <span class="pmgressbar-zmx">
                                    <span class="pmgressbar1-3-zmx"></span>
                                <span class="pmgressbar2-3-zmx"></span>
                                </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="station1">
            <div class="music">
                <span class="music-story"><a href="#">音乐故事</a>&nbsp;·&nbsp;电台</span>
                <a href="#" class="more-zmx">更多&nbsp;></a>
            </div>
            <div class="box1-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18687299627598261.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="林非的唱片私藏馆">林非的唱片私藏馆</a>
                            </span>
                    <span class="title2-zmx">DJ林非跟你分享他的两万张老唱片</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/1365593487663277.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="艳秋电台">艳秋电台</a>
                            </span>
                    <span class="title2-zmx">这个治愈的声音得听</span>
                </div>
            </div>
            <div class="box2-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18762066418273062.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="文茜的异想世界">文茜的异想世界</a>
                            </span>
                    <span class="title2-zmx">文茜带你听甜点音乐</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/18644418673640939.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="园园蓝调口琴电台">园园蓝调口琴电台</a>
                            </span>
                    <span class="title2-zmx">搜罗所有蓝调口琴音乐</span>
                </div>
            </div>

        </div>
        <div class="station2">
            <div class="music">
                <span class="music-story"><a href="#">美文读物</a>&nbsp;·&nbsp;电台</span>
                <a href="#" class="more-zmx">更多&nbsp;></a>
            </div>
            <div class="box1-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18612532836930965.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="疼哥深夜电台">疼哥深夜电台</a>
                            </span>
                    <span class="title2-zmx">读有趣的书，做有点儿酷的人</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/3426078273674073.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="孟京辉戏剧工作室 | 为你读诗">孟京辉戏剧工作室 | 为你读诗</a>
                            </span>
                    <span class="title2-zmx">听孟京辉戏剧工作室为你读诗</span>
                </div>
            </div>
            <div class="box2-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18557557255384267.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="边江de恋声馆">边江de恋声馆</a>
                            </span>
                    <span class="title2-zmx">配音演员边江静静地读给你听</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/3442570908612801.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="一听散文">一听散文</a>
                            </span>
                    <span class="title2-zmx">听经典散文，分享品读之乐</span>
                </div>
            </div>
        </div>
        <div class="station3">
            <div class="music">
                <span class="music-story"><a href="#">脱口秀</a>&nbsp;·&nbsp;电台</span>
                <a href="#" class="more-zmx">更多&nbsp;></a>
            </div>
            <div class="box1-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/19200771556089129.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="DJ林非 非常有笑果">DJ林非 非常有笑果</a>
                            </span>
                    <span class="title2-zmx">DJ林非和你讲讲段子逗逗乐</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/18495984603865929.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="蔡骏的悬疑世界">蔡骏的悬疑世界</a>
                            </span>
                    <span class="title2-zmx">作家蔡骏的网易云电台</span>
                </div>
            </div>
            <div class="box2-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18878614648928302.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="徐老师讲故事">徐老师讲故事</a>
                            </span>
                    <span class="title2-zmx">英雄联盟中的情仇故事</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/2946691247486341.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="开普勒452b">开普勒452b</a>
                            </span>
                    <span class="title2-zmx">李维嘉主持的星座大数据脱口秀</span>
                </div>
            </div>
        </div>
        <div class="station4">
            <div class="music">
                <span class="music-story"><a href="#">情感调频</a>&nbsp;·&nbsp;电台</span>
                <a href="#" class="more-zmx">更多&nbsp;></a>
            </div>
            <div class="box1-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18582846022726200.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="陪你·说一世晚安">陪你·说一世晚安</a>
                            </span>
                    <span class="title2-zmx">二更食堂，深夜陪你道声晚安</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/19205169602369194.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="酒鬼一家跳票电台">酒鬼一家跳票电台</a>
                            </span>
                    <span class="title2-zmx">国民老岳父公的暖心故事</span>
                </div>
            </div>
            <div class="box2-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18568552371730335.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="夜听">夜听</a>
                            </span>
                    <span class="title2-zmx">晚上十点，向你问好</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/18645518184650127.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="开普勒452b">米莉.听见花开</a>
                            </span>
                    <span class="title2-zmx">一个让你念念不忘的人</span>
                </div>
            </div>
        </div>
        <div class="station5">
            <div class="music">
                <span class="music-story"><a href="#">创作|翻唱</a>&nbsp;·&nbsp;电台</span>
                <a href="#" class="more-zmx">更多&nbsp;></a>
            </div>
            <div class="box1-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/19113910137364418.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="猫小梦的gamefun">猫小梦的gamefun</a>
                            </span>
                    <span class="title2-zmx">人气主播猫小梦的翻唱作品</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/18705991324767857.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="nG家的猫">nG家的猫</a>
                            </span>
                    <span class="title2-zmx">正能量摄影师nG唱歌也好听</span>
                </div>
            </div>
            <div class="box2-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/3315027563349819.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="隐姓埋名的花日天">隐姓埋名的花日天</a>
                            </span>
                    <span class="title2-zmx">花粥正经翻唱不耍流氓</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/18923694625709511.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="小缘的直播节选">小缘的直播节选</a>
                            </span>
                    <span class="title2-zmx">人气主播小缘喵的直播精华</span>
                </div>
            </div>
        </div>
        <div class="station6">
            <div class="music">
                <span class="music-story"><a href="#">人文历史</a>&nbsp;·&nbsp;电台</span>
                <a href="#" class="more-zmx">更多&nbsp;></a>
            </div>
            <div class="box1-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/1396379778174456(1).jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="围炉夜话">围炉夜话</a>
                            </span>
                    <span class="title2-zmx">美食家陈立带你品美食、说历史</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/18740076185614730.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="而我想…成为一个有趣的妞">而我想…成为一个有趣的妞</a>
                            </span>
                    <span class="title2-zmx">F小姐的读书观影笔记</span>
                </div>
            </div>
            <div class="box2-zmx">
                <div class="img1-zmx">
                    <a href="#"><img src="img/discoverimg/18642219650818010.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="泪痕书场">泪痕书场</a>
                            </span>
                    <span class="title2-zmx">聊一聊古今中外人生百态</span>
                </div>
                <div class="img2-zmx">
                    <a href="#"><img src="img/discoverimg/19201871067547683.jpg" alt=""></a>
                    <span class="title1-zmx">
                            <a href="#" title="你好，中文系">你好，中文系</a>
                            </span>
                    <span class="title2-zmx">全宇宙文学都在这里了</span>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="gotop" class="top-zmx">
    <a href="#">
        <p class="p1">^</p>
        <p>TOP</p>
    </a>
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
<div class="g-btmbar" id="g-btmbar">
    <div class="g-btmbar-p" id=".g-btmbar-p">
        <div class="m-playbar m-playbar-lock" style="top:-53px; visibility: visible;" id="auto-id-fpboJHu88h3Feay2">
            <div class="updn">
                <div class="left f-f1">
                    <a href="javascript:void(0);" class="btn1" id="fixBtn1"></a>
                    <a href="javascript:void(0);" class="btn2" id="fixBtn2"></a>
                </div>
                <div class="right f-f1"></div>
            </div>
            <div class="bg"></div>
            <div class="wrap" id="g_player">
                <div class="btns">
                    <a href="#" class="prv"></a>
                    <a href="#" class="ply j-fkag" id="ply01"></a>
                    <a href="#" class="plys j-fkag" id="ply02"></a>
                    <a href="#" class="nxt"></a>
                </div>
                <div class="head j-flag">
                    <a href="#" class="mask">
                        <img src="img/discover/default_album.jpg" alt=""/>
                    </a>
                </div>
                <div class="play">
                    <div class="j-flag words"></div>
                    <div class="m-pbar">
                        <div class="barbg j-flag" id="auto-id-ODscgwD3lbnJdK0A">
                            <div class="rdy" style="width: 0%;"></div>
                            <div class="cur" style="width: 0%;">
                                    <span class="btn f-tdn f-alpha" id="auto-id-bxCC3M0eRZD76VpR">
                                        <i></i>
                                    </span>
                            </div>
                        </div>
                        <span class="j-flag time">
                                <em>00:00</em> / 00:00
                            </span>
                    </div>
                </div>
                <div class="oper f-fl">
                    <a href="#" class="icn icn-add j-flag" title="收藏"></a>
                    <a href="#" class="icn icn-share" title="分享"></a>
                </div>
                <div class="ctrl f-fl f-pr j-flag">
                    <div class="m-vol" style="visibility:hidden;" id="auto-id-epndKXTBrRZxUtTX">
                        <div class="barbg"></div>
                        <div class="vbg j-t" id="auto-id-Ps01blhP4eMKXBgn">
                            <div class="curr j-t" style="height: 74.4px;"></div>
                            <span class="btn f-alpha j-t" style="top: 16.2px;"></span>
                        </div>
                    </div>
                    <a href="#" class="icn icn-vol"></a>
                    <a href="#" class="icn icn-loop"></a>
                    <span class="add f-pr">
                            <span class="tip" style="display: none;"></span>
                            <a href="#" title="播放列表" class="icn icn-list s-fc3">0</a>
                        </span>
                    <div class="tip tip-1" style="display: none;">循环</div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--底部结束-->
<script src="js/rank-js/jquery-1.12.4.min.js"></script
<script src="js/rank-js/common.js"></script>
<script src="js/rank-js/footer-js.js"></script>
</body>

</html>
<!--<script src="js/animate.js"></script>-->
<script src="js/discover-js/jquery-1.12.4.min.js"></script>
<script src="js/discover-js/discover.js"></script>
<script src="js/login-block.js"></script>
