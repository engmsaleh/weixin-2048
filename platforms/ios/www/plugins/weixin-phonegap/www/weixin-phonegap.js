cordova.define("weixin-phonegap.weixin-phonegap", function(require, exports, module) { // var exec = require('cordova/exec');

cordova.define("cordova/plugin/weixin-phonegap", function(require, exports, module) {

  weixin = {};


  weixin.hello = function() {
    cordova.exec(null, null, "WeixinCordovaPlugin", "hello", []);
    console.log("VAS TE FAIRE ENCULER");
  }

  module.exports = weixin;
});
// exports.registerApp = function(arg0, success, error) {
//     exec(success, error, "weixin-phonegap", "coolMethod", [arg0]);
// };

});
