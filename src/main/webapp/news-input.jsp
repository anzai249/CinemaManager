<%--
  Created by IntelliJ IDEA.
  User: a3818
  Date: 2022/12/14
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>添加新闻</title>
</head>
<body>
<s:form action="news-save" method="post">
    <s:textfield name="Title" label="标题"></s:textfield>
    <s:textfield name="Info" label="信息"></s:textfield>
    <s:submit></s:submit>
</s:form>
</body>
</html>
