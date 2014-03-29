cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "plugins/org.apache.cordova.console/www/console-via-logger.js",
        "id": "org.apache.cordova.console.console",
        "clobbers": [
            "console"
        ]
    },
    {
        "file": "plugins/org.apache.cordova.console/www/logger.js",
        "id": "org.apache.cordova.console.logger",
        "clobbers": [
            "cordova.logger"
        ]
    },
    {
        "file": "plugins/weixin-phonegap/www/weixin-phonegap.js",
        "id": "weixin-phonegap.weixin-phonegap",
        "clobbers": [
            "cordova.plugins.weixin-phonegap"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "org.apache.cordova.console": "0.2.7",
    "weixin-phonegap": "1"
}
// BOTTOM OF METADATA
});