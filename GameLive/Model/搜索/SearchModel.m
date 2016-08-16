//
//  SearchModel.m
//  GameLive
//
//  Created by 橘子 on 16/8/10.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "SearchModel.h"

@implementation SearchModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"items": @"data.items",
             @"total": @"data.total",
             @"pageNb": @"data.pageNb"
             };
}

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"items": [SearchItemsModel class]};
}
@end

@implementation SearchItemsModel



@end
