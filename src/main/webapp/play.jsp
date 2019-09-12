<%--
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

</head>
<body style=" background-color:transparent;">
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

                <audio id="audio" preload="preload" src="song/阿婆说.mp3" style="width:0;heigth:0;display:none;"></audio>

                <div class="btns">
                    <%--按钮--%>
                        <%--上一首--%>
                    <a class="prv"></a>
                        <%--开始--%>
                    <a class="ply j-fkag" id="ply01"></a>
                        <%--暂停--%>
                    <a class="plys j-fkag" id="ply02"></a>
                        <%--下一首--%>
                    <a class="nxt"></a>
                </div>
                <div class="head j-flag">
                    <a href="#" class="mask">
                        <%--歌曲图片--%>
                        <img src="img/rankimg/default_album.jpg" alt=""/>
                    </a>
                </div>
                <div class="play">
                    <div class="j-flag words"></div>
                    <%--进度条--%>
                    <div class="m-pbar">
                        <div class="barbg j-flag" id="auto-id-ODscgwD3lbnJdK0A">
                            <div class="rdy" style="width: 0%;"></div>
                            <div class="cur" style="width: 0%;">
                                    <span class="btn f-tdn f-alpha" id="auto-id-bxCC3M0eRZD76VpR">
                                        <i></i>
                                    </span>
                            </div>
                        </div>
                        <%--歌曲时间--%>
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
                    <%--音量及播放方式--%>
                        <%--音量·--%>
                    <a href="#" class="icn icn-vol"></a>
                        <%--播放方式--%>
                    <a href="#" class="icn icn-loop"></a>
                        <%--歌单--%>
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
<script src="js/rank-js/jquery-1.12.4.min.js"></script>
<script src="js/rank-js/ranking list.js"></script>
<script src="js/rank-js/common.js"></script>
<script src="js/rank-js/footer-js.js"></script>
</body>
</html>
<script src="js/login-block.js"></script>
