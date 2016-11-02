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
    <script type="text/javascript" src="../../resources/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="../../resources/js/index.js"></script>
</head>
<body>
<form id="form" action="/shortURL/save" method="post">
    <div id="urlDiv">
    <input id="longURL" type="text" name="longURL"/>
        <input type="button" value="判断是否可访问" onclick="getURL()"/>
    <input id="button" type="submit" value="生成短网址"/>
    </div>
</form>
<div id="msg1"></div>
<div id="msg"></div>
<c:if  test="${!empty shortURL}">
    <label id="shortURL">${shortURL}</label>
    <input type="button" value="复制" onclick="copy()">
</c:if>
</body>
</html>
