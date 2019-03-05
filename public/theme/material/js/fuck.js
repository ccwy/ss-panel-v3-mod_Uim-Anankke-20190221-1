/* Anti 360 Browser */
/* Info: https://github.com/mumuy/browser */
(function (root, factory) {
    if (typeof define === 'function' && (define.amd||define.cmd)) {
        // AMD&CMD
        define(factory);
    } else if (typeof exports === 'object') {
        // Node, CommonJS-like
        module.exports = factory();
    } else {
        // Browser globals (root is window)
        root.Browser = factory();
    }
}(this, function () {
    var _window = this||{};
    var _navigator = typeof navigator!='undefined'?navigator:{};
    var _mime = function (option, value) {
        var mimeTypes = navigator.mimeTypes;      
        for (var mt in mimeTypes) {
            if (mimeTypes[mt][option] == value) {
                return true;
            }
        }
        return false;
    };

    return function (userAgent) {
        var u = userAgent || _navigator.userAgent||{};
        var _this = this;

        var match = {
            '360': u.indexOf('QihooBrowser') > -1,
            '360EE': u.indexOf('360EE') > -1,
            '360SE': u.indexOf('360SE') > -1,
			'UC': u.indexOf('UC') > -1 || u.indexOf(' UBrowser') > -1,
            'QQBrowser': u.indexOf('QQBrowser') > -1,
            'QQ': u.indexOf('QQ/') > -1,            
			'XiaoMi': u.indexOf('MiuiBrowser') > -1,
			'Wechat': u.indexOf('MicroMessenger') > -1
           
        };
        var is360 = false;
        if(_window.chrome){
            var chrome_vision = u.replace(/^.*Chrome\/([\d]+).*$/, '$1');
            if(chrome_vision>36&&_window.showModalDialog){
                is360 = true;
            }else if(chrome_vision>45){
                is360 = _mime("type", "application/vnd.chromium.remoting-viewer");
            }
        }
        //修正
        if (match['Mobile']) {
            match['Mobile'] = !(u.indexOf('iPad') > -1);
        } else if (is360) {
            if(_mime("type", "application/gameplugin")){
                match['360SE'] = true;
            }else{
                match['360EE'] = true;
            }
        }
        if(match['IE']||match['Edge']){
            var navigator_top = window.screenTop-window.screenY;
            switch(navigator_top){
                case 71: //无收藏栏,贴边
                case 74: //无收藏栏,非贴边
                case 99: //有收藏栏,贴边
                case 102: //有收藏栏,非贴边
                    match['360EE'] = true;
                    break;
                case 75: //无收藏栏,贴边
                case 74: //无收藏栏,非贴边
                case 105: //有收藏栏,贴边
                case 104: //有收藏栏,非贴边
                    match['360SE'] = true;
                    break;
            }
        }

        //基本信息
        var hash = {
            engine: ['WebKit', 'Trident', 'Gecko', 'Presto'],
            browser: ['Safari', 'Chrome', 'Edge', 'IE', 'Firefox', 'Firefox Focus', 'Chromium', 'Opera', 'Vivaldi', 'Yandex', 'Arora', 'Lunascape', 'QupZilla', 'Coc Coc', 'Kindle', 'Iceweasel', 'Konqueror', 'Iceape', 'SeaMonkey', 'Epiphany', '360', '360SE', '360EE', 'UC', 'QQBrowser', 'QQ', 'Baidu', 'Maxthon', 'Sogou', 'LBBROWSER', '2345Explorer', 'TheWorld', 'XiaoMi', 'Quark', 'Qiyu', 'Wechat', 'Taobao', 'Alipay', 'Weibo', 'Douban','Suning', 'iQiYi'],
            os: ['Windows', 'Linux', 'Mac OS', 'Android', 'Ubuntu', 'FreeBSD', 'Debian', 'iOS', 'Windows Phone', 'BlackBerry', 'MeeGo', 'Symbian', 'Chrome OS', 'WebOS'],
            device: ['Mobile', 'Tablet']
        };
        _this.device = 'PC';
        _this.language = (function () {
            var g = (_navigator.browserLanguage || _navigator.language);
            var arr = g.split('-');
            if (arr[1]) {
                arr[1] = arr[1].toUpperCase();
            }
            return arr.join('_');
        })();
        for (var s in hash) {
            for (var i = 0; i < hash[s].length; i++) {
                var value = hash[s][i];
                if (match[value]) {
                    _this[s] = value;
                }
            }
        }
    };
}));
// 判断 360 浏览器跳转
if (new Browser().browser == '360EE' || new Browser().browser == '360SE') {
    window.alert('为了您的人身安全，我们禁止您使用 360 浏览器访问本站，我们要求您通过 Chrome 或 Firefox 浏览器访问本站。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://lab.skk.moe/chrome';
} else if (new Browser().browser == '360') {
    window.alert('为了您的人身安全，我们禁止您使用 360 浏览器访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://chrome.en.softonic.com/android/download';
} else if (new Browser().browser == 'XiaoMi' ) {
    alert('MIUI 浏览器屏蔽了本站部分内容的访问\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.alert('MIUI 浏览器屏蔽了本站部分内容的访问\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.location.href='https://chrome.en.softonic.com/android/download';
} else if (new Browser().browser == 'UC' ) {
    alert('UC 浏览器使用极旧的内核，而本网站使用了一些新的特性。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.alert('UC 浏览器使用极旧的内核，而本网站使用了一些新的特性。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.location.href='https://chrome.en.softonic.com/android/download';
} else if(new Browser().browser == 'QQBrowser'){
            window.alert('QQ 浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们推荐您使用 Chrome 或 Firefox 浏览器。');
			window.location.href='https://www.google.cn/chrome';
} else if(new Browser().browser == 'QQ'){
        window.alert('手机 QQ 浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们要求您使用浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
} else if(new Browser().browser == 'Wechat'){
        window.alert('为了您的人身安全，我们禁止您使用微信访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
} else if (navigator.userAgent.toLowerCase().indexOf('tbs') !== -1) {
    alert('腾讯浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.alert('腾讯浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.location.href='https://chrome.en.softonic.com/android/download';
} else if (navigator.userAgent.toLowerCase().indexOf('mqq') !== -1) {
    alert('手机 QQ 浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们要求您使用浏览器访问本站。');
    window.alert('手机 QQ 浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们要求您使用浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
} else if (navigator.userAgent.toLowerCase().indexOf('qq') !== -1) {
    alert('QQ 浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.alert('QQ 浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。');
    window.location.href='https://chrome.en.softonic.com/android/download';
} else if ((navigator.userAgent.toLowerCase().indexOf('micromessenger') !== -1) || (navigator.userAgent.toLowerCase().indexOf('wechat') !== -1)) {
    alert('为了您的人身安全，我们禁止您使用微信访问本站，我们要求您通过 Chrome 或 Firefox 浏览器访问本站。');
    window.alert('为了您的人身安全，我们禁止您使用微信访问本站，我们要求您通过 Chrome 或 Firefox 浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
} 