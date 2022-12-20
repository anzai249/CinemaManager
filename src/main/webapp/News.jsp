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
    <title>所有电影</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<div id='app' class="container" style="color: #fff; border-radius: 5px">
    <s:if test="#request.news == null || #request.news.size() == 0">
        没有新闻
    </s:if>
    <s:else>
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <td>ID</td>
                <td>名称</td>
                <td>介绍</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <s:iterator value="#request.news">
                <tr>
                    <td>${id}</td>
                    <td>${title}</td>
                    <td>${info}</td>
                    <td><a href="movies-delete?id=${id}" onClick="return confirm('确定删除?');">删除</a>&nbsp;<a
                            href="movies-input?id=${id}">编辑</a></td>
                </tr>
            </s:iterator>
            </tbody>
        </table>
    </s:else>
</div>
</body>
</html>