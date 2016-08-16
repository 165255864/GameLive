//
//  TRFactory.m
//  GameLive
//
//  Created by 橘子 on 16/8/5.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "TRFactory.h"

@implementation TRFactory

+(void)addBackItemForVC:(UIViewController *)vc{
    UIButton* backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"返回_默认"] forState:UIControlStateNormal];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"返回_按下"] forState:UIControlStateHighlighted];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    [backBtn bk_addEventHandler:^(id sender) {
        [vc.navigationController popViewControllerAnimated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* backItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
    //配置返回按钮离屏幕边缘的距离
    UIBarButtonItem* spaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width = -15;
    vc.navigationItem.leftBarButtonItems = @[spaceItem,backItem];
}

+(void)addBackRightItemForVC:(UIViewController *)vc{
    UIButton* backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"关闭_默认"] forState:UIControlStateNormal];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"关闭_按下"] forState:UIControlStateHighlighted];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    [backBtn bk_addEventHandler:^(id sender) {
        [vc  dismissViewControllerAnimated:YES completion:nil ];
    } forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* backItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
    //配置返回按钮离屏幕边缘的距离
    UIBarButtonItem* spaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width = -15;
    vc.navigationItem.rightBarButtonItems = @[spaceItem,backItem];
}

//搜索
+(void)addSearchItemForVC:(UIViewController *)vc clickedHanler:(void (^)())handler{
    UIButton* backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"搜索_默认"] forState:UIControlStateNormal];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"搜索_按下"] forState:UIControlStateHighlighted];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    [backBtn bk_addEventHandler:^(id sender) {
        !handler ?: handler();
    } forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem* backItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
    //配置返回按钮离屏幕边缘的距离
    UIBarButtonItem* spaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width = -15;
    vc.navigationItem.rightBarButtonItems = @[spaceItem,backItem];
}

@end
