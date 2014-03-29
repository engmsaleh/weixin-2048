cordova.define("cordova/plugin/weixin-phonegap", function(require, exports, module) {

  weixin = {};

  weixin.registered = false;

  weixin.registerApp = function(appid) {
    cordova.exec(function() {
      
      weixin.registered = true;

      document.getElementById('registered').innerHTML = weixin.registered;

    }, function() {
      weixin.registered = false;

      document.getElementById('registered').innerHTML = weixin.registered;

    }, "WeixinCordovaPlugin", "registerApp", [appid]);
  }

  module.exports = weixin;
});
