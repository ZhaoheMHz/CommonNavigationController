//
//  ViewController.m
//  CommonNavigationController
//
//  Created by 赵赫 on 2017/4/24.
//  Copyright © 2017年 赵赫. All rights reserved.
//

#import "ViewController.h"
#import "ZHNavigationViewController.h"
#import "NavShowViewController.h"
#import "NavFakeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

// 跳转到下个页面
- (IBAction)nextVC:(id)sender {
    NavShowViewController *showVC = [[NavShowViewController alloc] init];
    ZHNavigationViewController *nav = [[ZHNavigationViewController alloc] initWithRootViewController:showVC];
    [self presentViewController:nav animated:YES completion:nil];
}

- (IBAction)fakeVC:(id)sender {
    [self presentViewController:[[NavFakeViewController alloc] init] animated:YES completion:nil];
}

@end
