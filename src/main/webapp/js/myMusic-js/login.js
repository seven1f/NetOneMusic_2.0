var link = document.getElementById("link");
var loginVip = document.getElementById("loginVip");
//var loginPic = document.getElementById("loginPic")
//var login = document.getElementById("login");
var closeBtn = document.getElementById("closeBtn");
//var title = document.getElementById("title");
var loginTitle = document.getElementById("loginTitle");


link.onmousemove = function(){
    link.style.opacity = "1";
}
link.onmouseout = function(){
    link.style.opacity = "1";
}

link.onclick = function(){
    loginVip.style.display = "block";
}

closeBtn.onclick = function(){
    loginVip.style.display = "none";
}


loginTitle.onmousedown = function(e){
    e = e || window.event;
    var x = getPage(e).pageX - loginVip.offsetLeft ;
    var y = getPage(e).pageY - loginVip.offsetTop;


    document.onmousemove = function(e){
        e = e|| window.event;
        var pagex = getPage(e).pageX;
        var pagey = getPage(e).pageY;
        loginVip.style.left = pagex - x +265 +"px";
        loginVip.style.top = pagey - y  +571 +"px";
    }
}

    loginTitle.onmouseup = function(){
        document.onmousemove = null;
}