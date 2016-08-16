//
//  MyController.m
//  GameLive
//
//  Created by 橘子 on 16/8/8.
//  Copyright © 2016年 tarena. All rights reserved.
//
#import "MyController.h"
#import "MineHeaderView.h"
#import "MineTableViewCell.h"
#import "LoginViewController.h"

@interface MyController ()<UIScrollViewDelegate>
@property(nonatomic,strong)MineHeaderView* headerView;

@end

@implementation MyController

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableHeaderView = self.headerView;
    [self.tableView registerClass:[MineTableViewCell class] forCellReuseIdentifier:@"Cell"];
}


-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.title = @"我";
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    }
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MineTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (indexPath.section == 0) {
        
        if (indexPath.row == 0) {
            cell.iconImagerView.image = [UIImage imageNamed:@"开播提醒@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.15609.000.00."];
            
//            CGSize itemSize = CGSizeMake(10, 10);
//            UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
//            CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
//            [cell.iconImagerView.image drawInRect:imageRect];
//            cell.iconImagerView.image = UIGraphicsGetImageFromCurrentImageContext();
//            UIGraphicsEndImageContext();
//            
            cell.lable.text = @"开播提醒";
            cell.datailLable.text = @"";
        }
        if (indexPath.row == 1) {
            cell.iconImagerView.image = [UIImage imageNamed:@"icon_tike@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.38140.000.00."];
            cell.lable.text = @"票务查询";
            cell.datailLable.text = @"";
        }
        if (indexPath.row == 2) {
            cell.iconImagerView.image = [UIImage imageNamed:@"系统设置@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.37994.000.00."];
            cell.lable.text = @"设置选项";
            cell.datailLable.text = @"";
        }
        return cell;
    }
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            cell.iconImagerView.image = [UIImage imageNamed:@"手游中心@3x.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.34751.000.00."];
            cell.lable.text = @"手游中心";
            cell.datailLable.text = @"玩游戏领红包";
            return cell;
        }
    }
    return cell;
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (scrollView.contentOffset.y < 0) {
        scrollView.contentOffset = CGPointZero;
    }
}

-(MineHeaderView *)headerView{
    if (!_headerView) {
        _headerView = [[MineHeaderView alloc]initWithFrame:CGRectMake(0, 0, kScreenW, 330)];
    }
    return _headerView;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    //很多同学习惯这样写
    //    [self.navigationController setNavigationBarHidden:YES animated:YES];//带动画结果在切换tabBar的时候viewController会有闪动的效果不建议这样写
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            LoginViewController* vc = [[LoginViewController alloc]initWithStyle:UITableViewStyleGrouped];
            //            UINavigationController* navi = [[UINavigationController alloc]initWithRootViewController:vc];
            [self.navigationController pushViewController:vc animated:YES];
        }if (indexPath.row == 1) {
            //            TRontroller* tr = [[TRontroller alloc]init];
            //            navi2 = [[UINavigationController alloc]initWithRootViewController:tr];
            //            [self.navigationController pushViewController:tr animated:YES];
        }
        
    }
}



@end
