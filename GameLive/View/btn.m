//
//  btn.m
//  GameLive
//
//  Created by 橘子 on 16/8/8.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "btn.h"

@implementation btn

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}
-(UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]init];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.clipsToBounds = YES;
        [self addSubview:_imageView];
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(5);
            make.size.equalTo(CGSizeMake(30, 30));
            make.centerX.equalTo(0);
        }];
    }
    return  _imageView;
}

-(UILabel *)lable{
    if (!_lable) {
        _lable = [[UILabel alloc]init];
        [self addSubview:_lable];
        [_lable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.imageView.mas_bottom).equalTo(6);
            make.centerX.equalTo(0);
            make.size.equalTo(CGSizeMake(60, 20));
        }];
    }
    return _lable;
}



@end
