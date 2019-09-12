$(".btns31").click(function () {
    alert($(this).attr("collection-id"));
    var songlistId=$(this).attr("collection-id");
    $.ajax({
        url:"collectionSonglist",
        data:{"songlistId":songlistId},
        type:"get",
        datatyppe:"json",
        success:function (result) {
            if(result.code==100){
                alert("收藏成功！你可以再我的音乐中查看");
            }else alert("你已经收藏过这个歌单拉~");
        }
    })
})