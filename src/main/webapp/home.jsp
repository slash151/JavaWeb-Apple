<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品详情</title>
    <script src="js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="css/cube.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/home.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Author" content="Dreamer-1.">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
</head>
<body>

<nav>
    <div>
        <a href="#"><span class="iconfont icon-pingguo"></span></a>
        <a href="#">Mac</a>
        <a href="#">iPad</a>
        <a href="#">iPhone</a>
        <a href="#">Watch</a>
        <a href="#">Music</a>
        <a href="#">技术支持</a>
        <a href="#"><span class="iconfont icon-iconsreach"></span></a>
        <a href="cart.jsp"><span class="iconfont icon-bag"></span></a>
    </div>
</nav>
<div class="denglu">
    欢迎 ${login[0].username} 登录，劳动节来啦，快选购商品吧！
</div>

<div style="padding: 10px 100px 10px; margin: 10px auto; width: 800px;">
    <form action="Search.jsp" class="bs-example bs-example-form" role="form"
          style="width: 100%;" id="form1">
        <div class="row">
            <div class="col-lg-12">
                <div class="input-group">
                    <%--						<span class="input-group-btn">--%>
                    <%--                            <a class="btn btn-default" type="button" id="showAllPro"> 全部 </a>--%>
                    <%--						</span>--%>

                    <input type="text" class="form-control" name="text" id="search" placeholder="请您输入"/>

                    <span class="input-group-btn">
                        <input type="submit" id="searchGo" name="search" class="ziti" value="搜索"/>
                    </span>
                </div>
            </div>
        </div>
    </form>
</div>


<!-- 内容展示==================================================   -->
<div id="main">
    <ul id="pros">

    </ul>
</div>
<!-- 内容展示==================================================   -->

</body>


<script>
    function gouwu(data) {
        $.ajax({
            url: "GainCartProduct?cart",
            type: "POST",
            data: "id=" + data,
        })
    }

    //发送异步请求
    $(function () {

        $.ajax({
            url: "GainCartProduct?gouwuche",
            type: "POST",
            data: "flag=all",
            dataType: "JSON",//响应数据类型，默认是text
            success: function (result) {
                for (var i = 0; i < result.length; i++) {
                    $("#pros").append('<li>' +
                        '<img class="pic" src="images/' + result[i].pimg + '" />' +
                        '<div class="context"><span class="price">￥ ' + result[i].price + '</span>' +
                        '<span class="count">' + result[i].sales + '人付款</span>' +
                        '<p class="name">' + result[i].pname + '</p>' +
                        '<span class="viewCount">浏览量：' + result[i].view + '</span>' +
                        '<button class="gouwuche" onclick="gouwu(' + result[i].id + ')">购物车</button></li>');
                }
            }
        })
    })
</script>
</html>
