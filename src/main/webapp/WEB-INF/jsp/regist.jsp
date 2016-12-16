<%--
  Created by IntelliJ IDEA.
  User: hongyu
  Date: 16/12/16
  Time: 上午11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <title>to-do list | regist</title>

    <!-- Bootstrap -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!--slide-js-start-->
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <%--<script src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>--%>
    <script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>

</head>
<body style="background-color: #f7f7f7">
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div>
            <ul class="nav navbar-nav">
                <li>
                    <a href="#"><span class="glyphicon glyphicon-list-alt"></span> to-do list | regist</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden-xs hidden-sm">
                <li>
                    <a href="/WEB-INF/jsp/login.jsp"><span class="glyphicon glyphicon-log-in"></span> login</a>
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
                    <a href="/WEB-INF/jsp/login.jsp"><span class="glyphicon glyphicon-log-in"></span> login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="col-md-6 col-md-offset-3">
        <%--<s:form action="regist" method="post">--%>
            <%--<s:textfield name="user.email" value="%{employee.firstName}" label="%{getText('label.firstName')}" size="40"/>--%>
            <%--<s:textfield name="user.password" value="%{employee.lastName}" label="%{getText('label.lastName')}" size="40"/>--%>
            <%--<s:textfield name="user.nickname" value="%{employee.age}" label="%{getText('label.age')}" size="20"/>--%>
            <%--<s:submit value="%{getText('button.label.submit')}"/>--%>
            <%--<s:submit value="%{getText('button.label.cancel')}" action="index"/>--%>
        <%--</s:form>--%>
        <form role="form" action="exectueRegister.action" method="post" id="registform" name="registform">
            <div class="form-group">
                <label for="email">Email address</label>
                <s:textfield name="userBean.email" id="email" cssClass="form-control"/>
                <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <s:textfield name="userBean.password" id="password" cssClass="form-control"/>
                <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
            </div>
            <div class="form-group">
                <label for="confirm_password">Enter the password again</label>
                <input type="password" class="form-control" id="confirm_password" placeholder="Enter the password again">
            </div>
            <div class="form-group">
                <label for="nickname">nickname</label>
                <s:textfield name="userBean.nickname" id="nickname" cssClass="form-control"/>
                <%--<input type="text" class="form-control" id="nickname" placeholder="nickname">--%>
            </div>
            <%--<div class="form-group">--%>
                <%--<label for="exampleInputEmail1">Verification code</label>--%>
                <%--<input type="text" class="form-control" id="VerificationCode" placeholder="Verification code">--%>
            <%--</div>--%>
            <button type="submit"  class="btn btn-default">Regist</button>
        </form>
    </div>
</div>
<script>
    $(document).ready(function(){
        $("#nickname").attr("placeholder", "nickname");
        $("#password").attr("placeholder", "password");
        $("#email").attr("placeholder", "email");
    });
</script>
<script>
    $.validator.setDefaults({
        submitHandler: function() {
            document.getElementById("registform").submit();
        }
    });
    $().ready(function() {
        $("#registform").validate({
            rules: {
                nickname: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                nickname: {
                    required: "请输入用户名",
                    minlength: "用户名必需由两个字母组成"
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 5 个字母"
                },
                confirm_password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 5 个字母",
                    equalTo: "两次密码输入不一致"
                },
                email: "请输入一个正确的邮箱"
            }
        });
    });
</script>
</body>
</html>
