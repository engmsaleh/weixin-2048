#import "WXApi.h"
#import "WXApiObject.h"
#import "WeixinCordovaPlugin.h"
#import <Cordova/CDV.h>

@implementation WeixinCordovaPlugin
-(void)hello:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end