#import "WXApi.h"
#import "WXApiObject.h"
#import "WeixinCordovaPlugin.h"
#import <Cordova/CDV.h>

@implementation WeixinCordovaPlugin
-(void)registerApp:(CDVInvokedUrlCommand*)command {
    [self.commandDelegate runInBackground:^{
        NSString* appid = [command.arguments objectAtIndex:0];
        if (appid != nil) {
            [WXApi registerApp:appid];
        }
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}

@end