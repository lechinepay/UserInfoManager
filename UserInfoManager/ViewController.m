//
//  ViewController.m
//  UserInfoManager
//
//  Created by 马洪亮 on 2017/11/16.
//  Copyright © 2017年 马洪亮. All rights reserved.
//

#import "ViewController.h"
#import "UserInfo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UserInfo * user = [UserInfo sharedUserInfo];
    
    NSLog(@"user------%@",user.name);
    
    
    [[UserInfo alloc]init];
    [UserInfo new];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
