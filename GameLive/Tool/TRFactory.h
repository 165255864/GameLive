//
//  TRFactory.h
//  GameLive
//
//  Created by 橘子 on 16/8/5.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRFactory : NSObject<UISearchDisplayDelegate>

//自动为传入的参数拼装上返回按钮
+(void)addBackItemForVC:(UIViewController*)vc;

+(void)addBackRightItemForVC:(UIViewController *)vc;

//自动为控制器添加右上角的搜索按钮UI
+(void)addSearchItemForVC:(UIViewController*)vc clickedHanler:(void(^)())handler;



@end
