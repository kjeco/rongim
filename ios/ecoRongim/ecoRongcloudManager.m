//
//  ecoRongcloudManager.m
//  WeexTestDemo
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 TomQin. All rights reserved.
//

#import "ecoRongcloudManager.h"
#import <RongIMLib/RongIMLib.h>

@interface ecoRongcloudManager ()

@property (nonatomic, strong) NSString *appKey;
@property (nonatomic, strong) NSString *appSecret;

@end

@implementation ecoRongcloudManager

+ (ecoRongcloudManager *)sharedIntstance {
    static dispatch_once_t once;
    static id instance;
    dispatch_once(&once, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)init:(NSString*)appKey appSecret:(NSString*)appSecret
{
    self.appKey = appKey;
    self.appSecret = appSecret;
    [[RCIMClient sharedRCIMClient] initWithAppKey:appKey];
}

@end
