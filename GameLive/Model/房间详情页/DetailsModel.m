//
//  DetailsModel.m
//  GameLive
//
//  Created by 橘子 on 16/8/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "DetailsModel.h"

@implementation DetailsModel
+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"rank_curr":[DetailsRankWeekModel class],@"room_lines":[DetailsRoomLinesModel class],@"rank_week":[DetailsRankWeekModel class],@"rank_total":[DetailsRankWeekModel class]};
}
@end



@implementation DetailsHlsModel
+(NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"three":@"3",@"four":@"4",@"five":@"5"};
}
@end


@implementation DetailsthreeModel

@end

@implementation DetailsRoomLinesModel

@end


@implementation DetailsRankWeekModel

@end


