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
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="HongYu" contect="HongYu, hy19950714@outlook.com" />
    <link rel="bookmark"  type="image/x-icon"  href="favicon.ico"/>
    <link rel="shortcut icon" href="favicon.ico">
    <title>to-do list</title>

    <!-- Bootstrap -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!--slide-js-start-->
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script>
        $(document).on("pageinit", function (event) {
            var abstract = "";
//            $(".touch").on("tap", function (event) {
//                if (abstract != "") {
//                    $(".text").children().removeClass("col-xs-8");
//                    $(".text").children().removeClass("item-left");
//                    $(".text").children().addClass("col-xs-12");
//                    $(".text").children().addClass("item");
//                    $(".text").find(".item-right").remove();
//                    $(".text").children().find(".abstract").text(abstract);
//                    abstract = "";
//                }
//            });
            $(".touch").on("swiperight", function (event) {
                if (abstract != "") {
                    $(".text").children().removeClass("col-xs-8");
                    $(".text").children().removeClass("item-left");
                    $(".text").children().addClass("col-xs-12");
                    $(".text").children().addClass("item");
                    $(".text").find(".item-right").remove();
                    $(".text").children().find(".abstract").text(abstract);
                    abstract = "";
                }
            });
            $(".touch").on("swipeleft", function (event) {
                if ($(".text").find(".item-right").length > 0) {
                } else {
                    $(".text").children().removeClass("col-xs-12");
                    $(".text").children().removeClass("item");
                    $(".text").children().addClass("col-xs-8");
                    $(".text").children().addClass("item-left");
                    abstract = $(".text").children().find(".abstract").text();
                    var short_abstract = abstract.substr(0, 5) + "...";
                    $(".text").children().find(".abstract").text(short_abstract);
                    $(".text").append('<div class="item-right col-xs-4" style="padding: 0;height:3em;background-color: #cccccc"> <div class="center-block"><a class="pull-left glyphicon glyphicon-ok" style="color:#fcfcfc;line-height: 2em;font-size: 1.5em;padding: 0 0 0 0.4em"></a> <a class="pull-left glyphicon glyphicon-trash" style="color:#fcfcfc;line-height: 2em;font-size: 1.5em;padding: 0 0 0 0.4em"></a> <a class="pull-left glyphicon glyphicon-info-sign" style="color:#fcfcfc;line-height: 2em;font-size: 1.5em;padding: 0 0 0 0.4em"></a> </div> </div>');
                }
            });
        });
    </script>
    <style>
        .item {
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;

            box-shadow: 2px 2px 2px #888888;

            height: 3em;
        }

        .item-left {
            -webkit-border-top-left-radius: 5px;
            -webkit-border-bottom-left-radius: 5px;
            -moz-border-radius-topleft: 5px;
            -moz-border-radius-bottomleft: 5px;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;

            box-shadow: 2px 2px 2px #888888;

            height: 3em;
        }

        .item-right {
            -webkit-border-top-right-radius: 5px;
            -webkit-border-bottom-right-radius: 5px;
            -moz-border-radius-topright: 5px;
            -moz-border-radius-bottomright: 5px;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;

            box-shadow: 2px 2px 2px #888888;

            height: 3em;
        }
    </style>
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
                    <a href="#"><span class="glyphicon glyphicon-list-alt"></span> to-do list | home</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden-xs hidden-sm">
                <li>
                    <a href="#" onclick="myFunction()"><span class="glyphicon glyphicon-log-out"></span> logout</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden-xs hidden-sm">
                <li>
                    <a href="usersetting.html"><span class="glyphicon glyphicon-user"></span> username</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden-xs hidden-sm">
                <li>
                    <a href="additem.html"><span class="glyphicon glyphicon-plus"></span> add</a>
                </li>
            </ul>
            <form class="navbar-form navbar-left navbar-right hidden-xs hidden-sm" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
    </div>
</nav>
<c:if test="${msg!=null }">
    <div class="alert alert-${msg.type} alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
            ${msg.content}
    </div>
</c:if>
<nav class="navbar navbar-default navbar-fixed-bottom visible-xs-block hidden-md hidden-lg" role="navigation">
    <div class="container-fluid">
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="additem.html"><span class="glyphicon glyphicon-plus"></span> add</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="usersetting.html"><span class="glyphicon glyphicon-user"></span> username</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" onclick="myFunction()"><span class="glyphicon glyphicon-log-out"></span> logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div data-role="page" data-theme="d" style="margin-top: 3em">
    <div data-role="content">
        <div class="touch">
            <div class="container-fluid">
                <!--<div class="row" style="margin-bottom: 0.3em">-->
                <!--<div class="item col-xs-12" style="padding: 0;height:3em;background-color: #efefef">-->
                <!--<span class="pull-left glyphicon glyphicon-bookmark"-->
                <!--style="color:#c12e2a;line-height: 2em;font-size: 1.5em;padding: 0 0.2em"></span>-->
                <!--<span class="abstract" style="line-height: 3em;">和张三，李四，王五去吃饭</span>-->
                <!--</div>-->
                <!--</div>-->
                <!--<div class="row" style="margin-bottom: 0.3em">-->
                <!--<div class="item-left col-xs-8" style="padding: 0;height:3em;background-color: #efefef">-->
                <!--<span class="pull-left glyphicon glyphicon-bookmark"-->
                <!--style="color:#c12e2a;line-height: 2em;font-size: 1.5em;padding: 0 0.2em"></span>-->
                <!--<span class="abstract" style="line-height: 3em;">和张三，李四，王五去吃饭</span>-->
                <!--</div>-->
                <!--<div class="item-right col-xs-4" style="padding: 0;height:3em;background-color: #cccccc">-->
                <!--<div class="center-block"><a class="pull-left glyphicon glyphicon-ok"-->
                <!--style="color:#fcfcfc;line-height: 2em;font-size: 1.5em;padding: 0 0 0 0.4em"></a>-->
                <!--<a class="pull-left glyphicon glyphicon-trash"-->
                <!--style="color:#fcfcfc;line-height: 2em;font-size: 1.5em;padding: 0 0 0 0.4em"></a> <a-->
                <!--class="pull-left glyphicon glyphicon-info-sign"-->
                <!--style="color:#fcfcfc;line-height: 2em;font-size: 1.5em;padding: 0 0 0 0.4em"></a>-->
                <!--</div>-->
                <!--</div>-->
                <!--</div>-->
                <!--<hr>-->
                <div class="row text" style="margin-bottom: 0.3em">
                    <div class="item col-xs-12 " style="padding: 0;height:3em;background-color: #efefef">
                        <span class="pull-left glyphicon glyphicon-bookmark"
                              style="color:#c12e2a;line-height: 2em;font-size: 1.5em;padding: 0 0.2em"></span>
                        <span class="abstract" style="line-height: 3em;">和张三，李四，王五去吃饭</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function myFunction(){
        var x;
        var r=confirm("是否注销？");
        if (r==true){
            window.open('login.html','_self')
        }
    }
</script>

</body>
</html>