function noAdd() {
    if (!(senderNamecheck() && Emailcheck() && phonecheck() && nickNamecheck() && check() && pawEquals() && isCardNo())) {

        alert("false");
        return false;
    } else {
        alert("true");
        return true;
    }
}

function senderNamecheck() {
    if ($("#SenderName").val().length < 1) {
        account();
        return false;
    } else {
        return true;
    }
}

function Emailcheck() {
    var email = $("#email").val();
    if (!(/^[a-z0-9A-Z]+[-|a-z0-9A-Z._]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\.)+[a-z]{2,}$/.test(email))) {
    Emailcheck2();
        return false;
    }else {
        return true;
    }
}

function phonecheck() {
    var phone = $("#senderPhone").val();
    if (!(/^1[34578]\d{9}$/.test(phone))) {
        phonech();
        return false;
    }else {
        return true;
    }
}
function phonenull() {
    var phone = $("#senderPhone").val();
    if (!(/""/.test(phone))) {
        phonenul();
        return false;
    }else {
        return true;
    }
}

function nickNamecheck() {
    if ($("#nc").val().length < 1) {
        nickName();
        return false;
    }else {
        return true;
    }
}

function check() {
    if ($("#paw").val().length > 20 || $("#paw").val().length < 5) {
        pwa();
        return false;
    } else if ($("#paw").val().length < 1) {
        pwa1();
        return false;
    }else {
        return true;
    }
}

function pawEquals() {
//console.log($(".paw").val());
    if ($("#paw").val() !== $("#paw2").val()) {
        pwa2();
        return false;
    } else {
        return true;
    }
}

function isCardNo() {
    var identityId = $("#identityId").val();
    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    if (reg.test(identityId) === false || $("#identityId").val().length < 16) {
        identityIdch();
        return false;
    }else {
        return true;
    }
}

function account(ev) {
    $.toast({
        text: "你的名字呢？？~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 3000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600'  // Background color of the toast loader
    });
}

function Emailcheck2(ev) {
    $.toast({
        text: "亲~邮箱格式不正确呦~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 1700, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600'  // Background color of the toast loader
    });
}

function pwa(ev) {
    $.toast({
        text: "亲~用户密码不能小于5位或大于20位呦~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 1700, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600' // Background color of the toast loader
    });
}

function pwa1(ev) {
    $.toast({
        text: "亲~用户密码不能为空呦~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 1700, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600' // Background color of the toast loader
    });
}

function pwa2(ev) {
    $.toast({
        text: "亲~两次输入的密码必须一致呦~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 1700, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600' // Background color of the toast loader
    });
}

function nickName(ev) {
    $.toast({
        text: "亲~用户名不能为空呦~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 1700, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600'  // Background color of the toast loader
    });
}

function phonech(ev) {
    $.toast({
        text: "你是假的手机吧~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 1700, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600'  // Background color of the toast loader
    });
}

function identityIdch(ev) {
    $.toast({
        text: "亲~身份证不能为空或证件格式不正确呦~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 1700, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600'  // Background color of the toast loader
    });
}

function phonenul(ev) {
    $.toast({
        text: "你连手机都没有的吗~", // Text that is to be shown in the toast
        heading: '提示', // Optional heading to be shown on the toast
        icon: 'info', // Type of toast icon
        hideAfter: 2000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        loaderBg: '#9EC600'  // Background color of the toast loader
    });
}