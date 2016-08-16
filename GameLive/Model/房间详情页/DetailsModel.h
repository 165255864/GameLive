//
//  DetailsModel.h
//  GameLive
//
//  Created by 橘子 on 16/8/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DetailsHlsModel,DetailsthreeModel,DetailsRoomLinesModel,DetailsRankWeekModel;
@interface DetailsModel : NSObject

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, assign) NSInteger weight;

@property (nonatomic, copy) NSString *last_play_at;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) BOOL play_status;

@property (nonatomic, copy) NSString *category_name;

@property (nonatomic, assign) BOOL hidden;

@property (nonatomic, assign) BOOL forbid_status;

@property (nonatomic, strong) NSArray<DetailsRankWeekModel *> *rank_curr;

@property (nonatomic, strong) NSArray *admins;

@property (nonatomic, strong) NSArray *hot_word;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, strong) NSArray<DetailsRoomLinesModel *> *room_lines;

@property (nonatomic, strong) NSArray<DetailsRankWeekModel *> *rank_week;

@property (nonatomic, assign) BOOL is_star;

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, copy) NSString *announcement;

@property (nonatomic, copy) NSString *nick;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, strong) NSArray *notice;

@property (nonatomic, strong) NSArray<DetailsRankWeekModel *> *rank_total;

@property (nonatomic, copy) NSString *avatar;

@property (nonatomic, assign) NSInteger view;

@property (nonatomic, copy) NSString *video_quality;

@property (nonatomic, assign) BOOL warn;

@property (nonatomic, assign) NSInteger category_id;

@property (nonatomic, assign) NSInteger follow;

@property (nonatomic, strong) DetailsModel *ws;

@end



@interface DetailsHlsModel : NSObject

@property (nonatomic, strong) DetailsthreeModel *three;

@property (nonatomic, strong) DetailsthreeModel *five;

@property (nonatomic, strong) DetailsthreeModel *four;

@property (nonatomic, assign) NSInteger main_pc;

@property (nonatomic, assign) NSInteger main_mobile;

@end

@interface DetailsthreeModel : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *src;

@end


@interface DetailsRoomLinesModel : NSObject

@property (nonatomic, copy) NSString *def_mobile;

@property (nonatomic, strong) DetailsHlsModel *hls;

@property (nonatomic, copy) NSString *def_pc;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger v;

@end

@interface DetailsRankWeekModel : NSObject

@property (nonatomic, copy) NSString *change;

@property (nonatomic, assign) NSInteger score;

@property (nonatomic, copy) NSString *send_nick;

@property (nonatomic, assign) NSInteger send_uid;

@property (nonatomic, copy) NSString *rank;

@property (nonatomic, copy) NSString *icon_url;

@property (nonatomic, copy) NSString *icon;

@end

