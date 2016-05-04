//
//  ViewController.m
//  UI TestsDemo
//
//  Created by MAC on 16/5/4.
//  Copyright © 2016年 MAC. All rights reserved.
//

#import "ViewController.h"
#import "Vc2.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *pwTF;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)loginBtnAction:(UIButton *)sender {
    
    if ([self.nameTF.text isEqualToString:@"123"] && [self.pwTF.text isEqualToString:@"123"]) {
        NSLog(@"Login Success");
        Vc2 * vc = [[Vc2 alloc] init];
        [self presentViewController:vc animated:YES completion:^{
            
        }];
    } else{
        UIAlertController * alertVc = [UIAlertController alertControllerWithTitle:@"提示框" message:@"登录失败，请重新登录" preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:alertVc animated:YES completion:^{
            
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
