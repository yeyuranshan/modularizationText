//
//  PayNetWork.h
//  支付测试
//
//  Created by 潘振权 on 2017/9/27.
//  Copyright © 2017年 潘振权. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KHOST    @"http://tapi.fshtop.com"

//@interface NetworkTask : NSObject
//+ (nullable instancetype)netWorkWithSessionDataTask:(nullable NSURLSessionDataTask*)task;
//- (void)cancel;
//- (void)suspend;
//- (void)resume;
//@end


@interface PayNetWork : NSObject
+(instancetype)shareInstance;

+(void)weixinPay:(void (^)(void))success failure:(void (^)(NSError *error))failure;
@end
