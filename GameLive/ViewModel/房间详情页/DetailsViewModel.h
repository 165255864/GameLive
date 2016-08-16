//
//  DetailsViewModel.h
//  GameLive
//
//  Created by 橘子 on 16/8/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "TRNetManager.h"

@interface DetailsViewModel : BaseViewModel
@property(nonatomic,readonly) NSInteger rowNumber;
@property(nonatomic) NSMutableArray<DetailsRankWeekModel*>* dataList;
@property(nonatomic)NSInteger page;
-(NSURL*)iconURLForRow:(NSInteger)row;
-(NSString*)nickForRow:(NSInteger)row;
-(NSString*)titleForRow:(NSInteger)row;
-(NSString*)uidForRow:(NSInteger)row;
-(NSString*)viewForRow:(NSInteger)row;

@end
