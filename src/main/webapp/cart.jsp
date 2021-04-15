<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <link rel="icon" href="photo/logo.png" sizes="16x16" type="image/png">
    <title>购物车</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/reset.min.css">
    <link rel="stylesheet" href="css/cube.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/cart.css">
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script src="js/iconfont.js"></script>
    <%--    <script type="text/javascript" src="${pageContext.request.contextPath}/WebContent/js/cart.js"--%>
    <%--            charset="UTF-8" async></script>--%>
    </style>
    <!--<span class="iconfont icon-version"></span> 字体图标使用-->
</head>
<body>
<script>
    var userid = <%=session.getAttribute("userid")%>;
    $.ajax({
        url: "GainCartProduct?gain",
        type: "POST",
        data: {"id": userid},
        dataType: "JSON",//响应数据类型，默认是text
        success: function (data) {
            for (var i = 0; i < data.length; i++) {
                $('.cart-body-part').append(
                    '<tr><td><input class="productid" value="' + data[i].id + '"><div class="cart-body-elem pname">' + data[i].pname + '</div><div class="cart-body-elem">$<strong class="price">' + data[i].price + '</strong></div><div class="cart-body-elem quantityform"><input class="min" type="button" value="-" /><input class="text_box"  type="text" value="' + data[i].sum + '" placeholder="0" />	<input class="add" type="button" value="+" /></div><div class="cart-body-elem">$<label id="total"></label></div><a class="cart-body-elem" id="delete">删除</a></td></tr>'
                );
            }
            setTotal();
        }
    });

    //计算总价
    function setTotal() {
        var k = 0;
        $("#tab td").each(function () {
            var t = $(this).find('input[class*=text_box]').val();
            var p = $(this).find('strong[class*=price]').text();
            if (parseInt(t) == "" || undefined || null || isNaN(t) || isNaN(parseInt(t))) {
                t = 0;
            }
            var s = parseInt(t) * parseInt(p);
            k += parseInt(t) * parseInt(p);
            $(this).find('label[id*=total]').html(parseInt(s).toFixed(0));

        });
        $("#alltotal").html(k.toFixed(0));
    }

    $(function () {
        //增加
        $(".add").click(function () {
            var t = $(this).parent().find('input[class*=text_box]');
            var productid = $(this).parent().parent().find('input[class*=productid]');
            //alert(parseInt(productid.val()));
            if (t.val() == "" || undefined || null) {
                t.val(0);
            }
            t.val(parseInt(t.val()) + 1)
            setTotal();
            $.ajax({
                url: "GainCartProduct?update",
                type: "POST",
                data: {"num": parseInt(t.val()), "id": parseInt(productid.val())},
                dataType: "JSON",//响应数据类型，默认是text
                success: function (msg) {
                    // alert("ok");
                    // if (msg != 0) {
                    //     $(this).parent().parent().remove();
                    // }
                }
            });
        })

        //减少
        $(".min").click(function () {
            var t = $(this).parent().find('input[class*=text_box]');
            var productid = $(this).parent().parent().find('input[class*=productid]');
            if (t.val() == "" || undefined || null) {
                t.val(0);
            }
            t.val(parseInt(t.val()) - 1)
            if (parseInt(t.val()) < 0) {
                t.val(0);
            }
            setTotal();
            $.ajax({
                url: "GainCartProduct?update",
                type: "POST",
                data: {"num": parseInt(t.val()), "id": parseInt(productid.val())},
                dataType: "JSON",//响应数据类型，默认是text
                success: function (msg) {
                    // alert("ok");
                    // if (msg != 0) {
                    //     $(this).parent().parent().remove();
                    // }
                }
            });
        })
        //删除
        $("#delete").click(function () {
            var t = $(this).parent().find('input[class*=productid]');
            var m;
            $.ajax({
                url: "GainCartProduct?delete",
                type: "POST",
                data: {"id": parseInt(t.val())},
                dataType: "JSON",//响应数据类型，默认是text
                success: function (msg) {
                    m = msg.result;
                }
            });
            if (m != 0) {
                $(this).parents("tr").remove();
            }
        })
        //输入
        $(".text_box").keyup(function () {
            var t = $(this).parent().find('input[class*=text_box]');
            if (parseInt(t.val()) == "" || undefined || null || isNaN(t.val())) {
                t.val(0);
            }
            setTotal();
        })

        setTotal();
    })
</script>
<!-- 导航 -->
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
        <a><span class="iconfont icon-bag cart"></span></a>
    </div>
</nav>
<div class="cart">
    <div class="cart-head">
        <div class="cart-head-elem  pname">商品名称</div>
        <div class="cart-head-elem">单价</div>
        <div class="cart-head-elem">数量</div>
        <div class="cart-head-elem">小计</div>
        <div class="cart-head-elem oprate">操作</div>
    </div>
    <div class="cart-body">
        <table id="tab" class="cart-body-part">

        </table>
    </div>
    <div style="height: 50px;">
        <p class="cart-body-tail"><strong>价格总计： $</strong><strong id="alltotal"></strong></p>
    </div>
    <div class="hr"></div>
    <div class="settle">
        <button type="submit" class="btn btn-primary submit">结算</button>
    </div>
    <br style="clear:both;">
</div>
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
</body>

</html>
