//
//  SearChViewModel.h
//  GameLive
//
//  Created by 橘子 on 16/8/10.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "TRNetManager.h"

@interface SearChViewModel : BaseViewModel
@property(nonatomic)NSString* keywords;
@property(nonatomic)NSMutableArray<SearchItemsModel*>* dataList;
@property(nonatomic)NSInteger page;

@property(nonatomic,readonly)NSInteger rowNumber;

-(NSURL*)iconURLForRow:(NSInteger)row;
-(NSString*)nickForRow:(NSInteger)row;
-(NSString*)titleForRow:(NSInteger)row;
-(NSURL*)videoURLForRow:(NSInteger)row;
-(NSString*)viewForRow:(NSInteger)row;
@end
