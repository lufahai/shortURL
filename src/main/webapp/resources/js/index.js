jQuery(document).ready(function ($) {
    jQuery("#button").click(function(){
        var url = $("#longURL").val();//请求的url
        if (!(url.indexOf("http://") == 0 || url.indexOf("https://") == 0)){
            url = "http://" + url;
        }
        jQuery.ajax({
            type: 'get',
            url: url,
            cache: false,
            dataType: "jsonp", //跨域采用jsonp方式
            processData: false,
            timeout:4000, //超时时间，毫秒
            complete: function (data) {
                if (data.status==200) {
                    $('#form').submit();
                } else {
                    alert("您输入的网址不存在，请重新输入！");
                    return false;
                }
            }
        });
    });

});
function copy(){
    var e=document.getElementById("shortURL");//对象是content
    e.select(); //选择对象
    document.execCommand("Copy"); //执行浏览器复制命令
    alert("复制成功！");
}