<%--
  Created by IntelliJ IDEA.
  User: fahai
  Date: 2016/10/31
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>404</title>
    <link rel="stylesheet" href="../../resources/css/shorturl.css" type="text/css" media="screen, projection" />
    <!--[if IE]>
    <link rel="stylesheet" type="text/css" href="css/ie8.css" />
    <![endif]-->
</head>
<div id="wrapper">
    <div class="graphic"></div>
    <div class="not-found-text">
        <h1 class="not-found-text">您访问的页面不存在!</h1>
    </div>
    <div class="dog-wrapper">
        <!-- dog running -->
        <div class="dog"></div>
        <!-- dog running -->
    </div>
    <div class="planet"></div>
</div>
<script type="text/javascript" src="../../resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../../resources/js/custom-scripts.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        universalPreloader();
    });
    $(window).load(function(){
        //remove Universal Preloader
        universalPreloaderRemove();
        rotate();
        dogRun();
    });
</script>
</body>
</html>
