//
//  MineTableViewCell.m
//  GameLive
//
//  Created by 橘子 on 16/8/8.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MineTableViewCell.h"

@implementation MineTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super  initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        _iconImagerView = [[UIImageView alloc]init];
        _iconImagerView.contentMode = UIViewContentModeScaleAspectFill;
        _iconImagerView.clipsToBounds = YES;
        [self.contentView addSubview:_iconImagerView];
        
        _lable = [UILabel new];
        _lable.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_lable];
        
        _datailLable = [UILabel new];
        _datailLable.font = [UIFont systemFontOfSize:15];
        _datailLable.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:_datailLable];
        
        self.separatorInset = UIEdgeInsetsMake(0, 10, 0, 0);
        [self setUpConstrations];
    }
    return self;
}

-(void)setUpConstrations{
    [_iconImagerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(10);
        make.centerY.equalTo(0);
        make.size.equalTo(CGSizeMake(30, 30));
    }];
    [_lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImagerView.mas_right).equalTo(10);
        make.centerY.equalTo(0);
        make.height.equalTo(30);
    }];
    [_datailLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(0);
        make.centerY.equalTo(0);
        make.height.equalTo(30);
    }];
}



@end
