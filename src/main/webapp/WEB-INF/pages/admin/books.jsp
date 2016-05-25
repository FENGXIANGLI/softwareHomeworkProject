<%--
  Created by IntelliJ IDEA.
  User: fengxiangli
  Date: 16/5/23
  Time: 下午12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>图书管理</title>

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
  <h1>北京大学图书管理系统-管理员平台</h1>
  <hr/>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">北京大学管理员平台</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li ><a href="/admin/users">用户管理</a></li>
          <li class="active"><a href="/admin/books">图书管理</a><span class="sr-only">(current)</span></li>
          <li><a href="/admin/transaction">订单管理</a></li>
        </ul>
        <form:form action="/admin/book/search" class="navbar-form navbar-left" role="search">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="搜索图书" name="bookSearchContent">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form:form>



        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${adminUserName}<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">个人资料</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="/admin/user/logout">注销</a></li>
            </ul>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>

  <h3>所有图书 <a href="/admin/books/add" type="button" class="btn btn-primary btn-sm">添加</a></h3>

  <!-- 如果用户列表为空 -->
  <c:if test="${empty bookList}">
    <div class="alert alert-warning" role="alert">
      <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>书籍表为空，请<a href="/admin/books/add" type="button" class="btn btn-primary btn-sm">添加</a>
    </div>
  </c:if>

  <!-- 如果用户列表非空 -->
  <c:if test="${!empty bookList}">
    <table class="table table-bordered table-striped">
      <tr>
        <th>书名</th>
        <th>索书号</th>
        <th>作者</th>
        <th>出版社</th>
        <th>ISBN号</th>
        <th>操作</th>
      </tr>

      <c:forEach items="${bookList}" var="book">
        <tr>
          <td>${book.bookName}</td>
          <td>${book.id}</td>
          <td>${book.author}</td>
          <td>${book.press}</td>
          <td>${book.isbn}</td>
          <td>
            <a href="/admin/books/show/${book.id}" type="button" class="btn btn-sm btn-success">详情</a>
            <a href="/admin/books/update/${book.id}" type="button" class="btn btn-sm btn-warning">修改</a>
            <a href="/admin/books/delete/${book.id}" type="button" class="btn btn-sm btn-danger">删除</a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>
<script >
  function azsq(){
    window.location.href="/";
  }
</script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
