
$("#search-bnt").click(function () {
    var Keyword=$("#Keyword").val();
    if(Keyword==null || Keyword==""){
        alert("请输入关键字");
    }else{
        window.location.href="search?Keyword="+Keyword;
    }
})


$("#single-bnt").click(function () {
    $("#single-result").css("display","block");
    $("#singer-result").css("display","none");
    $("#songlist-result").css("display","none");
    $("#user-result").css("display","none");
})

$("#singer-bnt").click(function () {
    $("#single-result").css("display","none");
    $("#singer-result").css("display","block");
    $("#songlist-result").css("display","none");
    $("#user-result").css("display","none");
})

$("#songlist-bnt").click(function () {
    $("#single-result").css("display","none");
    $("#singer-result").css("display","none");
    $("#songlist-result").css("display","block");
    $("#user-result").css("display","none");
})

$("#user-bnt").click(function () {
    $("#single-result").css("display","none");
    $("#singer-result").css("display","none");
    $("#songlist-result").css("display","none");
    $("#user-result").css("display","block");
})

