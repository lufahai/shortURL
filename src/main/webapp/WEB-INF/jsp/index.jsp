<%--
  Created by IntelliJ IDEA.
  User: fahai
  Date: 2016/10/30
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>拓尔思短网址</title>
    <script type="text/javascript">
        function copy(){
            var e=document.getElementById("shortURL");//对象是content
            e.select(); //选择对象
            document.execCommand("Copy"); //执行浏览器复制命令
            alert("已复制好，可贴粘。");
        }
    </script>
</head>
<body>
<form id="form" action="/shortURL/save" method="post">
    <div id="urlDiv">
    <input id="longURL" type="text" name="longURL"/>
    <input id="button" type="submit" value="生成短网址"/>
    </div>
</form>
<c:if  test="${!empty shortURL}">
    <label id="shortURL">${shortURL}</label>
    <input type="button" value="复制" onclick="copy()">
</c:if>
</body>
</html>
