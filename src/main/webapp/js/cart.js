//购物车
$(function() {
    $(".add").click(function() {
        var t = $(this).parent().find('input[class*=text_box]');
        if (t.val() == "" || undefined || null) {
            t.val(0);
        }
        t.val(parseInt(t.val()) + 1)
        setTotal();
    })
    $(".min").click(function() {
        var t = $(this).parent().find('input[class*=text_box]');
        if (t.val() == "" || undefined || null) {
            t.val(0);
        }
        t.val(parseInt(t.val()) - 1)
        if (parseInt(t.val()) < 0) {
            t.val(0);
        }
        setTotal();
    })
    $(".text_box").keyup(function() {
        var t = $(this).parent().find('input[class*=text_box]');
        if (parseInt(t.val()) == "" || undefined || null || isNaN(t.val())) {
            t.val(0);
        }
        setTotal();
    })
    //计算总价
    function setTotal() {
        var k = 0;
        console.log(k);
        $("#tab td").each(function() {
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
    setTotal();
})
