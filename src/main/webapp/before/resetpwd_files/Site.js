/// <reference path="jquery-1.3.2.js" />   

//判断浏览器及操作系统版本
var ua = navigator.userAgent.toLowerCase();
var currEnv = {
    platform: {
        windows: /(windows|win32)/.test(ua),
        mac: /macintosh|mac os x/.test(ua),
        linux: /linux/.test(ua),
        Air: /adobeair/.test(ua)
    },
    browser: {
        version: (ua.match(/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [])[1],
        safari: /webkit/.test(ua),
        chrome: /chrome/.test(ua),
        opera: /opera/.test(ua),
        msie: /msie/.test(ua) && !/opera/.test(ua),
        mozilla: /mozilla/.test(ua) && !/(compatible|webkit)/.test(ua)
    }
};
//扩展JQuery校验器
//nocheck just for jq-val to let the input without rules labeled pass
//or fix the issue that when optional input value is empty, jq-val hide the error place.
$.validator.addMethod("noCheck", function(value, element) {
    return true;
}, "");

$.validator.addMethod("phone", function(value, element) {
    return this.optional(element) || /^1/.test(value);
}, "请输入正确的手机号码");

$.validator.addMethod("fixtel", function(value, element) {
    //only return true or false,do not return 'dependency-mismatch' that will hide error place
    if (this.optional(element)) return true;
    else return /^(\d{2,}-)?(\d{2,}-)?(\d{6,10})(-\d{2,})?$/.test(value);
}, "请输入正确的固定电话号码，如010-88886666");

$.validator.addMethod("emailex", function(value, element) {
    return this.optional(element) || /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test(value);
}, "请输入正确的Email");

$.validator.addMethod("dateFormat", function(value, element) {
    if (this.optional(element)) return true;
    var year = parseInt(element.value.substr(0, 4), 10);
    var month = parseInt(element.value.substr(5, 2), 10) - 1;
    var day = parseInt(element.value.substr(8, 2), 10);
    var dt = new Date(0);
    dt.setFullYear(year, month, day);
    return dt.getFullYear() == year && dt.getMonth() == month && dt.getDate() == day;
}, "请输入正确的日期，格式如1988-08-18");

$.validator.addMethod("safeAnswer", function(value, element) {
    var f = false;
    if ($("#selQuestion").val().indexOf('生日') != -1) {
        f = checkAnswerBirth(element.value);
    }
    else
        f = true;
    return this.optional(element) || f;
}, "答案格式有误");

function checkAnswerBirth(elmval) {
    var rtn = false;
    if (elmval.length == 8) {
        var str = elmval;
        var dt = new Date(str.substr(0, 4), parseInt(str.substr(4, 2), 10) - 1, str.substr(6, 2));
        if (isNaN(dt)) {
            rtn = false;
        }
        else if (dt.getFullYear() != parseInt(str.substr(0, 4), 10) || (dt.getMonth() + 1) != parseInt(str.substr(4, 2), 10) || dt.getDate() != parseInt(str.substr(6, 2), 10))
            rtn = false;
        else rtn = true;
    }
    else rtn = false;

    return rtn;
}

function initQA(questionPart1, questionPart2, tips) {

    if (questionPart1 == null) {
        return;
    }

    var qaItems1 = ["爷爷", "奶奶", "外公", "外婆", "父亲", "母亲", "丈夫", "妻子", "姐姐", "妹妹", "哥哥", "弟弟", "儿子", "女儿", "伯父", "叔父", "姑妈", "舅舅", "姨妈"];
    var qaItems2 = ["小学班主任", "小学语文老师", "小学数学老师", "初中班主任", "初中语文老师", "初中数学老师", "初中外语老师", "高中班主任", "高中语文老师", "高中数学老师", "高中外语老师"];

    questionPart1.options.length = 0;
    questionPart1.options[0] = new Option('请选择问题', '');
    questionPart1.options[1] = new Option('您的亲属的姓名', '您的亲属的姓名');
    questionPart1.options[2] = new Option('您的亲属的生日', '您的亲属的生日');
    questionPart1.options[3] = new Option('您的老师的姓名', '您的老师的姓名');

    questionPart2.options.length = 0;
    questionPart2.options[0] = new Option('-', '');

    $(questionPart1).change(function() {
        if (questionPart1.value == '') {
            questionPart2.options.length = 0;
            questionPart2.options[0] = new Option('-', '');
        } else if (questionPart1.value.indexOf('亲属') != -1) {
            questionPart2.options.length = 0;
            for (var i = 0; i < qaItems1.length; i++)
                questionPart2.options[i] = new Option(qaItems1[i], qaItems1[i]);
        } else {
            questionPart2.options.length = 0;
            for (var i = 0; i < qaItems2.length; i++)
                questionPart2.options[i] = new Option(qaItems2[i], qaItems2[i]);
        }

        if (questionPart1.value == '') {
            $("span[htmlfor=selQuestion2]").removeClass().addClass('errorsc').text(_FM_ques);
        } else if (questionPart1.value.indexOf('生日') != -1) {
            $(tips).removeClass().addClass('error memo').text("输入格式如19880818");
            $("span[htmlfor=selQuestion2]").removeClass().addClass('pass').text('');
        } else {
            $(tips).removeClass().addClass('error memo').text("答案长度最少2个字符");
            $("span[htmlfor=selQuestion2]").removeClass().addClass('pass').text('');
        }
    });
}

function checkCmbEdit(id) {
    var v = $("#" + id)[0].IValue;
    if (typeof (v) == 'undefined' || v == '') {
        alert("安全控件未正常加载,请关闭页面重新操作");
        return false;
    }

    return true;
}

//only for giving input tip,but error msg given by jq-val
//this method and initCmbEditValidator only choose one of both
function setupTip(id, memo) {
    setupTipAppd(id, id, memo)
}

function setupTipAppd(id, appdid, memo) {
    //htmlfor, generated and class-error are tokens for jq-val reusing,do not change
    var elm = $("#" + id);
    var elmappd = $("#" + appdid);
    //remove if exist
    var next = elmappd.next('span');
    if (next.is("span[htmlfor=" + id + "]")) next.remove();

    $("<span htmlfor='" + id + "' class='error none' generated='true'></span>").insertAfter(elmappd);

    elm.focus(function() {
        $("span[htmlfor=" + id + "]").removeClass().addClass('error memo').text(memo);
    });
    elm.blur(function() {
        if ($("span[htmlfor=" + id + "]").is(".memo"))
            $("span[htmlfor=" + id + "]").removeClass().addClass('error none').text('');
    });
}

//answer field need special
function setupTip2(id) {
    //htmlfor, generated and class-error are tokens for jq-val reusing,do not change
    var elm = $("#" + id);
    $("<span htmlfor='" + id + "' class='error none' generated='true'></span>").insertAfter(elm);
    elm.focus(function() {
        var memo = "";
        if ($("#selQuestion")[0].value.indexOf('生日') != -1)
            memo = "输入格式如19701223";
        else
            memo = _FM_answ;
        $("span[htmlfor=" + id + "]").removeClass().addClass('error memo').text(memo);
    });
    elm.blur(function() {
        if ($("span[htmlfor=" + id + "]").is(".memo"))
            $("span[htmlfor=" + id + "]").removeClass().addClass('error none').text('');
    });
}

//question field need special 
function setQuestionTip(id, ispass) {
    if ($("span[htmlfor=" + id + "]").length > 0) {
        if (ispass) {
            $("span[htmlfor=" + id + "]").removeClass().addClass('pass').text('');
        } else {
            $("span[htmlfor=" + id + "]").removeClass().addClass('errorsc').text(_FM_ques);
        }
    } else {
        var elm = $("#" + id);
        $("<span htmlfor='" + id + "' generated='true'></span>").insertAfter(elm);
    }

}

function insertCmbEdit(parentid, id, cssclass, width) {
    var stylestr = width == '' ? '' : ' style="width:' + width + '" ';
    var parentele = $("#" + parentid);
    if (!!window.ActiveXObject || "ActiveXObject" in window) {
        var object = '<object classid="clsid:0CA54D3F-CEAE-48AF-9A2B-31909CB9515D" codebase="https://site.cmbchina.com/download/CMBEdit.cab#version=1,2,0,1" tabIndex="2"'
                 + ' id="' + id + '" name="' + id + '" class="' + cssclass + '"' + stylestr + '><a href="http://site.cmbchina.com/download/SafeEditInstall.exe">请安装安全控件,并重启浏览器</a></object>';
        parentele.prepend(object);
    }
    else {
        if (currEnv.platform.mac) {
            var object = '<object type="application/x-cmbedit" tabIndex="2"'
                    + ' id="' + id + '" name="' + id + '" class="' + cssclass + '"' + stylestr + '><a href="http://site.cmbchina.com/download/CMBSecurityPlugin.dmg">请安装安全控件,并重启浏览器</a></object>';
            parentele.prepend(object);
        }
        else {
            var object = '<object type="application/x-cmbedit" tabIndex="2"'
                    + ' id="' + id + '" name="' + id + '" class="' + cssclass + '"' + stylestr + '><a href="http://site.cmbchina.com/download/NPSafeEditInstall.exe">请安装安全控件,并重启浏览器</a></object>';
            parentele.prepend(object);
        }
    }
}

function initDownloadUrl(id) {
    var downloadhref = $("#" + id);
    if (!!window.ActiveXObject || "ActiveXObject" in window) {
        downloadhref.attr("href", "http://site.cmbchina.com/download/SafeEditInstall.exe");
    }
    else {
        if (currEnv.platform.mac) {
            downloadhref.attr("href", "http://site.cmbchina.com/download/CMBSecurityPlugin.dmg");
        }
        else {
            downloadhref.attr("href", "http://site.cmbchina.com/download/NPSafeEditInstall.exe");
        }
    }
}

function initCmbEdit(id, isPassword, maxLength) {
    var ctl = $("#" + id)[0];
    if (ctl == null) return;
    if (!isPassword)
        ctl.PasswdCtrl = isPassword;
    ctl.MaxLength = maxLength.toString();
}

function initCmbEditValidator(id, validator, arg, message, memo) {
    var elm = $("#" + id);
    if (elm == null) return;

    var next = elm.parent().next('span');
    //if (next.is('.error') || next.is('.errorsc') || next.is('.memo') || next.is('.pass') || next.is('.warn')) next.remove();
    if (next.is("span[htmlfor=" + id + "]")) next.remove();

    switch (validator) {
        case 'required':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                $.ajax({ type: "post", url: "Util/IsCmbEditEmpty", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { value: elm[0].IValue }, success: function(data) {
                    $("span[htmlfor=" + id + "]").removeClass().addClass(data ? 'errorsc' : 'pass').text(data ? message : '');
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;

        case 'passwordLevel':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                $.ajax({ type: "post", url: "Util/EvaluateLoginPasswordLevel", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { password: elm[0].IValue }, success: function(data) {
                    if (data < 0) {
                        $("span[htmlfor=" + id + "]").removeClass().addClass('errorsc').text(_FM_pasw);
                    }
                    else if (data == 0) {
                        $("span[htmlfor=" + id + "]").removeClass().addClass('errorsc').text("登录密码过于简单，请修改");
                    }
                    else {
                        $("span[htmlfor=" + id + "]").removeClass().addClass('pass').text("");
                    }

                }, dataType: 'json'
                });
                var triggerConfirm = function() { $("#" + arg[0]).trigger('blur') };
                setTimeout(triggerConfirm, 100);
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'passwordConfirm':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                if ($(document.activeElement).attr("id") != elm.attr("id")) {
                    $.ajax({ type: "post", url: "Util/IsCmbEditEquals", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { value1: elm[0].IValue, value2: $("#" + arg)[0].IValue }, success: function(data) {
                        $("span[htmlfor=" + id + "]").removeClass().addClass(data ? 'pass' : 'errorsc').text(data ? '' : message);
                    }, dataType: 'json'
                    });
                }
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'accountNo':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                $.ajax({ type: "post", url: "Util/IsAccountNoValid", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { accountType: arg, accountNo: $(this)[0].IValue }, success: function(data) {
                    $("span[htmlfor=" + id + "]").removeClass().addClass(data.code != '' ? 'errorsc' : 'pass').text(data.code != '' ? data.content : '');
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'accountPassword':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                $.ajax({ type: "post", url: "Util/IsAccountPasswordValid", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { password: elm[0].IValue }, success: function(data) {
                    $("span[htmlfor=" + id + "]").removeClass().addClass(data.code != '' ? 'errorsc' : 'pass').text(data.code != '' ? data.content : '');
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'checkLoginName':
            $("<span htmlfor='" + id + "' generated='true'></span>").insertAfter(elm.parent());
            var bindblur = function() {
                $.ajax({ type: "post", url: "Util/CheckLoginName", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { loginName: elm[0].IValue }, success: function(data) {
                    //important:must use 'errorsc' but 'error' coz jq-val will hide the error tag not registed
                    $("span[htmlfor=" + id + "]").removeClass().addClass(data.code != '' ? 'errorsc' : 'pass').text(data.code != '' ? data.content : '');
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'checkNickName':
            //htmlfor, generated and class-error are tokens for jq-val reusing,do not change
            $("<span htmlfor='" + id + "' generated='true'></span>").insertAfter(elm.parent());
            elm.unbind().focus(function() {
                $("span[htmlfor=" + id + "]").removeClass().addClass('error memo').text(memo);
            });

            elm.blur(function() {
                var reg = /^[a-zA-Z0-9.\-_\u4E00-\u9FA5]{2,20}$/;
                var islegal = $.trim(elm.val()) == "" || reg.test(elm.val());
                if ($("span[htmlfor=" + id + "]").length >= 2) $("span[htmlfor=" + id + "]:first").remove();
                $("span[htmlfor=" + id + "]").removeClass().addClass(islegal ? 'errorsc pass' : 'error').text(islegal ? "" : "昵称不符合规范");
            });
            break;
        case 'checkPhoneNumber':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            var bindblur = function() {
                $.ajax({ type: 'post', url: "Util/CheckPhoneNumber", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { phoneNo: elm[0].IValue }, success: function(data) {
                    $("span[htmlfor=" + id + "]").removeClass().addClass(data.code != '' ? 'errorsc' : 'pass').text(data.code != '' ? data.content : '');
                    if (data.code == '') { if ($("#" + arg[0]).val() == '获取验证码') $("#" + arg[0]).removeAttr('disabled'); }
                    else { $("#" + arg[0]).val("获取验证码").attr('disabled', ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true)); }
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'checkEmailAddress':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            var bindblur = function() {
                $.ajax({ type: 'post', url: "Util/CheckEmailAddress", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { email: elm[0].IValue }, success: function(data) {
                    $("span[htmlfor=" + id + "]").removeClass().addClass(data.code != '' ? 'errorsc' : 'pass').text(data.code != '' ? data.content : '');
                    if (data.code == '') { if ($("#" + arg[0]).val() == '获取验证码') $("#" + arg[0]).removeAttr('disabled'); }
                    else { $("#" + arg[0]).val("获取验证码").attr('disabled', ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true)); }
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'MobileEmailTip':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                $("span[htmlfor=" + id + "]").removeClass().text("");
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                $("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;
        case 'ExpDate':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                $("#" + arg).hide();
                $.ajax({ type: "post", url: "Util/CheckExpDate", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { value: elm[0].IValue }, success: function(data) {
                $("span[htmlfor=" + id + "]").removeClass().addClass(data.code != '' ? 'errorsc' : 'memo pass').text(data.code != '' ? message : '');
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                //$("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                $("#" + arg).show();
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;

        case 'CVV2':
            $("<span htmlfor='" + id + "'></span>").insertAfter(elm.parent());
            bindblur = function() {
                $("#" + arg).hide();
                $.ajax({ type: "post", url: "Util/CheckCVV2", async: ((currEnv.browser.chrome || currEnv.browser.safari) ? false : true), data: { value: elm[0].IValue }, success: function(data) {
                $("span[htmlfor=" + id + "]").removeClass().addClass(data.code != '' ? 'errorsc' : 'memo pass').text(data.code != '' ? message : '');
                }, dataType: 'json'
                });
            };
            var rebind = function() { elm.blur(bindblur) };
            elm.unbind().focus(function() {
                //fix safecontrol bug that when firing focus,blur is also wrong fired
                //so firstly remove blur event,and wait some time to bind it again in the end of focus function 
                elm.unbind("blur");
                //$("span[htmlfor=" + id + "]").removeClass().addClass('memo').text(memo);
                $("#" + arg).show();
                setTimeout(rebind, 100);
            });
            elm.blur(bindblur);
            break;

    }
}

function initEditValidator(id, validator, arg, message, memo) {
    initCmbEditValidator(id, validator, arg, message, memo);
}

function setupCmbEdit(id, isPassword, maxLength, validator, arg, message, memo) {
    initCmbEdit(id, isPassword, maxLength);
    initCmbEditValidator(id, validator, arg, message, memo);
}

function fireSCValid(SCs) {
    //safecontrol need to fire blur firstly to validate
    //ConfirmPassword will be checked by ctlPassword blur function
    //so no need add Confirm*** to SCs
    for (var i = 0; i < SCs.length; i++) {
        var elm = $("#" + SCs[i]);
        elm.trigger('blur');
    }
}

function isCmbEditReady(elementIds) {
    var ready = true;
    for (var i = 0; i < elementIds.length; i++) {
        var elm = $("#" + elementIds[i]);
        var next = elm.parent().next();
        if (next.attr("class") == 'error' || next.attr("class") == 'errorsc') {
            ready = false;
        } else if (!next.is('.pass')) {
            ready = false;
            if (elm.attr("id") != "ctlConfirmPassword" && elm.attr("id") != "ctlCNPassword"
                && elm.attr("id") != "ctlCQNPassword" && elm.attr("id") != "ctlCNBNPassword") {
                //ctlConfirmPassword will be checked by ctlPassword blur function
                //so no need to blur again
                elm.trigger('blur');
            }
        }
    }
    return ready;
}

//简版-查询是否有报错提示
function isEditInvalid(elementIds) {
    var ready = false;
    for (var i = 0; i < elementIds.length; i++) {
        var elm = $("#" + elementIds[i]);
        var next = elm.parent().next();
        if (next.attr("class") == 'error' || next.attr("class") == 'errorsc') {
            ready = true;
        }
    }
    return ready;
}

function isEditReady(elementIds) {
    return isCmbEditReady(elementIds);
}

function showMessage(message) {
    $("#feedback").fadeOut("slow", function() { $(this).removeClass('errFeedback').addClass("sucFeedback").html(message) }).fadeIn("slow");
}

function showTip(message) {
    $("#feedback").fadeOut("slow", function() { $(this).removeClass().addClass("tipFeedback").html(message) }).fadeIn("slow");
}

function showError(message) {
    $("#feedback").fadeOut("slow", function() { $(this).removeClass('sucFeedback').addClass("errFeedback").html("<span></span>" + message) }).fadeIn("slow");
    setTimeout("$('#feedback').fadeOut('slow')", 5000);
}

function hideMessage() {
    //$("#feedback").fadeOut("slow");
    $("#feedback").hide();
}

function defaultCallBackHandler(data) {
    switch (data.code) {
        case 'Html':
            $("#workspace").html(data.content);
            break;
        case 'LoginRequired':
            alert("会话已超时，请重新登录。");
            window.location.reload();
            break;
        case 'Redirect':
            window.location.href = data.content;
            break;
        case '':
            showMessage(data.content);
            break;
        case 'Alert':
            alert(data.content);
            break;
        default:
            showError(data.content);
            break;
    }
}


function CreditCardPswdRecovery() {
    window.open('http://e95555.cn/VIImVM', 'CheckCustomerInfo', 'scrollbars=yes,toolbar=no,location=no,status=no,menubar=no,resizable=no,dependent=no,width=760,height=520,top=100,left=100');
}

$(function() {
    var loading = $("#dvLoading");
    var headerBack = $("#headerBack");
    var headerbkli = $("#headerbkli");
    var logoutli = $("#logoutli");

    loading.bind('ajaxStart', function() {
        document.body.style.cursor = 'wait';
    });
    loading.bind('ajaxStop', function() {
        document.body.style.cursor = 'default';
    });
    loading.bind('ajaxError', function(event, request, ajaxOptions, thrownError) {
        alert("抱歉，服务器未能正确处理您的请求。(" + request.status + ")" + request.statusText);
    });

    if (window.opener != null) {
        headerbkli.show();
        headerBack.click(function() {
            if (window.opener != null) {
                window.close();
            }
            return false;
        });
    }

});

function mylog(txt) {
    console.log(txt);
}