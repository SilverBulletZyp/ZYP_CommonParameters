//
//  ZYP_CommonParameters.m
//  ZYP_CommonParameters
//
//  Created by zhaoyunpeng on 17/3/13.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import "ZYP_CommonParameters.h"
//#import <sys / utsname.h>
#import <UIKit/UIKit.h>
#import <AdSupport/AdSupport.h>
#import <CoreFoundation/CoreFoundation.h>
//#import <ifaddrs.h>
//#import <arpa / inet.h>


@implementation ZYP_CommonParameters

+ (instancetype)shareInstance {
    static ZYP_CommonParameters *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ZYP_CommonParameters alloc]init];
    });
    return instance;
}

- (NSString *)getIDFA {
    return [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
}

// 注：UDID被禁止

- (NSString *)getUUID {
    CFUUIDRef puuid = CFUUIDCreate(nil);
    CFStringRef uuidString = CFUUIDCreateString(nil, puuid);
    NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy(NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    return result;
}

- (NSString *)getDeviceName {
    return [[UIDevice currentDevice] systemName];
}

- (NSString *)phoneVersion {
    return [[UIDevice currentDevice] systemVersion];
}

- (NSDictionary *)getInfoDictionary {
    return [[NSBundle mainBundle] infoDictionary];
}

/*
 
 {
 BuildMachineOSBuild = 15G1004;
 CFBundleDevelopmentRegion = en;
 CFBundleExecutable = "ZYP_CommonParameters";
 CFBundleIdentifier = "zhaoyunpeng.ZYP-CommonParameters";
 CFBundleInfoDictionaryVersion = "6.0";
 CFBundleName = "ZYP_CommonParameters";
 CFBundleNumericVersion = 16809984;
 CFBundlePackageType = APPL;
 CFBundleShortVersionString = "1.0";
 CFBundleSupportedPlatforms =     (
 iPhoneSimulator
 );
 CFBundleVersion = 1;
 DTCompiler = "com.apple.compilers.llvm.clang.1_0";
 DTPlatformBuild = "";
 DTPlatformName = iphonesimulator;
 DTPlatformVersion = "10.2";
 DTSDKBuild = 14C89;
 DTSDKName = "iphonesimulator10.2";
 DTXcode = 0821;
 DTXcodeBuild = 8C1002;
 LSRequiresIPhoneOS = 1;
 MinimumOSVersion = "10.2";
 UIDeviceFamily =     (
 1
 );
 UILaunchStoryboardName = LaunchScreen;
 UIMainStoryboardFile = Main;
 UIRequiredDeviceCapabilities =     (
 armv7
 );
 UISupportedInterfaceOrientations =     (
 UIInterfaceOrientationPortrait,
 UIInterfaceOrientationLandscapeLeft,
 UIInterfaceOrientationLandscapeRight
 );
 }
 
 */


- (NSString *)getAppName {
    return [[self getInfoDictionary] objectForKey:@"CFBundleDisplayName"];
}

- (NSString *)getAppVersion {
    return [[self getInfoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

- (NSString *)getAppVersionNumber {
    return [[self getInfoDictionary] objectForKey:@"CFBundleVersion"];
}

- (NSString *)getAppBundleIdentifier {
    return [[self getInfoDictionary] objectForKey:@"CFBundleIdentifier"];
}



@end

