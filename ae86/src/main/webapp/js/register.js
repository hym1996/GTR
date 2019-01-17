function f() {
    var phone = $(".form-phone").val();

    if (phone != null && phone != "" && (phone.length > 10 && phone.length < 12)) {
        //alert(phone);
        $.ajax({
            type: "POST",
            url: "/sms.html",
            data: "phone=" + phone,
            dataType: "json",
            success: function (hcode) {
                //alert("1111");
                var list = "";
                list += "<input type='hidden' name='hcode' value='" + hcode + "'/>"
                $(".code").append(list);
            }
        });
    } else {
        alert("手机输入错误");
    }

}


function p() {
    var phone = $(".form-phone").val();

    if (phone != null && phone != "" && (phone.length > 10 && phone.length < 12)) {
        //alert(phone);
        $.ajax({
            type: "POST",
            url: "/smspaw.html",
            data: "phone=" + phone,
            dataType: "json",
            success: function (pcode) {
                //alert("1111");
                var list = "";
                list += "<input type='hidden' name='pcode' value='" + pcode + "'/>"
                $(".code").append(list);
            }
        });
    } else {
        alert("手机输入错误");
    }

}
