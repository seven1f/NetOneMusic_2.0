
var bg=document.getElementById("bg");
var topImgs=document.getElementById("top-imgs");
var images=document.getElementById("images");
var ol1=topImgs.children[1];
var ol1lis=ol1.children;
var arr=document.getElementById("arrTop");
var arrLeft=arr.children[0];
var arrRight=arr.children[1];


var json=["#f9cfce","#efefea","#ffff00","#85dcc7","#23062f","#ffffff","#fadfa5"];
for(var i=0;i<ol1lis.length;i++){
    ol1lis[i].setAttribute("index",i);
    ol1lis[i].onclick=function(){
        var str="img/indeximg/0";
        var x=this.getAttribute("index");
        images.src=str+x+".png";
        bg.style.backgroundColor=json[x];
    }
}

var pic=0;
arrRight.onclick=function(){
    nextImg();
}

arrLeft.onclick=function(){
    if(pic==0) {
        pic = 6;
    }else{
        pic--;
    }
    var str="img/indeximg/0";
    images.src=str+pic+".png";
    bg.style.backgroundColor=json[pic];
    for(var i=0;i<ol1lis.length;i++){
        ol1lis[i].children[0].removeAttribute("class");
    }
    ol1lis[pic].children[0].setAttribute("class","current");
}

function nextImg(){
    if(pic==6) {
        pic = 0;
    }else{
        pic++;
    }

    var str="img/indeximg/0";
    images.src=str+pic+".png";
    bg.style.backgroundColor=json[pic];
    for(var i=0;i<ol1lis.length;i++){
        ol1lis[i].children[0].removeAttribute("class");
    }
    ol1lis[pic].children[0].setAttribute("class","current");
}
//���ü�ʱ����
var timerId=setInterval(nextImg,3000);
