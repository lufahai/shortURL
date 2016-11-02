function copy(){
    var e=document.getElementById("shortURL");//对象是content
    e.select(); //选择对象
    document.execCommand("Copy"); //执行浏览器复制命令
    alert("复制成功！");
}
function getURL() {
    $("#msg").html("");
    var url = $("#longURL").val();//请求的url
    var dateTime = disptime();
    var time2 = dateTime.DateTime;
    $("#msg1").html("发送时间：" + time2);
    $.ajax({
        type: 'get',
        url: url,
        cache: false,
        dataType: "jsonp", //跨域采用jsonp方式
        processData: false,
        timeout:10000, //超时时间，毫秒
        complete: function (data) {
            var dateTime2 = disptime();
            var time22 = dateTime2.DateTime;
            var htmlTxt =[];
            if (data.status==200) {
                htmlTxt.push("成功<br/>");
            } else {
                htmlTxt.push("失败<br/>");
            }
            htmlTxt.push("readyState=" + data.readyState + "<br/>status=" + data.status + "<br/>statusText=" + data.statusText + "<br/>响应时间：" + time22);
            var htmlString = htmlTxt.join('');
            $("#msg").html(htmlString);
        }
    });
}
function disptime() {
    var date = new Date();
    var yyyy = date.getFullYear();//四位年份
    var month = date.getMonth() + 1;//月份 0-11
    var day = date.getDate();//日
    var HH = date.getHours();//时
    var minute = date.getMinutes();//分钟
    var second = date.getSeconds();//秒
    var milliseconds=date.getMilliseconds();//毫秒
    if (month < 10) {
        month = "0" + month;
    }
    if (day < 10) {
        day = "0" + day;
    }
    if (HH < 10) {
        HH = "0" + HH;
    }
    if (minute < 10) {
        minute = "0" + minute;
    }
    if (second < 10) {
        second = "0" + second;
    }
    var time = yyyy + "-" + month + "-" + day + " " + HH + ":" + minute + ":" + second + " " + milliseconds;
    var timeTxt = yyyy + month + day + HH + minute + second;
    var time = {
        DateTime: time,
        TimeTxt: timeTxt
    }
    return time;
}