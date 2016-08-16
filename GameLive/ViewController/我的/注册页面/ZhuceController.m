//
//  ZhuceController.m
//  GameLive
//
//  Created by 橘子 on 16/8/9.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ZhuceController.h"
#import "TRFactory.h"
#import "DengluController.h"
//#import <SMS_SDK/SMSSDK.h>

@interface ZhuceController ()
@property (weak, nonatomic) IBOutlet UITextField *IDTF;
@property (weak, nonatomic) IBOutlet UITextField *PwdTF;
@property (weak, nonatomic) IBOutlet UITextField *APwdTF;
@property (weak, nonatomic) IBOutlet UILabel *IDLB;
@property (weak, nonatomic) IBOutlet UILabel *nilLB;
@property (weak, nonatomic) IBOutlet UILabel *yizhiLB;
@property (weak, nonatomic) IBOutlet UITextField *codeTF;

@end

@implementation ZhuceController

- (IBAction)getValidCode:(id)sender {
    [self.view endEditing:YES];
//    if (_IDTF.text.length != 11) {
//        [self.view showWarning:@"请输入11位手机号"];
//        return;
//    }
//    [SMSSDK getVerificationCodeByMethod:SMSGetCodeMethodSMS phoneNumber:_IDTF.text zone:@"86" customIdentifier:nil result:^(NSError *error) {
//        NSLog(@"%@", error ? error : @"短信验证码已发送");
//    }];
    NSLog(@"等待验证码");
}
//
- (IBAction)registerID:(id)sender {
    [self.view endEditing:YES];
//    if (_IDTF.text.length == 11 && _PwdTF.text.length > 0 && _APwdTF.text.length > 0) {
//        [self.view showHUD];
//        
//        [SMSSDK commitVerificationCode:_codeTF.text phoneNumber:_IDTF.text zone:@"86" result:^(NSError *error) {
//            if (error) {
//                [self.view showWarning:error.description];
//            }else{
//                //向环信服务器注册账号
//                dispatch_async(dispatch_get_global_queue(0, 0), ^{
//                    EMError *error = [[EMClient sharedClient] registerWithUsername:_IDTF.text password:_codeTF.text.md5String];
//                    dispatch_async(dispatch_get_main_queue(), ^{
//                        if (error) {
//                            [self.view showWarning:error.errorDescription];
//                        }else{
//                            [self.view.window showWarning:@"注册成功"];
//                            //返回到登录页面
//                            [self.navigationController popViewControllerAnimated:YES];
//                        }
//                    });
//                });
//            }
//            //NSLog(@"%@", error ? error : @"验证成功");
//        }];
//    }else{
//        [self.view showWarning:@"请准确填写所有信息"];
//    }
//}


//- (IBAction)mashangdenglu:(id)sender {
//    NSLog(@"登录");
//    [self.view endEditing:YES];
//    //NSLog(@"%@ , %@", _phoneTF.text, _pwdTF.text);
//    [[NSOperationQueue new] addOperationWithBlock:^{
//        BOOL isAutoLogin = [EMClient sharedClient].options.isAutoLogin;
//        if (!isAutoLogin) {
//            EMError *error = [[EMClient sharedClient] loginWithUsername:_IDTF.text password:_PwdTF.text.md5String];
//            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//                if (error) {
//                    [self.view showWarning:error.errorDescription];
//                }else{
//                    [[EMClient sharedClient].options setIsAutoLogin:YES];
//                    kSavePwd(_PwdTF.text.md5String);
//                    //发送登录状态变化通知
//                    [[NSNotificationCenter defaultCenter] postNotificationName:kLoginStateChangedNotification object:nil];
//                    [self.view.window showWarning:@"登录成功"];
//                    [self dismissViewControllerAnimated:YES completion:nil];
//                }
//            }];
//        }
//    }];

    NSLog(@"注册");
}
- (IBAction)mashangdenglu:(id)sender {
    NSLog(@"结束注册并登录");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self.bb  isEqualToString:@"1"]) {
        [TRFactory addBackItemForVC:self];
        self.navigationController.navigationBarHidden=NO;
    }
    if ([self.bb isEqualToString:@"2"]) {
       [TRFactory addBackRightItemForVC:self];

    }
    self.navigationItem.title = @"注册";
    self.navigationController.navigationBarHidden=NO;

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
