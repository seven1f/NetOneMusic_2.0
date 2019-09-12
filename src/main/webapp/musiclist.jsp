<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="netonemusic.com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="netonemusic.com.entity.Songlist" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/21
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>网易云音乐</title>
    <link rel="stylesheet" href="css/musiclistcss/base.css"/>
    <link rel="stylesheet" href="css/musiclistcss/music-list.css"/>
    <script src='js/musiclist-js/jquery-1.12.4.min.js'></script>
    <script src='js/musiclist-js/music-list.js'></script>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" class="ico"/>
    <link rel="stylesheet" href="css/musiclistcss/footer-css.css"/>

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
<div class="top">
    <div class="w">
        <div class="logo">

        </div>
        <div class="neirong" id="nr">
            <ul>
                <li>
                    <a href="index.jsp">发现音乐</a>
                </li>
                <li class="line"></li>
                <li>
                    <a href="myMusic.jsp">我的音乐</a>
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
                <li><a href="#"><i class="icon-wechart"></i><em>个人设置</em></a></li>
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

</div>

<!--//红色栏部分-->
<div class="nav">
    <div class="w">
        <div class="xunze">
            <ul>
                <li><a href="index.jsp">推荐</a></li>
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








<div class="music-bd w">
    <div class="music-wrap">
        <div class="music-title">
            <h3>
                <span class="music-all">全部</span>
                <a href="#" class="music-choese">
                    <i>选择分类<em class="music-icon1"></em></i>
                </a>
            </h3>
            <div class="music-fr">
                <a href="#" class="music-hot">热门</a>
            </div>
            <div class="n-sltlyr-show">
                <div class="sltlyr-show-hd">
                    <i class="show-icn"></i>
                </div>
                <div class="sltlyr-show-bd">
                    <h3><a href="#" class="show-all"><em>全部风格</em></a></h3>
                    <dl class="show-cb">
                        <dt class="yuzhong"> <i class="show-icon71"></i>语种</dt>
                        <dd >
                            <a href="#">华语</a>
                            <span class="line">|</span>
                            <a href="#">欧美</a>
                            <span class="line">|</span>
                            <a href="#">日语</a>
                            <span class="line">|</span>
                            <a href="#">韩语</a>
                            <span class="line">|</span>
                            <a href="#">粤语</a>
                            <span class="line">|</span>
                            <a href="#">小语种</a>
                            <span class="line">|</span>
                        </dd>
                    </dl>
                    <dl class="show-cb1">
                        <dt class="yuzhong"> <i class="show-icon72"></i>风格</dt>
                        <dd >
                            <a href="#">流行</a>
                            <span class="line">|</span>
                            <a href="#">摇滚</a>
                            <span class="line">|</span>
                            <a href="#">民谣</a>
                            <span class="line">|</span>
                            <a href="#">电子</a>
                            <span class="line">|</span>
                            <a href="#">舞曲</a>
                            <span class="line">|</span>
                            <a href="#">说唱</a>
                            <span class="line">|</span>
                            <a href="#">轻音乐</a>
                            <span class="line">|</span>
                            <a href="#">爵士</a>
                            <span class="line">|</span>
                            <a href="#">乡村</a>
                            <span class="line">|</span>
                            <a href="#">R&B/Soul</a>
                            <span class="line">|</span>
                            <a href="#">古典</a>
                            <span class="line">|</span>
                            <a href="#">民族</a>
                            <span class="line">|</span>
                            <a href="#">英伦</a>
                            <span class="line">|</span>
                            <a href="#">金属</a>
                            <span class="line">|</span>
                            <a href="#">朋克</a>
                            <span class="line">|</span>
                            <a href="#">蓝调</a>
                            <span class="line">|</span>
                            <a href="#">雷鬼</a>
                            <span class="line">|</span>
                            <a href="#">世界音乐</a>
                            <span class="line">|</span>
                            <a href="#">拉丁</a>
                            <span class="line">|</span>
                            <a href="#">另类/独立</a>
                            <span class="line">|</span>
                            <a href="#">New Age</a>
                            <span class="line">|</span>
                            <a href="#">古风</a>
                            <span class="line">|</span>
                            <a href="#">后摇</a>
                            <span class="line">|</span>
                            <a href="#">Bossa Nova</a>
                            <span class="line">|</span>
                        </dd>
                    </dl>
                    <dl class="show-cb2">
                        <dt class="yuzhong"> <i class="show-icon73"></i>场景</dt>
                        <dd >
                            <a href="#">清晨</a>
                            <span class="line">|</span>
                            <a href="#">夜晚</a>
                            <span class="line">|</span>
                            <a href="#">学习</a>
                            <span class="line">|</span>
                            <a href="#">工作</a>
                            <span class="line">|</span>
                            <a href="#">午休</a>
                            <span class="line">|</span>
                            <a href="#">下午茶</a>
                            <span class="line">|</span>
                            <a href="#">地铁</a>
                            <span class="line">|</span>
                            <a href="#">驾车</a>
                            <span class="line">|</span>
                            <a href="#">运动</a>
                            <span class="line">|</span>
                            <a href="#">旅行</a>
                            <span class="line">|</span>
                            <a href="#">散步</a>
                            <span class="line">|</span>
                            <a href="#">酒吧</a>
                            <span class="line">|</span>
                        </dd>
                    </dl>
                    <dl class="show-cb2">
                        <dt class="yuzhong"> <i class="show-icon74"></i>情感</dt>
                        <dd >
                            <a href="#">怀旧</a>
                            <span class="line">|</span>
                            <a href="#">清新</a>
                            <span class="line">|</span>
                            <a href="#">浪漫</a>
                            <span class="line">|</span>
                            <a href="#">性感</a>
                            <span class="line">|</span>
                            <a href="#">伤感</a>
                            <span class="line">|</span>
                            <a href="#">治愈</a>
                            <span class="line">|</span>
                            <a href="#">放松</a>
                            <span class="line">|</span>
                            <a href="#">孤独</a>
                            <span class="line">|</span>
                            <a href="#">感动</a>
                            <span class="line">|</span>
                            <a href="#">兴奋</a>
                            <span class="line">|</span>
                            <a href="#">快乐</a>
                            <span class="line">|</span>
                            <a href="#">安静</a>
                            <span class="line">|</span>
                            <a href="#">思念</a>
                            <span class="line">|</span>
                        </dd>
                    </dl>
                    <dl class="show-cb2">
                        <dt class="yuzhong"> <i class="show-icon75"></i>主题</dt>
                        <dd >
                            <a href="#">影视原声</a>
                            <span class="line">|</span>
                            <a href="#">ACG</a>
                            <span class="line">|</span>
                            <a href="#">校园</a>
                            <span class="line">|</span>
                            <a href="#">游戏</a>
                            <span class="line">|</span>
                            <a href="#">70后</a>
                            <span class="line">|</span>
                            <a href="#">80后</a>
                            <span class="line">|</span>
                            <a href="#">90后</a>
                            <span class="line">|</span>
                            <a href="#">网络歌曲</a>
                            <span class="line">|</span>
                            <a href="#">KTV</a>
                            <span class="line">|</span>
                            <a href="#">经典</a>
                            <span class="line">|</span>
                            <a href="#">翻唱</a>
                            <span class="line">|</span>
                            <a href="#">吉他</a>
                            <span class="line">|</span>
                            <a href="#">钢琴</a>
                            <span class="line">|</span>
                            <a href="#">器乐</a>
                            <span class="line">|</span>
                            <a href="#">儿童</a>
                            <span class="line">|</span>
                            <a href="#">榜单</a>
                            <span class="line">|</span>
                            <a href="#">00后</a>
                            <span class="line">|</span>
                        </dd>
                    </dl>
                </div>
                <div class="show-ft"></div>
            </div>
        </div>
        <%--<ul class="music-cvrlst">--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/qingjie.jpg" alt=""/><a href="#" class="msk" title="把歌名分解后会有怎样的效果？"></a><div class="music-bottom"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">12万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">把歌名分解后会有怎样的效果？</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">清结</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>

            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/shabai.jpg" alt=""/><a href="#" class="msk" title="有个玩黑怕的中国男孩儿有话对你说"></a><div class="music-bottom"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">13万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">有个玩黑怕的中国男孩儿有话对你说</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">紫拉的沙白</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/gushi.jpg" alt=""/><a href="#" class="msk" title="很多故事再不讲就没人记得了 | 华语精选"></a><div class="music-bottom"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">28万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">很多故事再不讲就没人记得了 | 华语精选</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">华纳音乐</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/gaoneng.jpg" alt=""/><a href="#" class="msk" title="高能慎点! 30首夏日恋曲MV合集"></a><div class="music-bottom"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">25219</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">高能慎点! 30首夏日恋曲MV合集</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">Kaibottcher</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/jinanzhu.jpg" alt=""/><a href="#" class="msk" title="韩丨论Rapper们无处安放的Vocal魂"></a><div class="music-bottom"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">25307</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">韩丨论Rapper们无处安放的Vocal魂</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">金暗洙</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/xiari.jpg" alt=""/><a href="#" class="msk" title="夏日微风｜听星星闪烁的声音"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">9814</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">夏日微风｜听星星闪烁的声音</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">阿卡琳</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/dianyin.jpg" alt=""/><a href="#" class="msk" title="《纯电音》享受极致抖腿"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">40万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">《纯电音》享受极致抖腿</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">我是爱音乐的徐梦..</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/yangguang.jpg" alt=""/><a href="#" class="msk" title="「阳光派对」迎着热浪在沙滩上奔跑"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">20万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">「阳光派对」迎着热浪在沙滩上奔跑</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">Nanoha</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/linglei.jpg" alt=""/><a href="#" class="msk" title="另类情歌 | 我越过谎言去拥抱你"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">141万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">另类情歌 | 我越过谎言去拥抱你</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">傲娇少女-界大人</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/xiangde.jpg" alt=""/><a href="#" class="msk" title="「华语情歌」想得却不可得，你奈人生何"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">384万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">「华语情歌」想得却不可得，你奈人生何</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">鮭魚先森</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/xiangxiang.jpg" alt=""/><a href="#" class="msk" title="让我想想，该怎么形容你呢？"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">122万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">让我想想，该怎么形容你呢？</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">情思天鹅</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/huoyan.jpg" alt=""/><a href="#" class="msk" title="粤语味道|一如火焰，一如倒影"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">138万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">粤语味道|一如火焰，一如倒影</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">咚咚锵梆梆梆</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/biaobai.jpg" alt=""/><a href="#" class="msk" title="听歌学表白，原来这些歌词可以当情书"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">217万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">听歌学表白，原来这些歌词可以当情书</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">肩扛底音炮</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/moke.jpg" alt=""/><a href="#" class="msk" title="忆文人墨客｜笔墨半张 满纸尽风华"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">98万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">忆文人墨客｜笔墨半张 满纸尽风华</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">迩ran</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/rebo.jpg" alt=""/><a href="#" class="msk" title="【2017】热播影视剧原声歌曲盘点"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">340万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">【2017】热播影视剧原声歌曲盘点</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">可尼宴</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/fugu.jpg" alt=""/><a href="#" class="msk" title="复古舞曲｜跟随旧时光中的节奏摇摆起来"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">89万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">复古舞曲｜跟随旧时光中的节奏摇摆起来</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">SuperMan-LEE</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/jiejie.jpg" alt=""/><a href="#" class="msk" title="【姐姐饭的狂欢】想和底迪谈恋爱喔:-O"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">79038</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">【姐姐饭的狂欢】想和底迪谈恋爱喔:-O</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">尹斗俊圈外对象</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/hanxi.jpg" alt=""/><a href="#" class="msk" title="韩系男声♪温柔慢歌，舒缓你夏日的浮躁❤"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">26万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">韩系男声♪温柔慢歌，舒缓你夏日的浮躁❤</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">轻歌_洛可可</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/changpian.jpg" alt=""/><a href="#" class="msk" title="用50张说唱唱片去品味诗意Flow"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">55万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">用50张说唱唱片去品味诗意Flow</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">goorye</a></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/quanneng.jpg" alt=""/><a href="#" class="msk" title="Sample|中文说唱的那些采样原曲"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">100万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">Sample|中文说唱的那些采样原曲</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">全能的BK大大</a><i class="u-icn-85"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/qingchun.jpg" alt=""/><a href="#" class="msk" title="青春随我 | 十载快男"></a><div class="music-bottom5"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">134万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">青春随我 | 十载快男</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">子瞻大魔王</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/suiyue.jpg" alt=""/><a href="#" class="msk" title="粤语丨 岁月流情，回味旧日的浪漫故事"></a><div class="music-bottom5"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">280万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">粤语丨 岁月流情，回味旧日的浪漫故事</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">___________刂巾...</a><i class="u-icn-85"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/youmei.jpg" alt=""/><a href="#" class="msk" title="【古典】优美旋律撩拨温柔的灵魂"></a><div class="music-bottom5"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">23367</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">【古典】优美旋律撩拨温柔的灵魂</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">狂飙瓦格纳</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/xueli.jpg" alt=""/><a href="#" class="msk" title="☀️Tröpical House| 百位艺人 百首良曲"></a><div class="music-bottom5"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">96万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">☀️Tröpical House| 百位艺人 百首良曲</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">雪莉酒Sherry</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/niandai.jpg" alt=""/><a href="#" class="msk" title="［年代感］欧美原声吉他弹唱精选100首"></a><div class="music-bottom5"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">260万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">［年代感］欧美原声吉他弹唱精选100首</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">坚果____</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/liaomei.jpg" alt=""/><a href="#" class="msk" title="┃撩妹时需要的浪漫┃ 钢琴&爵士的完美结合"></a><div class="music-bottom6"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">69万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">┃撩妹时需要的浪漫┃ 钢琴&爵士的完美结合</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">___Allen______</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/yida.jpg" alt=""/><a href="#" class="msk" title="一 沓 说 唱"></a><div class="music-bottom6"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">29062</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">一 沓 说 唱</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">juicy_fruity_</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/jianshi.jpg" alt=""/><a href="#" class="msk" title="简史‖民谣少女与摇滚有个约会"></a><div class="music-bottom6"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">497万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">简史‖民谣少女与摇滚有个约会</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">菊老板</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/chenjin.jpg" alt=""/><a href="#" class="msk" title="沉浸于字里行间°读书专用背景音乐"></a><div class="music-bottom6"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">268万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">沉浸于字里行间°读书专用背景音乐</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">玛丽锁链是耶稣</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/xiaoli.jpg" alt=""/><a href="#" class="msk" title="孝利的民宿BGM"></a><div class="music-bottom6"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">20581</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">孝利的民宿BGM</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">AlisonSweg</a></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/qianzou.jpg" alt=""/><a href="#" class="msk" title="「前奏控」被前奏秒杀的古风歌"></a><div class="music-bottom7"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">228万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">「前奏控」被前奏秒杀的古风歌</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">傻狗家的猫大仙</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/jingyan.jpg" alt=""/><a href="#" class="msk" title="「电子•女声」惊艳耳际，一秒倾心"></a><div class="music-bottom7"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">173万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">「电子•女声」惊艳耳际，一秒倾心</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">炮女_</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/kaikou.jpg" alt=""/><a href="#" class="msk" title="电子女声系❤开口便沉醉其中"></a><div class="music-bottom7"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">45万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">电子女声系❤开口便沉醉其中</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">一只野生的呆头狸</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/liange.jpg" alt=""/><a href="#" class="msk" title="日系の恋歌| 你是我未曾说出口的爱恋ღ"></a><div class="music-bottom7"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">82万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">日系の恋歌| 你是我未曾说出口的爱恋ღ</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">百夜丶米迦儿</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
            <%--<li class=""><div class="u-cover"><img src="img/musiclistimg/zhedan.jpg" alt=""/><a href="#" class="msk" title="想撩妹？用这单就够了"></a><div class="music-bottom7"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">201万</span>--%>
            <%--</div></div>--%>
                <%--<p class="music-dec"><a href="#" class="f-thide">想撩妹？用这单就够了</a></p>--%>
                <%--<p><span class="music-fc4">by</span><a href="#" class="music-nm">一只野生的呆头狸</a><i class="u-icn-84"></i></p>--%>
            <%--</li>--%>
        <%--</ul>--%>
        <ul class="music-cvrlst">
            <%
                List<Songlist> songlists=(ArrayList)request.getSession().getAttribute("songlists");
            %>
            <c:forEach items="${songlists}" var="songlist" begin="1" end="5" >
                <li class="">
                    <div class="u-cover">
                        <a href="singlesonglist?songlistId=${songlist.songlistId}"><img src="${songlist.songlistUrl}" alt=""/></a>
                        <a href="singlesonglist?songlistId=${songlist.songlistId}" class="msk" title="${songlist.songlistIntroduce}"></a>
                        <div class="music-bottom">
                            <a href="#" class="icon-play"></a>
                            <span class="icon-headset"></span>
                            <span class="nb">${songlist.collectionCount}</span>
                </div></div>
                    <p class="music-dec"><a href="singlesonglist?songlistId=${songlist.songlistId}" class="f-thide">${songlist.songlistName}</a></p>
                    <p><span class="music-fc4">by</span><a href="homepage?userId=${songlist.userId}" class="music-nm">${songlist.userId}</a><i class="u-icn-84"></i></p>
                </li>
            </c:forEach>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/xiari.jpg" alt=""/><a href="#" class="msk" title="夏日微风｜听星星闪烁的声音"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">9814</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">夏日微风｜听星星闪烁的声音</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">阿卡琳</a><i class="u-icn-84"></i></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/dianyin.jpg" alt=""/><a href="#" class="msk" title="《纯电音》享受极致抖腿"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">40万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">《纯电音》享受极致抖腿</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">我是爱音乐的徐梦..</a></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/yangguang.jpg" alt=""/><a href="#" class="msk" title="「阳光派对」迎着热浪在沙滩上奔跑"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">20万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">「阳光派对」迎着热浪在沙滩上奔跑</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">Nanoha</a><i class="u-icn-84"></i></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/linglei.jpg" alt=""/><a href="#" class="msk" title="另类情歌 | 我越过谎言去拥抱你"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">141万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">另类情歌 | 我越过谎言去拥抱你</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">傲娇少女-界大人</a></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/xiangde.jpg" alt=""/><a href="#" class="msk" title="「华语情歌」想得却不可得，你奈人生何"></a><div class="music-bottom2"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">384万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">「华语情歌」想得却不可得，你奈人生何</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">鮭魚先森</a><i class="u-icn-84"></i></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/xiangxiang.jpg" alt=""/><a href="#" class="msk" title="让我想想，该怎么形容你呢？"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">122万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">让我想想，该怎么形容你呢？</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">情思天鹅</a></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/huoyan.jpg" alt=""/><a href="#" class="msk" title="粤语味道|一如火焰，一如倒影"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">138万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">粤语味道|一如火焰，一如倒影</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">咚咚锵梆梆梆</a></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/biaobai.jpg" alt=""/><a href="#" class="msk" title="听歌学表白，原来这些歌词可以当情书"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">217万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">听歌学表白，原来这些歌词可以当情书</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">肩扛底音炮</a><i class="u-icn-84"></i></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/moke.jpg" alt=""/><a href="#" class="msk" title="忆文人墨客｜笔墨半张 满纸尽风华"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">98万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">忆文人墨客｜笔墨半张 满纸尽风华</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">迩ran</a></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/rebo.jpg" alt=""/><a href="#" class="msk" title="【2017】热播影视剧原声歌曲盘点"></a><div class="music-bottom3"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">340万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">【2017】热播影视剧原声歌曲盘点</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">可尼宴</a><i class="u-icn-84"></i></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/fugu.jpg" alt=""/><a href="#" class="msk" title="复古舞曲｜跟随旧时光中的节奏摇摆起来"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">89万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">复古舞曲｜跟随旧时光中的节奏摇摆起来</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">SuperMan-LEE</a><i class="u-icn-84"></i></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/jiejie.jpg" alt=""/><a href="#" class="msk" title="【姐姐饭的狂欢】想和底迪谈恋爱喔:-O"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">79038</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">【姐姐饭的狂欢】想和底迪谈恋爱喔:-O</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">尹斗俊圈外对象</a></p>
            </li>
            <li class=""><div class="u-cover"><img src="img/musiclistimg/hanxi.jpg" alt=""/><a href="#" class="msk" title="韩系男声♪温柔慢歌，舒缓你夏日的浮躁❤"></a><div class="music-bottom4"><a href="#" class="icon-play"></a><span class="icon-headset"></span><span class="nb">26万</span>
            </div></div>
                <p class="music-dec"><a href="#" class="f-thide">韩系男声♪温柔慢歌，舒缓你夏日的浮躁❤</a></p>
                <p><span class="music-fc4">by</span><a href="#" class="music-nm">轻歌_洛可可</a></p>
            </li>

        </ul>
        <div class="music-pager">
            <div class="music-u-pager">
                <a href="javascript:void(0)" class="music-selected">上一页</a>
                <a href="javascript:void(0)" class="music-number2 showCurrent">1</a>
                <a href="javascript:void(0)" class="music-number2">2</a>
                <a href="javascript:void(0)" class="music-number2">3</a>
                <a href="javascript:void(0)" class="music-number2">4</a>
                <a href="javascript:void(0)" class="music-number2">5</a>
                <a href="javascript:void(0)" class="music-number2">6</a>
                <a href="javascript:void(0)" class="music-number2">7</a>
                <a href="javascript:void(0)" class="music-number2">8</a>
                <span>...</span>
                <a href="javascript:void(0)" class="music-number2">39</a>
                <a href="javascript:void(0)" class="music-selected2">下一页</a>
            </div>
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

<!--底部结束-->
</body>
</html>
<script src="js/rank-js/jquery-1.12.4.min.js"></script>
<script src="js/rank-js/common.js"></script>
<script src="js/rank-js/footer-js.js"></script>
