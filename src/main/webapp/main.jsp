<%--
  Created by IntelliJ IDEA.
  User: seven1f
  Date: 2019/8/25
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="height: 100%">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="music play" />
    <meta name="description" content="基于iframe，history api实现的音乐播放器，切换页面不间断播放" />
    <link rel="stylesheet" href="css/myMusiccss/login.css"/>
    <link rel="stylesheet">
    <title>test</title>
</head>
<style type="text/css">
    #wrapper {
        padding: 0px;
        position: relative;
    }
</style>
<script src="js/rank-js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

</script>
<body style="height: 100%;width: 100%;margin-top: 0px;margin-left: 0px;margin-right: 0px;margin-bottom: 0px;">
<div id="wrapper" data-url="http://app.local">
<div id="block1" style="width:100%;height:100%;position: relative">
    <iframe src="index.jsp" id="iframe1" name="iframe1" frameborder="0" scrolling="no" style="width:100%;" ></iframe>
</div>

<div id="block2" style="position:fixed;left:0;bottom:0;z-index:999;width:100%;max-height:500px;">
    <iframe src="play.jsp" id="iframe2" frameborder="0" scrolling="no" style="width:100%;max-height:60px;"></iframe>
</div>
</div>
<img src="img/Myimg/">
</body>
</html>
