///<Reference path="jquery-1.3.2.js" />
///<Reference path="jquery.validate.js" />
///<Reference path="jquery.jmsajax.js" />
///<Reference path="Site.js" />
var sec = 60;
function sendAgain() {
    if (sec == 0) {
        $("#btnSendCode").removeAttr("disabled").val("重新获取验证码");
        sec = 60;
    }
    else {
        $("#btnSendCode").attr("disabled", true).val((sec--).toString() + "秒后重发");
        window.setTimeout(sendAgain, 1000);
    }
}
$().ready(function() {
    insertCmbEdit('spnCellphone', 'ctlCellphone', 'cmbedit sfm9 left', '');
    insertCmbEdit('spnPassword', 'ctlPassword', 'cmbedit', '');
    insertCmbEdit('spnConfirmPassword', 'ctlConfirmPassword', 'cmbedit', '');
    var ctlCellphone = $("#ctlCellphone");
    var btnSendCode = $("#btnSendCode");
    var tbVerifyCode = $("#tbVerifyCode");
    var tbNickName = $("#tbNickName");
    var ctlPassword = $("#ctlPassword");
    var btnRegister = $("#btnRegister");
    var fmCellphoneRegister = $("#fmCellphoneRegister");
    var tbReferral = $("#tbReferral");
    var dvAgree = $("#dvAgree");
    var hdSpAgree = $("#hdSpAgree");
    var btnAgree = $("#btnAgree");

    btnAgree.click(function() { if (dvAgree.is(":hidden")) { dvAgree.show() } else { dvAgree.hide() }; });
    //点击注册时才去检测手机号码
    initCmbEdit('ctlCellphone', false, 32);
    //setupCmbEdit('ctlCellphone', false, 11, 'checkPhoneNumber', ['btnSendCode', true], null, _FM_celp);
    setupCmbEdit('ctlPassword', true, 8, 'passwordLevel', 'ctlConfirmPassword', null, _FM_pasw);
    setupCmbEdit('ctlConfirmPassword', true, 8, 'passwordConfirm', 'ctlPassword', '两次输入的密码不一致', _FM_conp);

    initEditValidator('tbNickName', 'checkNickName', null, null, _FM_nicn);

    setupTipAppd('tbVerifyCode', 'btnSendCode', _FM_verc);
    setupTip('tbReferral', _FM_refe);

    //加载注册协议
    $.ajax({
        url: hdSpAgree.val(),
        dataType: 'text',
        type: 'get',
        cache: true,
        success: function(data) {
            dvAgree.html(data);
        }
    });

    fmCellphoneRegister.validate({
        errorElement: "span",
        errorClass: 'error',
        success: 'pass',
        onkeyup: false,

        rules: { tbVerifyCode: { required: true, digits: true, rangelength: [6, 6] },
            tbReferral: { noCheck: this }
        },

        messages: { tbVerifyCode: { required: "必填项", digits: "只允许输入数字", rangelength: "请输入正确的验证码" },
            tbReferral: { noCheck: "" }
        }
    });

    btnSendCode.click(function() {
        if (currEnv.browser.chrome || currEnv.browser.safari) {
            fireSCValid(['ctlCellphone']);
        }
        if (isEditInvalid(['ctlCellphone'])) return false; //如果当前已经识别出invalid，就返回
        $.ajax({
            url: "Util/PostDynamicCode",
            type: "POST",
            dataType: "json",
            data: { target: ctlCellphone[0].IValue, type: 1, code: 101601 },
            success: function(data) {
                if (data.code == "") {
                    window.setTimeout(sendAgain, 1000);
                    $("[htmlfor='tbVerifyCode']").text(data.content).addClass("memo").removeClass("none pass");
                }
                else {
                    defaultCallBackHandler(data);
                }
            },
            beforeSend: function() { btnSendCode.attr("disabled", true); },
            complete: function() { btnSendCode.removeAttr('disabled'); },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                showError("系统繁忙，请稍后再试");
            }
        });
    });

    var doAjax = function() {
        var checkIds = ['ctlCellphone', 'ctlPassword', 'ctlConfirmPassword'];
        var formValid = fmCellphoneRegister.valid();
        //clear no-need error place added by jq-val,coz nickname will check by initCmbEditValidator
        tbNickName.next().remove();
        if (currEnv.browser.chrome || currEnv.browser.safari) {
            fireSCValid(checkIds);
        }
        var editInvalid = isEditInvalid(checkIds);
        if (!formValid || editInvalid) {
            btnRegister.html("同意以下服务条款并<span>注册</span>");
            return false;
        }
        if (!checkCmbEdit('ctlPassword') || !checkCmbEdit('ctlCellphone')) {
            btnRegister.html("同意以下服务条款并<span>注册</span>");
            return false;
        }

        var regInfo = {
            BindAccountAfterSuccess: false,
            CellphoneNo: ctlCellphone[0].IValue,
            Gender: 0,
            IdCardType: 1,
            NickName: $.trim(tbNickName.val()),
            Password: ctlPassword[0].IValue,
            ReplaceExistPrincipalUser: false,
            RegisterType: 1,
            ReferralCode: $.trim(tbReferral.val())
        };

        $.jmsajax({
            url: window.location.href,
            data: { RegisterInfo: regInfo, VerifyCode: tbVerifyCode.val(), CfmPassword: $("#ctlConfirmPassword")[0].IValue , EventCode:101601 },
            success: function(data) {
                if (data.code == "Redirect") {
                    window.location.href = "../../User/Login?returnUrl=" + encodeURIComponent(data.content);
                    return;
                }
                defaultCallBackHandler(data);
            },
            beforeSend: function() { btnRegister.attr("disabled", true); },
            complete: function() { btnRegister.removeAttr('disabled'); btnRegister.html("同意以下服务条款并<span>注册</span>"); },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                showError("系统繁忙，请稍后再试");
            }
        });
    }

    btnRegister.click(function() {
        btnRegister.text("正在提交...");
        setTimeout(doAjax, 100);
    });


});