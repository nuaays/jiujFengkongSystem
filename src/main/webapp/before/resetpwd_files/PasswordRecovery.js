///<Reference path="jquery-1.3.2.js" />
///<Reference path="jquery.validate.js" />
///<Reference path="jquery.jmsajax.js" />
///<Reference path="Site.js" />
$().ready(function() {
    insertCmbEdit('spnLoginName', 'ctlLoginName', 'cmbedit', '');
    setupCmbEdit('ctlLoginName', false, 29, "MobileEmailTip", null, null, _FM_lnna);
    var fmCheckName = $("#fmCheckName");
    var ctlLoginName = $("#ctlLoginName");
    var feedback = $("#feedback");
    var tbCaptcha = $("#tbCaptcha");
    var imgCaptcha = $("#imgCaptcha");
    var lnkChangeCaptcha = $("#lnkChangeCaptcha");
    var btnNext = $("#btnNext");
    var lastidno = $("#lastidno");

    setupTipAppd('lastidno', 'lastidno', _FM_lastid);
    setupTipAppd('tbCaptcha', 'lnkChangeCaptcha', _FM_capt);

    if (currEnv.browser.chrome || currEnv.browser.safari) {
        ctlLoginName.focus();
    }

    //看不清
    imgCaptcha.click(function() {
        var index = this.src.lastIndexOf('&ran=');
        if (index == -1)
            this.src = this.src + '&ran=' + Math.random();
        else {
            this.src = this.src.substr(0, index) + '&ran=' + Math.random();
        }
    });
    lnkChangeCaptcha.click(function() {
        imgCaptcha.trigger('click');
        return false;
    });

    tbCaptcha.keypress(function(event) {
        if (event.keyCode == 13) {
            btnNext.trigger('click');
            return false;
        }
    });

    fmCheckName.validate({
        errorElement: "span",
        errorClass: 'error',
        success: 'pass',
        onkeyup: false,
        rules: {
            tbCaptcha: { required: true, digits: true, rangelength: [4, 4] },
            lastidno: { CheckLastIdno: true }
        },
        messages: {
            tbCaptcha: { required: "必填项", digits: "只允许输入数字", rangelength: "请输入正确的验证码" }
        }
    });

    jQuery.validator.addMethod("CheckLastIdno", function(value, element) {
        var idno = $.trim(lastidno.val());
        if (idno == "" || idno.length == 4) {
            return true;
        }
        return false;
    }, "请输入证件号后四位");

    //下一步
    btnNext.click(function() {
        var formValid = fmCheckName.valid();
        if (!formValid) {
            return false;
        }
        btnNext.text("正在提交...");

        $.ajax({
            url: "User/GetUserStatus",
            dataType: "json",
            type: "post",
            cache: false,
            data: { value: ctlLoginName[0].IValue, captchaguid: $("#captchaGuid").val(), captchatxt: $("#tbCaptcha").val(), idno: $.trim(lastidno.val()) },
            beforeSend: function() { btnNext.attr("disabled", true); },
            complete: function() { btnNext.removeAttr('disabled'); btnNext.text("下一步"); },
            success: function(data) {
                if (data.code != 'Html') {
                    imgCaptcha.trigger('click');
                }
                defaultCallBackHandler(data);
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                showError("系统繁忙，请稍后再试");
                imgCaptcha.trigger('click');
            }
        });
    });
});