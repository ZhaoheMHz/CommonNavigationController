//
//  NavFakeViewController.m
//  CommonNavigationController
//
//  Created by 赵赫 on 2017/4/24.
//  Copyright © 2017年 赵赫. All rights reserved.
//

#import "NavFakeViewController.h"

@interface NavFakeViewController ()

@property (nonatomic, strong) UINavigationController *fakeNav;
@property (nonatomic, strong) UIViewController *fakeSelf;

@end

@implementation NavFakeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 创建假的导航、rootViewControler */
    self.fakeSelf = [[UIViewController alloc] init];
    self.fakeNav = [[UINavigationController alloc] initWithRootViewController:self.fakeSelf];
    
    /** 将假的导航栏放到当前页面上 */
    self.fakeNav.navigationBar.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64);
    [self.view addSubview:self.fakeNav.navigationBar];
    
    
    
    
    
    /** 配置一些按钮 */
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    button.backgroundColor = [UIColor redColor];
    // 这里一定要把按钮设置给self.fakeSelf
    self.fakeSelf.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    // 而要拿到navigationBar去做一些透明处理，一定要用下面的方式取出
//    self.fakeNav.navigationBar
}

- (IBAction)dismissAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
