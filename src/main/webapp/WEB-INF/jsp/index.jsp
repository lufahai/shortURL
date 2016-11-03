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
    <link rel="stylesheet" type="text/css" href="../../resources/css/index.css">
    <script type="text/javascript" src="../../resources/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="../../resources/js/index.js"></script>
</head>
<body>
<form id="form" action="/shortURL/save" method="post">
    <div id="urlDiv">
    <input id="longURL" type="text" name="longURL"/>
    <input id="button" type="button" value="生成短网址"/>
    </div>
</form>
<c:if  test="${!empty shortURL}">
    <textarea id="shortURL" cols="44" rows="1">${shortURL}</textarea>
    <input type="button" value="复制" onclick="copy()">
</c:if>
</body>
</html>
