//
//  NavShowViewController.m
//  CommonNavigationController
//
//  Created by 赵赫 on 2017/4/24.
//  Copyright © 2017年 赵赫. All rights reserved.
//

#import "NavShowViewController.h"
#import "NavHideViewController.h"

@interface NavShowViewController ()

@end

@implementation NavShowViewController

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
