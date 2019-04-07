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
            //内核
            'Trident': u.indexOf('Trident') > -1 || u.indexOf('NET CLR') > -1,
            'Presto': u.indexOf('Presto') > -1,
            'WebKit': u.indexOf('AppleWebKit') > -1,
            'Gecko': u.indexOf('Gecko/') > -1,
            //浏览器
            'Safari': u.indexOf('Safari') > -1,
            'Chrome': u.indexOf('Chrome') > -1 || u.indexOf('CriOS') > -1,
            'IE': u.indexOf('MSIE') > -1 || u.indexOf('Trident') > -1,
            'Edge': u.indexOf('Edge') > -1,
            'Firefox': u.indexOf('Firefox') > -1 || u.indexOf('FxiOS') > -1,
            'Firefox Focus': u.indexOf('Focus') > -1,
            'Chromium': u.indexOf('Chromium') > -1,
            'Opera': u.indexOf('Opera') > -1 || u.indexOf('OPR') > -1,
            'Vivaldi': u.indexOf('Vivaldi') > -1,
            'Yandex': u.indexOf('YaBrowser') > -1,
            'Arora': u.indexOf('Arora') > -1,
            'Lunascape': u.indexOf('Lunascape') > -1,
            'QupZilla': u.indexOf('QupZilla') > -1,
            'Coc Coc': u.indexOf('coc_coc_browser') > -1,
            'Kindle': u.indexOf('Kindle') > -1 || u.indexOf('Silk/') > -1,
            'Iceweasel': u.indexOf('Iceweasel') > -1,
            'Konqueror': u.indexOf('Konqueror') > -1,
            'Iceape': u.indexOf('Iceape') > -1,
            'SeaMonkey': u.indexOf('SeaMonkey') > -1,
            'Epiphany': u.indexOf('Epiphany') > -1,
            '360': u.indexOf('QihooBrowser') > -1 || u.indexOf('QHBrowser') > -1,
            '360EE': u.indexOf('360EE') > -1,
            '360SE': u.indexOf('360SE') > -1,
            'UC': u.indexOf('UC') > -1 || u.indexOf(' UBrowser') > -1,
            'QQBrowser': u.indexOf('QQBrowser') > -1,
            'QQ': u.indexOf('QQ/') > -1,
            'Baidu': u.indexOf('Baidu') > -1 || u.indexOf('BIDUBrowser') > -1,
            'Maxthon': u.indexOf('Maxthon') > -1,
            'Sogou': u.indexOf('MetaSr') > -1 || u.indexOf('Sogou') > -1,
            'LBBROWSER': u.indexOf('LBBROWSER') > -1,
            '2345Explorer': u.indexOf('2345Explorer') > -1 || u.indexOf('Mb2345Browser') > -1,
            'TheWorld': u.indexOf('TheWorld') > -1,
            'XiaoMi': u.indexOf('MiuiBrowser') > -1,
            'Quark': u.indexOf('Quark') > -1,
            'Qiyu': u.indexOf('Qiyu') > -1,
            'Wechat': u.indexOf('MicroMessenger') > -1,
            'Taobao': u.indexOf('AliApp(TB') > -1,
            'Alipay': u.indexOf('AliApp(AP') > -1,
            'Weibo': u.indexOf('Weibo') > -1,
            'Douban': u.indexOf('com.douban.frodo') > -1,
            'Suning': u.indexOf('SNEBUY-APP') > -1,
            'iQiYi': u.indexOf('IqiyiApp') > -1,
            //系统或平台
            'Windows': u.indexOf('Windows') > -1,
            'Linux': u.indexOf('Linux') > -1 || u.indexOf('X11') > -1,
            'Mac OS': u.indexOf('Macintosh') > -1,
            'Android': u.indexOf('Android') > -1 || u.indexOf('Adr') > -1,
            'Ubuntu': u.indexOf('Ubuntu') > -1,
            'FreeBSD': u.indexOf('FreeBSD') > -1,
            'Debian': u.indexOf('Debian') > -1,
            'Windows Phone': u.indexOf('IEMobile') > -1 || u.indexOf('Windows Phone')>-1,
            'BlackBerry': u.indexOf('BlackBerry') > -1 || u.indexOf('RIM') > -1,
            'MeeGo': u.indexOf('MeeGo') > -1,
            'Symbian': u.indexOf('Symbian') > -1,
            'iOS': u.indexOf('like Mac OS X') > -1,
            'Chrome OS': u.indexOf('CrOS') > -1,
            'WebOS': u.indexOf('hpwOS') > -1,
            //设备
            'Mobile': u.indexOf('Mobi') > -1 || u.indexOf('iPh') > -1 || u.indexOf('480') > -1,
            'Tablet': u.indexOf('Tablet') > -1 || u.indexOf('Pad') > -1 || u.indexOf('Nexus 7') > -1
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
            browser: ['Safari', 'Chrome', 'Edge', 'IE', 'Firefox', 'Firefox Focus', 'Chromium', 'Opera', 'Vivaldi', 'Yandex', 'Arora', 'Lunascape', 'QupZilla', 'Coc Coc', 'Kindle', 'Iceweasel', 'Konqueror', 'Iceape', 'SeaMonkey', 'Epiphany', '360', '360SE', '360EE', 'UC', 'QQBrowser', 'QQ', 'Baidu', 'Maxthon', 'Sogou', 'LBBROWSER', '2345Explorer', 'Mb2345Browser', 'TheWorld', 'XiaoMi', 'Quark', 'Qiyu', 'Wechat', 'Taobao', 'Alipay', 'Weibo', 'Douban','Suning', 'iQiYi'],
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

var mqqHTML = '<div style="padding: 15px"><h2>请从菜单中选择「从浏览器中打开」</h2></div>';

var bodyEl = document.getElementsByTagName('body')[0];

// 判断 360 浏览器跳转
if (new Browser().browser == '360' || new Browser().browser == '360EE' || new Browser().browser == '360SE') {
    window.alert('为了您的人身安全，我们禁止您使用 360 浏览器访问本站，我们要求您通过 Chrome 或 Firefox 浏览器访问本站。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if (new Browser().browser == 'XiaoMi' ) {
    window.alert('MIUI 浏览器屏蔽了本站部分内容的访问。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if (new Browser().browser == 'UC' ) {
    window.alert('UC 浏览器使用极旧的内核，而本网站使用了一些新的特性。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if(new Browser().browser == 'QQBrowser') {
    window.alert('QQ 浏览器内核存在严重缺陷。\n为了您能更好地浏览本站，我们推荐您使用 Chrome 或 Firefox 浏览器。\n点击确定后将会跳转至 Chrome 浏览器下载');
	window.location.href='https://www.google.cn/chrome';
} else if(new Browser().browser == 'QQ') {
    window.alert('为了您的人身安全，我们禁止您使用 手机QQ 访问本站，我们推荐您使用 Chrome 或 Firefox 浏览器。');
    bodyEl.innerHTML = mqqHTML;
} else if(new Browser().browser == 'Wechat') {
    window.alert('为了您的人身安全，我们禁止您使用 微信 访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
}  else if(new Browser().browser == 'Taobao') {
    window.alert('为了您的人身安全，我们禁止您使用 淘宝客户端 访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
}  else if(new Browser().browser == 'Alipay') {
    window.alert('为了您的人身安全，我们禁止您使用 支付宝客户端 访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
}  else if(new Browser().browser == 'Weibo') {
    window.alert('为了您的人身安全，我们禁止您使用 微博客户端 访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。');
    bodyEl.innerHTML = mqqHTML;
} else if (new Browser().browser == '2345Explorer' || new Browser().browser == 'Mb2345Browser') {
    window.alert('2345 浏览器 使用极旧的内核，而本网站使用了一些新的特性。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if (new Browser().browser == 'TheWorld' ) {
    window.alert('为了您的人身安全，我们禁止您使用 世界之窗浏览器 访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if (new Browser().browser == 'Sogou' ) {
    window.alert('搜狗浏览器 使用极旧的内核，而本网站使用了一些新的特性。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if (new Browser().browser == 'Baidu' ) {
    window.alert('百度浏览器 使用极旧的内核，而本网站使用了一些新的特性。\n为了您能更好地浏览本站，我们要求您使用 Chrome 或 Firefox 浏览器。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if (new Browser().browser == 'LBBROWSER' ) {
    window.alert('为了您的人身安全，我们禁止您使用 猎豹浏览器 访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
} else if (new Browser().browser == 'Maxthon' ) {
    window.alert('为了您的人身安全，我们禁止您使用 傲游浏览器 访问本站，我们推荐您通过 Chrome 或 Firefox 浏览器访问本站。\n点击确定后将会跳转至 Chrome 浏览器下载');
    window.location.href='https://www.google.cn/chrome';
}
