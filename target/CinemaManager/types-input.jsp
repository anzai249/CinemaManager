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
    <title>添加类别</title>
</head>
<body>
<s:form action="types-save" method="post">
    <s:textfield name="Name" label="名字"></s:textfield>
    <s:submit></s:submit>
</s:form>
</body>
</html>
