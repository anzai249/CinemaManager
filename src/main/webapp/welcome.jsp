<%--
  Created by IntelliJ IDEA.
  User: 86151
  Date: 2022/12/14
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

  <title>电影后台管理系统</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport"
        content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
  <link rel="stylesheet" href="/CinemaManager/static/css/font.css">
  <link rel="stylesheet" href="/CinemaManager/static/css/xadmin.css">
</head>
<body>
<div class="x-body layui-anim layui-anim-up">

  <blockquote class="layui-elem-quote">欢迎！管理员 登录《电影后台管理系统》
    当前时间:<span class="x-red" id="date"></span>
  </blockquote>
</div>
</body>
<script>
  window.onload=function(){
    var myDate = new Date();//获取系统当前时间
    var date = myDate.getFullYear()+"-"+ (myDate.getMonth()+1)+"-"+myDate.getDate()+" "+myDate.getHours()+":"+myDate.getMinutes()+":"+myDate.getSeconds();
    document.getElementById("date").innerHTML=date;
  }
</script>
</html>
