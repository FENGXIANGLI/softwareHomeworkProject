<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fengxiangli
  Date: 16/4/19
  Time: 上午3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>北京大学图书管理系统-管理员</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>北京大学图书管理系统-管理员</h1>
    <hr/>
    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <td>${adminUser.idadminstrator}</td>
        </tr>
        <tr>
            <th>Account</th>
            <td>${adminUser.account}</td>
        </tr>
        <c:if test="${adminUser.type == 1}">
            <th>类型</th>
            <td>超级管理员</td>
        </c:if>
        <c:if test="${adminUser.type == 0}">
            <th>类型</th>
            <td>普通管理员</td>
        </c:if>
    </table>
    <hr/>
    <a href="/admin/adminUsers/back" type="button" class="btn btn-primary btn-sm">返回</a></h3>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

