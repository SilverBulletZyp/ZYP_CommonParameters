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
    CFUUIDRef puuid = CFUUIDCreate( nil );
    
    CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
    
    NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy(NULL, uuidString));
    
    
    CFRelease(puuid);
    
    CFRelease(uuidString);
    NSLog(@"UUID = %@",result);
    return result;
}




@end

