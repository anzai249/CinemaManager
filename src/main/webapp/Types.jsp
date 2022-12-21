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
    <title>所有类型</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<div id="topcontainer">
    <header class="top">
        <div class="top_name">电影管理系统</div>
    </header>
    <div class="nav">
        <ul>
            <a href="movies-list">编辑电影</a><a href="newslistedit">编辑新闻</a><a href="#">编辑类型</a><a href="typesinput">添加</a>
        </ul>
    </div>
    <div class="content"></div>
    <footer class="bottom"/>
</div>
<div id='app' class="container" style="color: #fff; border-radius: 5px">
    <s:if test="#request.types == null || #request.types.size() == 0">
        没有新闻
    </s:if>
    <s:else>
        <table cellpadding="0" cellspacing="0" border="0" align="center" class="movieListtable">
            <thead>
            <tr>
                <td>ID</td>
                <td>名称</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <s:iterator value="#request.types">
                <tr>
                    <td>${id}</td>
                    <td>${name}</td>
                    <td><a href="typesdelete?id=${id}" onClick="return confirm('确定删除?');">删除</a>&nbsp;<a
                            href="typesinput?id=${id}">编辑</a></td>
                </tr>
            </s:iterator>
            </tbody>
        </table>
    </s:else>
</div>
</body>
</html>
