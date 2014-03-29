// var exec = require('cordova/exec');

cordova.define("cordova/plugin/weixin-phonegap", function(require, exports, module) {

  weixin = {};


  weixin.hello = function() {
    cordova.exec(success, error, "WeixinCordovaPlugin", "hello", []);
    console.log("VAS TE FAIRE ENCULER");
  }

  module.exports = weixin;
});
// exports.registerApp = function(arg0, success, error) {
//     exec(success, error, "weixin-phonegap", "coolMethod", [arg0]);
// };
