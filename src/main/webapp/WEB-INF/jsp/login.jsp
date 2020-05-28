<%--
  Created by IntelliJ IDEA.
  User: julain
  Date: 2020/5/14
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <%--    获取到web目录路径--%>
    <% pageContext.setAttribute("APP_PATH",request.getContextPath()); %>

    <link rel="stylesheet" href="${APP_PATH }/css/usersLogin.css">
    <link rel="icon" href="${APP_PATH }/images/favicon.ico" sizes="32x32" />
    <script src="${APP_PATH }/js/jquery-1.3.2.min.js"></script>
    <script src="${APP_PATH }/js/login.js"></script>

    <title>前台首页</title>
</head>
<body>

<div class="header">

</div>

<div class="body">
    <div class="panel">
        <div class="top">
            <p>账户登陆</p>
        </div>

        <div class="middle">
            <form action="login" method="post">

                <span class="erro">${msg}</span>
                <span class="s1"></span>
                <span class="s2"></span>
                <input type="text" name="a_username" value=""  class="iputs" placeholder="请输入账号"/>
                <input type="password" name="a_password" value="" class="iputs" placeholder="密码"/>
                <input type="submit" value="登陆"/>
            </form>
        </div>
    </div>
</div>

<div class="footer">
    <span>@Copyright © 2020-2020 版权所有 </span>
</div>
</body>
</html>
