//
//  ZYP_CommonParameters.h
//  ZYP_CommonParameters
//
//  Created by zhaoyunpeng on 17/3/13.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYP_CommonParameters : NSObject

+ (instancetype)shareInstance;


/** 获得IDFA */
- (NSString *)getIDFA;

- (NSString *)getUUID;

@end
