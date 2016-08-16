//
//  DetailsViewModel.m
//  GameLive
//
//  Created by 橘子 on 16/8/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "DetailsViewModel.h"

@implementation DetailsViewModel
-(void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    NSInteger tmpPage = 0;
    if (requestMode == RequestModeMore) {
        tmpPage = _page + 1;
    }
    self.dataTask = [TRNetManager getDetailsWithPage:tmpPage completionHandler:^(DetailsModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.dataList removeAllObjects];
            }
            [self.dataList addObjectsFromArray:model.rank_week];
            _page = tmpPage;
        }
        !completionHandler ?: completionHandler(error);
    }];
}
-(NSInteger)rowNumber{
    return self.dataList.count;
}
-(NSURL *)iconURLForRow:(NSInteger)row{
    return self.dataList[row].icon_url.yx_VideoURL;
}
-(NSString *)nickForRow:(NSInteger)row{
    return self.dataList[row].send_nick;
}
//-(NSString *)titleForRow:(NSInteger)row{
//    return self.dataList[row].
//}


@end
