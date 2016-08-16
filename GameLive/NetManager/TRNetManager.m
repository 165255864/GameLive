//
//  TRNetManager.m
//  GameLive
//
//  Created by tarena on 16/8/1.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "TRNetManager.h"

@implementation TRNetManager

+(id)search:(NSString *)keywords page:(NSInteger)page completionHandler:(void (^)(SearchModel *, NSError *))completionHandler{
    if (keywords.length == 0) {
        !completionHandler ?: completionHandler(nil,nil);
    }
    NSMutableDictionary* params = [NSMutableDictionary new];
    [params setObject:@"site.search" forKey:@"m"];
    [params setObject:@"2" forKey:@"os"];
    [params setObject:@"0" forKey:@"p[categoryld]"];
    [params setObject:keywords forKey:@"p[key]"];
    [params setObject:@(page) forKey:@"p[page]"];
    [params setObject:@"10" forKey:@"p[size]"];
    [params setObject:@"1.3.2" forKey:@"v"];
    return [self POST:@"http://www.quanmin.tv/api/v1" parameters:params completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([SearchModel parse:responseObj],error);
    }];
}

+ (id)getIntroCompletionHandler:(void (^)(TRIntroModel *, NSError *))completionHandler{
    return [self GET:kIntroPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([TRIntroModel parse:responseObj], nil);
    }];
}

+ (id)getRoomList:(NSString *)slug page:(NSInteger)page completionHandler:(void (^)(TRRoomListModel *, NSError *))completionHandler{
    NSString *path = [NSString stringWithFormat:kRoomListPath, slug, page == 0 ? @"" : [NSString stringWithFormat:@"_%ld", page]];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([TRRoomListModel parse:responseObj], error);
    }];
}

+ (id)getCategoryCompletionHandler:(void (^)(NSArray<TRCategoryModel *> *, NSError *))completionHandler{
    return [self GET:kCategoriesPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([TRCategoryModel parse:responseObj], error);
    }];
}

+ (id)getLiveListWithPage:(NSInteger)page completionHandler:(void (^)(TRLiveModel *, NSError *))completionHandler{
    NSString *path = [NSString stringWithFormat:kLiveRoomListPath, page == 0 ? @"" : [NSString stringWithFormat:@"_%ld", page]];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([TRLiveModel parse:responseObj], error);
    }];
}
+(id)getDetailsWithPage:(NSInteger)page completionHandler:(void (^)(DetailsModel *, NSError *))completionHandler{
    NSString* path = [NSString stringWithFormat:KDetailsPath,page == 0 ? @"" : [NSString stringWithFormat:@"_%ld",page]];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([DetailsModel parse:responseObj],error);
    }];
}
@end
