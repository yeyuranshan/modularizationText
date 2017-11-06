//
//  PayNetWork.m
//  支付测试
//
//  Created by 潘振权 on 2017/9/27.
//  Copyright © 2017年 潘振权. All rights reserved.
//

#import "PayNetWork.h"
#import "AFHTTPSessionManager.h"

@implementation PayNetWork

+(instancetype)shareInstance{
    static PayNetWork *network=nil;
    static dispatch_once_t singlet;
    dispatch_once(&singlet, ^{
        network=[[PayNetWork alloc] init];
    });
    return network;
}

+ (void)weixinPay:(void (^)(void))success failure:(void (^)(NSError *error))failure{
    
    NSlog(@"hello world");
    
}


@end
