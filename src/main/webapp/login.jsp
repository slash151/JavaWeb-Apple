<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>登录表单</title>
    <link rel="stylesheet" href="css/reset.min.css">
    <link rel="stylesheet" href="css/cube.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/iconfont.js"></script>
    <script src="js/style.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
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
        <a href="#"><span class="iconfont icon-bag"></span></a>
    </div>
</nav>
<div id="">
    <h1 class="sign-in-font">Please sign in.</h1>
</div>
<div class="user-info">
    <form action="login?login" method="post">
        <div class="form-group">
            <input type="text" class="form-control input" name="username" placeholder="Apple ID"
                   style="font-size: 15px;">
        </div>
        <div class="form-group">
            <input type="password" class="form-control input" name="password" placeholder="Password"
                   style="font-size: 15px;">
        </div>
        <div class="form-group">
            <input type="checkbox" name="autologin" id="sevenday">
            <label for="sevenday"> No login for seven days</label>
        </div>
        <div style="margin-bottom: 30px;">
					<span style="font-size: 10px;width: 400px; margin-bottom: 30px;">Your Apple ID is the email address you use to sign in to <br/> iTunes, App Store, and
						iCloud.</span>
        </div>
        <button type="submit" class="btn btn-primary btnadpt submit" style="font-size: 20px;">Sign In</button>
        <div class="error"><%=session.getAttribute("msg") == null ? "" : session.getAttribute("msg")%></div>
        <div class="register">
            <a href="register.jsp">Don't have an Apple ID? Create one now.</a>
        </div>
    </form>
</div>
</body>
</html>
