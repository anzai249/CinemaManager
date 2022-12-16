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
</head>
<body>
<s:if test="#request.movies == null || #request.movies.size() == 0">
    没有电影
</s:if>
<s:else>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <td>ID</td>
            <td>名称</td>
            <td>介绍</td>
            <td>类别</td>
            <td>操作</td>
        </tr>
        <s:iterator value="#request.movies">
            <tr>
                <td>${id}</td>
                <td>${name}</td>
                <td>${info}</td>
                <td>${type}</td>
                <td><a href="movies-delete?id=${id}" onClick="return confirm('确定删除?');">删除</a>&nbsp;<a href="movies-input?id=${id}">编辑</a></td>
            </tr>
        </s:iterator>
    </table>
</s:else>
</body>
</html>
