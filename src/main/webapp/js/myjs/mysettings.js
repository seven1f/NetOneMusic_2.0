$("#editInfo").click(function () {
    var userName=$('#userName').val();
    var userSign=$('#userSign').val();
    var userSex=$('#userSex').val();
    var userArea=$('#userArea').val();
    var userBirthday=$('#userBirthday').val();
    alert("doedit1");
    $.ajax({
        url:"editInfo",
        data:{'userName':userName,"userSign":userSign,"userSex":userSex,"userArea":userArea,"userBirthday":userBirthday},
        type:"post",
        datatype:"json",
        success:function (result) {
            alert("doedit2");
            if(result!= null && result != ""){
                alert("修改成功");
            }else {
                alert("出现错误，稍后再试")
            }
        }
    })
})

