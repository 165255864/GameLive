//
//  DengluController.m
//  GameLive
//
//  Created by 橘子 on 16/8/9.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "DengluController.h"
#import "TRFactory.h"
#import "ZhuceController.h"
@interface DengluController ()
@property (weak, nonatomic) IBOutlet UITextField *IDTF;
@property (weak, nonatomic) IBOutlet UITextField *PwdTF;

@end

@implementation DengluController
- (IBAction)Login:(id)sender {
    NSLog(@"登录");
}
//- (IBAction)login:(id)sender {
//    [self.view endEditing:YES];
//    [[NSOperationQueue new]addOperationWithBlock:^{
//        BOOL isAutoLogin = [EMClient sharedClient].options.isAutoLogin;
//        if (!isAutoLogin) {
//            EMError* error = [[EMClient sharedClient]loginWithUsername:_IDTF.text password:_PwdTF.text.md5String];
//            [[NSOperationQueue mainQueue]addOperationWithBlock:^{
//                if (error) {
//                    [self.view showWarning:error.errorDescription];
//                }else{
//                    [[EMClient sharedClient].options setIsAutoLogin:YES];
//                    kSavePwd(_PwdTF.text.md5String);
//                    //发送登录状态变化通知
//                    [[NSNotificationCenter defaultCenter]postNotificationName:kLoginStateChangedNotification object:nil];
//                    [self.view.window showWarning:@"登录成功"];
//                    [self dismissViewControllerAnimated:YES completion:nil];
//                }
//            }];
//        }
//    }];
//}
- (IBAction)kuaisuzhuce:(id)sender {
    ZhuceController* zhuce = [[ZhuceController alloc]init];
//    UINavigationController* navi = [[UINavigationController alloc]initWithRootViewController:zhuce];
    zhuce.bb = @"1";
    [self.navigationController pushViewController:zhuce animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [TRFactory addBackRightItemForVC:self];
    self.navigationItem.title = @"登录";
    
//    [UINavigationBar appearance].barTintColor = [UIColor whiteColor];
//    [UINavigationBar appearance].barStyle = UIBarStyleDefault;
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
