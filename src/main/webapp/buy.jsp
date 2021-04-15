<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="photo/logo.png" sizes="16x16" type="image/png">
    <meta charset="utf-8">
    <title>Buy iphone</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cube.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/buy-iphone.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/iconfont.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .footmain a {
            color: #000;
        }

        .lidown {
            border: 2px solid #0070c9 !important;
        }
    </style>

    <script>

    </script>
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
<!-- 购物车 -->
<div class="sign-in">
			<span class="sign-in-possession">
				Your Bag is empty.
			</span>
    <hr class="sign-in-hr"/>
</div>
<!-- top-header -->
<div class="buy">
    <form action="purchase-succeed.jsp" method="get">
        <div class="buy-img">
            <!-- <img src="images/iphone7p2.jpg"> -->
        </div>
        <div class="buy-info">
            <!-- 产品名字 -->
            <span class="buy-info-name"></span><br>
            <!-- 产品描述 -->
            <span class="buy-info-describe"></span><br><br>
            <!-- 产品价格 -->
            <span class="buy-info-price">$</span><br>
            <hr class="buy-info-hr"/>
            <br>
            <span style="font-size: 16px;">Choose your color.</span>
            <!-- 产品颜色 -->
            <ul class="buy-info-color">
                <li class="lidown">
                    <a>
                        <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/finish-white-202010?wid=102&hei=102&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1601072989000">
                        <br>
                        <span></span>
                    </a>
                </li>
                <li>
                    <a>
                        <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/finish-black-202010?wid=102&hei=102&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1601072988000">
                        <br>
                        <span></span>
                    </a>
                </li>
                <li>
                    <a>
                        <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/finish-green-202010?wid=102&hei=102&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1601072990000">
                        <br>
                        <span></span>
                    </a>
                </li>
                <li>
                    <a>
                        <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/finish-blue-202010?wid=102&hei=102&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1601072988000">
                        <br>
                        <span></span>
                    </a>
                </li>
            </ul>
            <hr class="buy-info-hr"/>
            <br>
            <span style="font-size: 16px;">Choose your capacity.</span>
            <!-- 产品存储空间 -->
            <ul class="buy-info-capacity">
                <li class="lidown"><a> </a></li>
                <li><a> </a></li>
                <li><a> </a></li>
                <li><a> </a></li>
            </ul>
            <hr class="buy-info-hr"/>
            <br>
            <!-- 购买按钮 -->
            <button type="submit" class="btn btn-primary btnadpt submit" style="font-size: 20px;border-radius: 7px;">
                Buy
            </button>

        </div>
    </form>
</div>
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
<script src="js/style.js"></script>
</body>
<script>
    var vhref = window.location.search;
    var params = vhref.substr(vhref.indexOf("=") + 1);
    //发送异步请求
    $.ajax({
        url: "${pageContext.request.contextPath}/GainProduct",
        type: "POST",
        data: {"id": params},
        dataType: "JSON",//响应数据类型，默认是text
        success: function (data) {
            var img = '<img src="images/' + data.pimg + '">';
            //在对应的元素中添加元素
            $('.buy-img').append(img);
            var name = data.pname;
            $('.buy-info-name').text(name);
            var describe = data.pinfos;
            $('.buy-info-describe').text(describe);
            var price = data.price;
            $('.buy-info-price').text("$"+price);
            var pars = data.color.split("#");
            var li = $('.buy-info-color').find('li');
            for (k = 0; k < pars.length; k++) {
                li.eq(k).find("a > span").text(pars[k]);
            }
            var para = data.capacity.split("#");
            var li = $('.buy-info-capacity').find('li');
            for (k = 0; k < para.length; k++) {
                li.eq(k).find("a").text(para[k]);
            }
        }
    });
</script>
<script>
    //当选中li时，改变它的外边框，其他的li边框恢复为原来的颜色
    $(function () {
        $(".buy-info-color li").click(function () {
            $(".buy-info-color li").eq($(this).index()).addClass("lidown").siblings().removeClass("lidown");
        })
    })
    $(function () {
        $(".buy-info-capacity li").click(function () {
            $(".buy-info-capacity li").eq($(this).index()).addClass("lidown").siblings().removeClass("lidown");
        })
    })
</script>
</html>
