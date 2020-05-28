<%--
  Created by IntelliJ IDEA.
  User: julain
  Date: 2020/5/14
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>测试ssmc</title>
</head>
<body>

<table border="1" width="300px">
    <tr>
        <th>ID</th>
        <th>USERNAME</th>
        <th>PASSWORD</th>
    </tr>
    <c:forEach items="${admins}" var="admin" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${admin.a_username }</td>
            <td>${admin.a_password }</td>
        </tr>
    </c:forEach>
</table>
<%--springmvc独立运行了--%>
</body>
</html>
