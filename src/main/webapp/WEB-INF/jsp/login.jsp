<%--
  Created by IntelliJ IDEA.
  User: hongyu
  Date: 16/12/16
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="HongYu" contect="HongYu, hy19950714@outlook.com"/>
    <link rel="bookmark" type="image/x-icon" href="favicon.ico"/>
    <link rel="shortcut icon" href="favicon.ico">
    <title>to-do list | login</title>

    <!-- Bootstrap -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!--slide-js-start-->
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <!--slide-js-end-->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-color: #f7f7f7">
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div>
            <ul class="nav navbar-nav">
                <li>
                    <a href="#"><span class="glyphicon glyphicon-list-alt"></span> to-do list | login</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden-xs hidden-sm">
                <li>
                    <a href="regist.html"><span class="glyphicon glyphicon-pencil"></span> regist</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default navbar-fixed-bottom visible-xs-block hidden-md hidden-lg" role="navigation">
    <div class="container-fluid">
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="regist.html"><span class="glyphicon glyphicon-pencil"></span> regist</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="col-md-6 col-md-offset-3">
        <form role="form" action="<%=path%>/user/action/User_login.action" method="post">
            <div class="form-group">
                <label for="email">Email address</label>
                <%--<input name="user.email" id="email" class="form-control">--%>
                <s:textfield name="email" id="email" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <%--<input name="user.password" id="password" class="form-control">--%>
                <s:textfield name="password" id="password" cssClass="form-control"/>
            </div>
            <button type="submit" class="btn btn-default">Login</button>
        </form>
    </div>
</div>
</body>
</html>
