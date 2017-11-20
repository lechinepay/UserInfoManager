//
//  UserInfo.m
//  UserInfoManager
//
//  Created by 马洪亮 on 2017/11/16.
//  Copyright © 2017年 马洪亮. All rights reserved.
//

#import "UserInfo.h"
 static UserInfo * user = nil;
@implementation UserInfo

+(instancetype)sharedUserInfo{
    
    static  dispatch_once_t dispatch;
    dispatch_once(&dispatch, ^{
        user =(UserInfo *)@"UserInfo";
        user = [[UserInfo alloc]init];
    });
    
    //防止子类使用sharedUserInfo方法
    NSString * className = NSStringFromClass([self class]);
    if ([className isEqualToString:@"UserInfo"] == NO) {
        NSParameterAssert(nil);//是程序崩溃
    }
    return user;
}

- (instancetype)init
{
    
    NSString * string = (NSString *)user;
    if ([string isKindOfClass:[NSString class]] == YES && [string isEqualToString:@"UserInfo"]) {
        self = [super init];
        if (self) {
            
        }
        return self;
    }else{
        return nil;
    }
    
   
}

@end
