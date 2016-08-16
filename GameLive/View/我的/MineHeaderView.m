//
//  MineHeaderView.m
//  GameLive
//
//  Created by 橘子 on 16/8/8.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MineHeaderView.h"
#import "btn.h"
#import "DengluController.h"
#import "ZhuceController.h"

@interface MineHeaderView ()
@property(nonatomic,strong)UIImageView* imageView;
@property(nonatomic,strong)UIButton* LoginButton;
@property(nonatomic,strong)UIButton* regisButton;
@property(nonatomic,strong)UIView* spaceView;
@property(nonatomic,strong)UIButton* liveButton;
@property(nonatomic,strong)btn* recordBtn;
@property(nonatomic,strong)btn* managerBtn;
@property(nonatomic,strong)btn* chargerBtn;
@property(nonatomic,strong)UIView* maskView;
@property(nonatomic,strong)UIView* whiteView;
@property(nonatomic,strong)btn* taskBtn;

@end
@implementation MineHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _whiteView = [[UIView alloc]init];
        _whiteView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_whiteView];
        
        _maskView = [[UIView alloc]init];
        [self.whiteView addSubview:_maskView];
        UIImageView* backImageView = [[UIImageView alloc]init];
        backImageView.image = [UIImage imageNamed:@"ios个人中心背景@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.29888.000.00."];
        [_maskView addSubview:backImageView];
        [backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
        UIButton* leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [leftBtn setBackgroundImage:[UIImage imageNamed:@"站内私信@2x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.8456.000.00."] forState:UIControlStateNormal];
        [leftBtn bk_addEventHandler:^(id sender) {
            
        } forControlEvents:UIControlEventTouchUpInside];
        [self.maskView addSubview:leftBtn];
        [leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(20);
            make.top.equalTo(30);
            make.size.equalTo(CGSizeMake(33, 33));
        }];
        UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [rightButton setBackgroundImage:[UIImage imageNamed:@"LumberjackLogo"] forState:UIControlStateNormal];
        [self.maskView addSubview:rightButton];
        [rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(30);
            make.right.equalTo(-20);
            make.size.equalTo(CGSizeMake(33, 33));
            
        }];
        
        _imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"头像"]];
        _imageView.layer.cornerRadius = 32;
        _imageView.clipsToBounds = YES;
        [self.maskView addSubview:_imageView];
        
        _LoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_LoginButton setTitle:@"登录" forState:UIControlStateNormal];
        _LoginButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_LoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_LoginButton bk_addEventHandler:^(id sender) {
            NSLog(@"登录");
            UINavigationController* navi = [[UINavigationController alloc]initWithRootViewController:[DengluController new]];
            [self.viewController presentViewController:navi animated:YES completion:nil];
            
        } forControlEvents:UIControlEventTouchUpInside];
        [self.maskView addSubview:_LoginButton];
        
        _regisButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_regisButton setTitle:@"注册" forState:UIControlStateNormal];
        _regisButton.titleLabel.textColor = [UIColor whiteColor];
        _regisButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_regisButton bk_addEventHandler:^(id sender) {
            
            NSLog(@"注册");
            ZhuceController* zhuce = [[ZhuceController alloc]init];
            UINavigationController* navi = [[UINavigationController alloc]initWithRootViewController:zhuce];
            zhuce.bb = @"2";

            [self.viewController.navigationController presentViewController:navi animated:YES completion:nil];
            
        } forControlEvents:UIControlEventTouchUpInside];
        [self.maskView addSubview:_regisButton];
        
        _spaceView = [[UIView alloc]init];
        _spaceView.backgroundColor = [UIColor whiteColor];
        [self.maskView addSubview:_spaceView];
        
        _liveButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _liveButton.titleLabel.font = [UIFont systemFontOfSize:14];
        _liveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _liveButton.backgroundColor = [UIColor blueColor];
        _liveButton.layer.cornerRadius = 20 ;
        _liveButton.clipsToBounds = YES;
        [_liveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_liveButton setTitle:@"我要直播" forState:UIControlStateNormal];
        [self.whiteView addSubview:_liveButton];
        
        
        _recordBtn = [[btn alloc]init];
        _recordBtn.imageView.image = [UIImage imageNamed:@"观看历史@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.63206.000.00."];
        _recordBtn.lable.font = [UIFont systemFontOfSize:14];
        _recordBtn.lable.text = @"观看历史";
        [self.whiteView addSubview:_recordBtn];
        
        _managerBtn = [[btn alloc]init];
        _managerBtn.imageView.image = [UIImage imageNamed:@"我的关注-1"];
        _managerBtn.lable.font = [UIFont systemFontOfSize:14];
        _managerBtn.lable.text = @"关注管理";
        [self.whiteView addSubview:_managerBtn];
        
        _taskBtn = [[btn alloc]init];
        _taskBtn.imageView.image = [UIImage imageNamed:@"鱼丸任务@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.36527.000.00."];
        _taskBtn.lable.text = @"今日任务";
        _taskBtn.lable.font = [UIFont systemFontOfSize:14];
        [self.whiteView addSubview:_taskBtn];
        
        _chargerBtn = [[btn alloc]init];
        _chargerBtn.imageView.image = [UIImage imageNamed:@"鱼丸任务@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.36527.000.00."];
        _chargerBtn.lable.font = [UIFont systemFontOfSize:14];
        _chargerBtn.lable.text = @"快速充值";
        [self.whiteView addSubview:_chargerBtn];
        
        [self setUpConstrations];
        
    }
    return self;
}
-(void)setUpConstrations{
    [_whiteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(0);
        make.height.equalTo(330);
    }];
    [_maskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(0);
        make.height.equalTo(240);
    }];
    [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(30);
        make.centerX.equalTo (0);
        make.size.equalTo(CGSizeMake(90, 90));
    }];
    [_spaceView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(0);
        make.top.equalTo(self.imageView.mas_bottom).equalTo(10);
        make.size.equalTo(CGSizeMake(2, 20));
    }];
    [_LoginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(50, 30));
        make.right.equalTo(self.spaceView.mas_left).equalTo(-10);
        make.top.equalTo(self.spaceView).equalTo(-4);
    }];
    [_regisButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.spaceView).equalTo(-4);
        make.size.equalTo(CGSizeMake(50, 30));
        make.left.equalTo(self.spaceView.mas_right).equalTo(10);
    }];
    [_liveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(200, 40));
        make.top.equalTo(self.maskView.mas_bottom).equalTo(-20);
        make.centerX.equalTo(0);
    }];
    CGFloat space = (long)(kScreenW - 40 * 4) / 5;
    [_recordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(40, 60));
        make.left.equalTo(space);
        make.top.equalTo(self.maskView.mas_bottom).equalTo(20);
    }];
    [_managerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.recordBtn.mas_right).equalTo(space);
        make.size.equalTo(CGSizeMake(40, 60));
        make.top.equalTo(self.recordBtn);
    }];
    [_taskBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.managerBtn.mas_right).equalTo(space);
        make.size.equalTo(CGSizeMake(40, 60));
        make.top.equalTo(self.recordBtn);
    }];
    [_chargerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.taskBtn.mas_right).equalTo(space);
        make.size.equalTo(CGSizeMake(52, 52));
        make.top.equalTo(self.recordBtn);
    }];
}


@end
