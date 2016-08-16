//
//  SearchModel.h
//  GameLive
//
//  Created by 橘子 on 16/8/10.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SearchItemsModel;
@interface SearchModel : NSObject

//@property (nonatomic, strong) Data *data;

@property (nonatomic, assign) NSInteger code;
//@end
//@interface TRSearchDataModel : NSObject

@property (nonatomic, strong) NSArray<SearchItemsModel *> *items;

@property (nonatomic, assign) NSInteger total;

@property (nonatomic, assign) NSInteger pageNb;

@end

@interface SearchItemsModel : NSObject

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, assign) NSInteger category_id;

@property (nonatomic, copy) NSString *nick;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *avatar;

@property (nonatomic, assign) BOOL is_shield;

@property (nonatomic, copy) NSString *view;

@property (nonatomic, copy) NSString *category_name;

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, assign) BOOL play_status;

@property (nonatomic, copy) NSString *category_slug;

@end