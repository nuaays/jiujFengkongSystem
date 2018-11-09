/// <reference path="jquery-1.3.2.js" />
/// <reference path="Site.js" />

$().ready(function() {
    insertCmbEdit('spnLoginName', 'ctlLoginName', 'cmbedit', '');
    insertCmbEdit('spnPassword', 'ctlPassword', 'cmbedit', '');
    initDownloadUrl('downloadurl');
    var btnContinue = $("#btnContinue");
    var btnLogin = $("#btnLogin");
    var btnSignOut = $("#btnSignOut");
    var btnRegister = $("#btnRegister");
    var captchaguid = $("#captchaguid");
    var ctlLoginName = $("#ctlLoginName");
    var ctlPassword = $("#ctlPassword");
    var dvSiteContent = $("#dvSiteContent");
    var dvRegBox = $("#dvRegBox");
    var hdSpCover = $("#hdSpCover");
    var hdReturnUrl = $("#hdReturnUrl");
    var hdRegisterUrl = $("#hdRegisterUrl");
    var imgCaptcha = $("#imgCaptcha");
    var lnkChangeCaptcha = $("#lnkChangeCaptcha");
    var tbCaptcha = $("#tbCaptcha");
    var loginCount = 0;

    initCmbEdit('ctlLoginName', false, 32);
    initCmbEdit('ctlPassword', true, 30);
    ctlLoginName.focus();


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
            btnLogin.trigger('click');
        }
    });


    //登录
    btnLogin.click(function() {
        if (tbCaptcha.val() == '' && $("div[htmlfor='tbCaptcha']").css("display") == "block") {
            tbCaptcha.focus();
            return;
        }

        var loginUrl = 'User/Login';
        var index = window.location.href.indexOf('?');
        if (index != -1) {
            loginUrl += window.location.href.substr(index);
        }

        btnLogin.text("正在登录...");
        $.ajax({
            url: loginUrl,
            type: "post",
            dataType: "json",
            data: { loginName: ctlLoginName[0].IValue, password: ctlPassword[0].IValue, captchaguid: captchaguid.val(), captchatxt: tbCaptcha.val() },
            beforeSend: function() {
                btnLogin.attr("disabled", true);
            },
            complete: function(xml, status) {
                if (status != 'success') {
                    btnLogin.removeAttr('disabled');
                }
                btnLogin.text("登录");
            },
            success: function(data) {
                if (data.code != 'Redirect') {
                    imgCaptcha.trigger('click');
                    btnLogin.removeAttr('disabled'); //remove disabled only if failed.
                    if (data.logincount >= 3) {
                        window.setTimeout(function() {
                            imgCaptcha.trigger('click');
                            $("div[htmlfor='tbCaptcha']").css("display", "block").prev().show();
                        }, 100);
                    }
                }
                defaultCallBackHandler(data);
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                showError("系统繁忙，请稍后再试");
                imgCaptcha.trigger('click');
            }
        });
    });

    //注册
    btnRegister.click(function() {
        window.location.href = hdRegisterUrl.val();
    });

    //退出
    btnSignOut.click(function() {
        window.location.href = '../IdentityProvider/SLORequest.ashx';
    });

    //继续
    btnContinue.click(function() {
        window.location.href = hdReturnUrl.val();
    });
});