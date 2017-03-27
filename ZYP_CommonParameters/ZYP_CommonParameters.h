//
//  ZYP_CommonParameters.h
//  ZYP_CommonParameters
//
//  Created by zhaoyunpeng on 17/3/13.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYP_CommonParameters : NSObject

//+ (instancetype)shareInstance;

/** 获取IDFA(广告位标识符) */
+ (NSString *)getIDFA;

/** 获取UUID(唯一标识码) */
+ (NSString *)getUUID;

/** 获取设备名称 */
+ (NSString *)getDeviceName;

/** 获取手机系统版本 */
+ (NSString *)getPhoneVersion;

/** 获取电池电量 */
+ (float)getBatteryLevel;

/** 获取设备基本信息 */
- (NSDictionary *)getInfoDictionary;

/** 获取应用名称 */
- (NSString *)getAppName;

/** 获取应用版本 */
- (NSString *)getAppVersion;

/** 获取应用构建版本 */
- (NSString *)getAppVersionNumber;

/** 获取应用Bundle ID */
- (NSString *)getAppBundleIdentifier;

/** 获取设备系统 */
+ (NSString *)getDeviceVersion;
- (NSString *)getDeviceVersion;

/** 获取Mac地址 */
+ (NSString *)getMacAddress;

/** 获取IP地址 */
+ (NSString *)getDeviceIPAddress;

@end
