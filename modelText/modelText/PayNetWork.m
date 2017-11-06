//
//  PayNetWork.m
//  支付测试
//
//  Created by 潘振权 on 2017/9/27.
//  Copyright © 2017年 潘振权. All rights reserved.
//

#import "PayNetWork.h"
#import "AFHTTPSessionManager.h"
//#import "WXApi.h"

//@implementation NetworkTask{
//    NSURLSessionDataTask *_sessionDatatask;
//}
//
//+ (instancetype)netWorkWithSessionDataTask:(NSURLSessionDataTask*)task{
//    NetworkTask *atask=[[NetworkTask alloc] init];
//    atask->_sessionDatatask=task;
//    return atask;
//}
//
//- (void)cancel{
//    [_sessionDatatask cancel];
//}
//
//- (void)suspend{
//    [_sessionDatatask suspend];
//}
//
//- (void)resume{
//    [_sessionDatatask resume];
//}
//@end


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
    
    AFSecurityPolicy *policy = [[AFSecurityPolicy alloc] init];
    [policy setAllowInvalidCertificates:YES];
    policy.validatesDomainName = NO;
    // 数据下载
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.securityPolicy = policy;
    
    [manager GET:@"http://tapi.fshtop.com/cms-pay/wechatPay/1.0.0/getWechatPayOrderTest" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dictionary =responseObject;
        NSDictionary *data = [dictionary objectForKey:@"data"];
        NSDictionary *wechatPayInfo = [data objectForKey:@"wechatPayInfo"];
        
//        PayReq *request = [[PayReq alloc] init];
//        request.partnerId =[wechatPayInfo objectForKey:@"partnerid"];
//        request.prepayId= [wechatPayInfo objectForKey:@"prepayid"];
//        request.package = [wechatPayInfo objectForKey:@"package"];
//        request.nonceStr= [wechatPayInfo objectForKey:@"noncestr"];
//        request.timeStamp= [[wechatPayInfo objectForKey:@"timestamp"] unsignedIntValue];
//        request.sign= [wechatPayInfo objectForKey:@"sign"];
//        [WXApi sendReq:request];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
    
}


@end
