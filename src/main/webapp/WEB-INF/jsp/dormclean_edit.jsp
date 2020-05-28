<%--
  Created by IntelliJ IDEA.
  User: julain
  Date: 2020/5/14
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <%--    获取到web目录路径--%>
    <% pageContext.setAttribute("APP_PATH",request.getContextPath()); %>

    <title>修改信息</title>
    <link rel="icon" href="${APP_PATH }/images/favicon.ico" sizes="32x32" />
    <link rel="stylesheet" href="${APP_PATH }/css/font.css">
    <link rel="stylesheet" href="${APP_PATH }/css/xadmin.css">
    <script type="text/javascript" src="${APP_PATH }/js/jquery-1.3.2.min.js"></script>
    <script src="${APP_PATH }/lib/layui/layui.js"></script>
    <script type="text/javascript" src="${APP_PATH }/js/xadmin.js"></script>
</head>

<body>

<div class="x-body">
    <form class="layui-form"  id="f_auto" action="updateDormClean" method="post" >
        <input type="hidden" value="${sessionScope.d.g_id}" name="g_id" id="g_id"/>
        <div class="layui-form-item">
            <label for="d_id" class="layui-form-label">
                <span class="">宿舍编号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_id" name="d_id"
                       autocomplete="off" value="${sessionScope.d.d_id}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="d_dormbuilding" class="layui-form-label">
                <span class="">宿舍楼</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_dormbuilding" name="d_dormbuilding"
                       autocomplete="off" value="${sessionScope.d.d_dormbuilding}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="d_grade" class="layui-form-label">
                <span class="">卫生打分</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_grade" name="d_grade"
                       autocomplete="off" value="${sessionScope.d.d_grade}" class="layui-input">
            </div>
        </div>
        <input type="hidden" value="${sessionScope.d.update_time}" name="update_time" id="update_time"/>

        <div class="layui-form-item" id="btn_xg">
            <button  class="layui-btn" id="btn_on"  lay-submit="" lay-filter="updateClass">
                修改
            </button>
        </div>
    </form>
</div>

<script>
</script>
</body>
</html>

