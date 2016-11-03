<%--
  Created by IntelliJ IDEA.
  User: fahai
  Date: 2016/10/30
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>拓尔思短网址</title>
    <!--[if IE]>
    <link rel="stylesheet" type="text/css" href="../../resources/css/ie8.css" />
    <![endif]-->
    <link rel="stylesheet" href="../../resources/css/shorturl.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/css/index.css">
    <script type="text/javascript" src="../../resources/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../resources/js/index.js"></script>
</head>
<body>
<div class="main">
<div class="img-logo">
    <img src="../../resources/image/trslogo.png">
    <div class="top-div">短网址生成器</div>
</div>
<form id="form" action="/shortURL/save" method="post">
    <div id="urlDiv">
        <input id="longURL" type="text" name="longURL"/>
        <input id="button" class="input-url" type="button" value="生成短网址"/>
    </div>
</form>
<c:if  test="${!empty shortURL}">
    <div class="shortDiv">
    <textarea id="shortURL" cols="44" rows="1">${shortURL}</textarea>
    <input type="button" class="input-url copy-btn" value="复制" onclick="copy()">
    </div>
</c:if>
</div>
</body>
</html>
