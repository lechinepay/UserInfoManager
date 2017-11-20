//
//  UserInfo.h
//  UserInfoManager
//
//  Created by 马洪亮 on 2017/11/16.
//  Copyright © 2017年 马洪亮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject


@property(nonatomic,strong)NSString * name;


+(instancetype)sharedUserInfo;


@end
