<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png/logo.png" sizes="16x16"
          type="${pageContext.request.contextPath}/image/png">
    <title>注册苹果</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
          crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cube.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/iconfont.js"></script>
    </style>
    <!--<span class="iconfont icon-version"></span> 字体图标使用-->
</head>
<body>
<!-- 导航 -->
<nav>
    <div>
        <a href="index.jsp"><span class="iconfont icon-pingguo"></span></a>
        <a href="mac.jsp">Mac</a>
        <a href="ipad.jsp">iPad</a>
        <a href="iphone.jsp">iPhone</a>
        <a href="iwatch.jsp">Watch</a>
        <a href="#">Music</a>
        <a href="#">技术支持</a>
        <a href="#"><span class="iconfont icon-iconsreach"></span></a>
        <a><span class="iconfont icon-bag cart"></span></a>
    </div>
</nav>

<!-- 图片 -->
<div class="picture">
    <div class="support-title">
        <h3 class="apple-id">Apple ID
            <ul class="Bug-title">
                <li><a href="login.jsp">登录</a></li>
                <li>创建您的 Apple ID</li>
                <li><a href="#">常见问题解答</a></li>
            </ul>
        </h3>
    </div>
    <h1 class="text">
        创建您的Apple ID
    </h1>
</div>
<!-- 表格内容 -->
<div class="center">
    <p>只需一个Apple ID即可访问所有Apple服务。Apple ID？
        <a href="javascipt:">在这里找到它 ></a>
    </p>
</div>
<!--  -->
<form action="${pageContext.request.contextPath}/login?register" method="post" class="form1">
    <div class="form-group">
        <label for="formGroupExampleInput">姓名</label>
        <input type="text" class="form-control" id="formGroupExampleInput" name="username">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">密码</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="password">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput">电话</label>
        <input type="tel" class="form-control" name="tel">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput">地址</label>
        <input type="text" class="form-control" name="address">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput">余额</label>
        <input type="number" class="form-control" name="balance">
    </div>
    <label style="font-size: 15px;"><input type="checkbox" name="check"> 已阅读并同意《用户协议》《隐私政策》</label>
    <button type="submit" class="btn btn-primary submit">注册</button>
</form>
<div class="container">
    <div class="footer1">
        <span>版权所有©2020 Apple Inc.保留所有权利。</span>
    </div>
    <div class="footer2">
        <ul class="footer2-ul">
            <li><a class="footer2-item" href="Javascript:">隐私政策</a></li>
            <li><a class="footer2-item" href="Javascript:">使用条款</a></li>
            <li><a class="footer2-item" href="Javascript:">销售和退款</a></li>
            <li><a class="footer2-item" href="Javascript:">法律</a></li>
            <li><a href="Javascript:">网站地图</a></li>
        </ul>
    </div>
    <div class="footer3">
        <a href="Javascript:">
            <span class="USA-logo"></span>
            美国
        </a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-LCPyFKQyML7mqtS+4XytolfqyqSlcbB3bvDuH9vX2sdQMxRonb/M3b9EmhCNNNrV"
        crossorigin="anonymous"></script>
</body>
</html>
