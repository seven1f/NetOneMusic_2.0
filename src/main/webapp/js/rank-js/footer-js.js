var bbp = document.getElementById(".g-btmbar-p");
var footBar = document.getElementById("g-btmbar");
var fixBtn1 = document.getElementById("fixBtn1");
var fixBtn2 = document.getElementById("fixBtn2");
var footBox = document.getElementById("auto-id-fpboJHu88h3Feay2");
var ply01 = document.getElementById("ply01");

var audio=document.getElementById("audio");
bbp.onmouseover = function  () {
    animate(footBar,{
        "bottom": 0
    })
}
bbp.onmouseout = function  () {
    animate(footBar,{
        "bottom": -48
    })
}
fixBtn1.onclick = function  () {
    bbp.onmouseout = null;
    fixBtn2.style.display = "block";
    fixBtn1.style.display = "none";
}
fixBtn2.onclick = function  () {
    bbp.onmouseout = function  () {
        animate(footBar,{
            "bottom": -48
        })
    }
    fixBtn1.style.display = "block";
    fixBtn2.style.display = "none";
}

var ply02 = document.getElementById("ply02");//开始
ply01.onclick = function  () {
    audio.play();
    ply02.style.display = "block";
    ply01.style.display = "none";
}


var ply02=document.getElementById("ply02");//结束
ply02.onclick=function () {
    audio.pause();
    ply02.style.display = "none";
    ply01.style.display = "block";
}

