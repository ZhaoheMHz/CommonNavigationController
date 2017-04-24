//
//  NavHideViewController.m
//  CommonNavigationController
//
//  Created by 赵赫 on 2017/4/24.
//  Copyright © 2017年 赵赫. All rights reserved.
//

#import "NavHideViewController.h"
#import "NavShowViewController.h"

@interface NavHideViewController ()

@end

@implementation NavHideViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (IBAction)navShowVC:(id)sender {
    [self.navigationController pushViewController:[[NavShowViewController alloc] init] animated:YES];
}

- (IBAction)navHideVC:(id)sender {
    [self.navigationController pushViewController:[[NavHideViewController alloc] init] animated:YES];
}

- (IBAction)dismissAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
