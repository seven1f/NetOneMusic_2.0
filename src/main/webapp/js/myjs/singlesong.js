$(function () {
    var songlyrics=$("#songlyrics").text();
   var lyrics = $.ajax({
        url:songlyrics,
        async:false
    });

   var temp =lyrics.responseText;
    var temps = temp.split("%");
   $.each(temps,function (index, item) {
       var p = $("<p></p>").append(item)
       p.appendTo($("#lyices"))
   })

})

//模态框移入移出事件
$(".songlistli").mouseenter(function () {
    $(this).css("background", "gainsboro");
})
$(".songlistli").mouseleave(function () {
    $(this).css("background", "white");
})

//添加歌曲到歌单ajax
$(".songlistli").click(function () {
    alert($(this).attr("sl-id"));
    var singlesongId=$("#singlesongId").html();
    alert(singlesongId);
    var songlistId=$(this).attr("sl-id");
    $.ajax({
        url:"addSong",
        type:"get",
        data:{'songId':singlesongId,'songlistId':songlistId},
        datatype:"json",
        success:function (result) {
            alert("return111");
            if(result.code==100){
                $("#myModal").modal('hide');
                alert("成功添加");
            }else if(result.code==200){
                $("#myModal").modal('hide');
                alert("歌单中已存在此歌曲");
            }
        }
    })
})

