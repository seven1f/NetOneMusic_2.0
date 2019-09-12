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
    <link rel="stylesheet" type="text/css" href="css/mysettingscss/mysettings.css">
    <script src="js/animate.js"></script>
    <title>网易云音乐</title>
</head>
<body>
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
                    <a href="myMusic.jsp" onclick="window.parent.document.getElementById('iframe1').src='myMusic.jsp';">我的音乐</a>
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
        <div class="redsanjiao"></div>
    </div>
</div>


<!--main的开始-->
<div class="section2" style="display:block ">
    <div class="wrap2">
        <div class="wrap22" >
            <div class="main"  id="songlist" style="display: block">
                <div class="mainh">
                    <p class="lilogo" style="margin: 0px ">个人设置<a href="#"></a></p>
                </div>
                <form id="update_form">
                    <div class="update_data">
                        <div class="left">
                            <div class="userNameInput" id="userNameInput">
                                <label class="lab">昵称：</label>
                                <input type="text" class="userName" id="userName">
                                <%--<div class="error1">⚠该昵称已存在</div>--%>
                            </div>
                            <div class="userSignInput" id="userSignInput">
                                <label class="lab">介绍：</label>
                                <div class="signData" id="signData">
                                    <textarea class="userSign" id="userSign"></textarea>
                                </div>
                            </div>
                            <div class="userSexInput" id="userSexInput">
                                <label class="lab">性别：</label>
                                <label style="margin-right: 20px;">
                                    <input type="radio" class="checkbox" name="userSex" value="男" />男
                                </label>
                                <label style="margin-right: 20px;">
                                    <input type="radio" class="checkbox" name="userSex" value="女" />女
                                </label>
                                <label class="check">
                                    <input type="radio" class="checkbox" name="userSex" value="保密" />保密
                                </label>
                            </div>
                            <div class="userAreaInput" id="userAreaInput">
                                <label class="lab">地区：</label>
                                <input type="text" class="userArea" id="userArea">
                            </div>
                            <div class="userBirthdayInput" id="userBirthdayInput">
                                <label class="lab">生日：</label>
                                <input type="text" class="userBirthday" id="userBirthday" placeholder="YYYY-MM-DD">
                            </div>
                            <input class="btn btn-primary" value="保存" id="editInfo" style="margin-top: 40px;width: 60px;margin-left: 40px">
                            <div class="clearfix"></div>
                        </div>
                        <div class="right">
                            <label class="lab">更换头像：</label><br>
                            <img src="<%=((User)request.getSession().getAttribute("user")).getUserAvatar()%>" >
                            <input type="file" title="Search for a file to add 1" class="btn-primary" style="width: 150px;">
                            <input class="btn btn-primary" value="上传" id="editAvatar" style="margin-top: 20px;width: 60px;">
                        </div>
                    </div>
                </form>
                <%--<select style="">--%>
                    <%--<option>1</option>--%>
                    <%--<option>2</option>--%>
                    <%--<option>3</option>--%>
                <%--</select>--%>

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
<%--<script src="js/myjs/register"></script>--%>
<script src="js/myjs/mysettings.js"></script>
</html>
