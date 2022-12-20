<%--
  Created by IntelliJ IDEA.
  User: a3818
  Date: 2022/12/13
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>电影管理系统</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<div id="topcontainer">
    <header class="top">
        <div class="top_name">电影管理系统</div>
    </header>
    <div class="nav">
        <ul>
            <a href="#">电影列表</a><a href="newslist">新闻列表</a><a href="login.jsp">登录</a>
        </ul>
    </div>
    <div class="content"></div>
    <footer class="bottom"/>
</div>
<div id='app' class="container" style="color: #fff; border-radius: 5px; align-self: center; display: flex; width: 100%;">
    <s:if test="#request.movies == null || #request.movies.size() == 0">
        没有电影
    </s:if>
    <s:else>
        <table cellpadding="0" cellspacing="0" border="0" align="center" class="movieListtable">
            <thead>
            <tr>
                <td>ID</td>
                <td>名称</td>
                <td>介绍</td>
                <td>类别</td>
            </tr>
            </thead>
            <tbody class="movieList">
            <s:iterator value="#request.movies">
                <tr>
                    <td>${id}</td>
                    <td>${name}</td>
                    <td>${info}</td>
                    <td>${type}</td>
                </tr>
            </s:iterator>
            </tbody>
        </table>
    </s:else>
</div>
</body>
</html>
