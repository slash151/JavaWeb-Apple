<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png/logo.png" sizes="16x16"
          type="${pageContext.request.contextPath}/image/png">
    <title>苹果官网</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cube.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/iconfont.js"></script>
    </style>
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
        </a>
    </div>
</nav>
<!-- 用户登录 -->
<div class="sign-in">
			<span class="sign-in-possession">
				Your Bag is empty.
			</span>
    <hr class="sign-in-hr"/>
    <!-- <a class="sign-in-account" href="login-in.html">
        <img class="sign-in-img" src="images/signIn.svg" />
        Sign-in
    </a> -->
    <!-- <a class="sign-in-account">
        <img class="sign-in-img" src="images/signIn.svg" />
        james
    </a> -->
</div>
<!-- 轮播图 -->
<section class="banner">
    <div class="img">
        <span>iphone 12 pro max<br></span>
        <span id="">It's a leap year.<br></span>
        <span style="font-size: 15px;line-height: 50px;">From $41.62/mo. or $999 before trade‑in</span><br>
        <a href="buy.jsp?pid=11">
            <!-- <img src="images/iphone_banner1.jpg" height="100%" width="100%" alt=""> --></a>
    </div>
    <div class="img">
        <!-- style="display:none" -->
        <a href="#">
            <!-- <img src="images/watch_banner2.jpg" height="100%" width="100%" alt=""> -->
            <img src="https://www.apple.com/v/watch/home/ag/images/overview/se/logo-watch-se__soyna2pegxeq_large.png"
                 height="55"
                 width="144" alt="">
            <h2>Series se 新登场。</h2>
        </a>
    </div>
    <div class="img">
        <div>
            <h1>MacBook Pro 16''</h1>
            <h2>一身才华，一触，即发。</h2>
        </div>
        <a href="buy.jsp?pid=3">
            <!-- <img src="images/macbook_banner3.jpg" height="100%" width="100%" alt=""> --></a>
    </div>
    <span class="prev" style="left:0;">&lt;</span>
    <span class="next" style="right:0;">&gt;</span>
</section>
<!-- 四张大图 -->
<section class="promos">
    <p><a href="#"><img src="${pageContext.request.contextPath}/images/indexli1.jpg" width="100%" height="100%" alt=""></a>
    </p>
    <p><a href="#"><img src="${pageContext.request.contextPath}/images/indexli2.jpg" width="100%" height="100%" alt=""></a>
    </p>
    <p><a href="#"><img src="${pageContext.request.contextPath}/images/indexli3.jpg" width="100%" height="100%" alt=""></a>
    </p>
    <p><a href="#"><img src="${pageContext.request.contextPath}/images/indexli4.jpg" width="100%" height="100%" alt=""></a>
    </p>
</section>
<section class="fotitle">
    <br>
</section>
<section class="footer">
    <div class="footmain">
        <div>
            <ul>
                <li>
                    <h5>选购及了解</h5>
                </li>
                <li><a href="#">Mac</a></li>
                <li><a href="#">iPad</a></li>
                <li><a href="#">iPhone</a></li>
                <li><a href="#">Watch</a></li>
                <li><a href="#">Music</a></li>
                <li><a href="#">iTunes</a></li>
                <li><a href="#">iPod</a></li>
                <li><a href="#">配件</a></li>
                <li><a href="#">App Store 充值卡</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li>
                    <h5>Apple Store 商店</h5>
                </li>
                <li><a href="#">查找零售店</a></li>
                <li><a href="#">Genius Bar 天才吧</a></li>
                <li><a href="#">讲座和学习</a></li>
                <li><a href="#">青少年活动</a></li>
                <li><a href="#">Apple Store App</a></li>
                <li><a href="#">翻新和优惠</a></li>
                <li><a href="#">分期付款</a></li>
                <li><a href="#">重复使用和循环利用</a></li>
                <li><a href="#">订单状态</a></li>
                <li><a href="#">选购帮助</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li>
                    <h5>教育应用</h5>
                </li>
                <li><a href="#">Apple 与教育</a></li>
                <li><a href="#">高校师生选购</a></li>
            </ul>
            <ul>
                <li>
                    <h5>商务应用</h5>
                </li>
                <li><a href="#">Apple 与商务</a></li>
                <li><a href="#">商务选购</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li>
                    <h5>账户</h5>
                </li>
                <li><a href="#">管理你的 Apple ID</a></li>
                <li><a href="#">Apple Store 帐户</a></li>
                <li><a href="#">iCloud.com</a></li>
            </ul>
            <ul>
                <li>
                    <h5>Apple 价值观</h5>
                </li>
                <li><a href="#">辅助功能</a></li>
                <li><a href="#">环境责任</a></li>
                <li><a href="#">隐私</a></li>
                <li><a href="#">供应商责任</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li>
                    <h5>关于 Apple</h5>
                </li>
                <li><a href="#">Apple 资讯</a></li>
                <li><a href="#">工作机会</a></li>
                <li><a href="#">媒体资讯</a></li>
                <li><a href="#">活动</a></li>
                <li><a href="#">联系 Apple</a></li>
            </ul>
        </div>
    </div>
    <div class="moreway">
        更多选购方式：前往 <a href="#">Apple Store 零售店</a>，致电 400-666-8800 或查找在你附近的<a href="#">授权经销商</a></div>
    <div class="link">
        <div style="text-align:left">
            Copyright © 2017 Apple Inc. 保留所有权利。
        </div>
        <div>
            <a href="#">隐私政策</a>
            <a href="#">使用条款</a>
            <a href="#">销售政策</a>
            <a href="#">法律信息</a>
            <a href="#">网站地图</a>
        </div>
        <div style="text-align:right"><span class="iconfont icon-china"></span>中国</div>
    </div>
    <div class="pls">京公安网安备 11010502008968 <a href="#">京ICP备10214630</a></div>
</section>
<script src="${pageContext.request.contextPath}/js/style.js"></script>

</body>
</html>
