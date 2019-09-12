$('#hotmusic').click(function () {
    // $(this).parents().siblings(".popularmusic").addClass("hideIt");
    $("#popularmusic").css("display","block");
    $("#allrecord").css("display","none");
    $("#introduction").css("display","none");
})

$('#record').click(function () {
    // $(this).parents().siblings(".popularmusic").addClass("hideIt");
    $("#popularmusic").css("display","none");
    $("#allrecord").css("display","block");
    $("#introduction").css("display","none");
})

$('#jieshao').click(function () {
    // $(this).parents().siblings(".popularmusic").addClass("hideIt");
    $("#popularmusic").css("display","none");
    $("#allrecord").css("display","none");
    $("#introduction").css("display","block");
})

$("#followsinger").click(function (){
    var singerId=$(this).attr("singer-id");
    $.ajax({
        url:"followSinger",
        type:"get",
        data:{'singerId':singerId},
        datatype:"json",
        success:function (result) {
             if(result.code==200){
                alert("你已经关注了这位歌手~");
            }else alert("关注成功！");
        }
    })
})
