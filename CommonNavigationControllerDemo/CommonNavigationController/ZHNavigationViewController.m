//
//  ZHNavigationViewController.m
//  CommonNavigationController
//
//  Created by 赵赫 on 2017/4/24.
//  Copyright © 2017年 赵赫. All rights reserved.
//

#import "ZHNavigationViewController.h"
#import "NavHideViewController.h"

@interface ZHNavigationViewController () <UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@end

@implementation ZHNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self slideBack];
}

- (instancetype)init {
    if (self == [super init]) {
        self.delegate = self;
    }
    
    return self;
}

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    if (self == [super initWithRootViewController:rootViewController]) {
        self.delegate = self;
    }
    
    return self;
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 判断页面导航栏是否需要隐藏
    BOOL isNavHidden = NO;
    if ([viewController isKindOfClass:[NavHideViewController class]]) {
        isNavHidden = YES;
    }
    
    [self setNavigationBarHidden:isNavHidden animated:YES];
}



#pragma mark - 处理滑动返回
- (void)slideBack{
    self.interactivePopGestureRecognizer.delegate = self;
    
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (self.viewControllers.count >= 2) {
        return true;
    }
    
    return false;
}

//获取侧滑返回手势
//- (UIScreenEdgePanGestureRecognizer *)screenEdgePanGestureRecognizer
//{
//    UIScreenEdgePanGestureRecognizer *screenEdgePanGestureRecognizer = nil;
//    if (self.view.gestureRecognizers.count > 0)
//    {
//        for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers)
//        {
//            if ([recognizer isKindOfClass:[UIScreenEdgePanGestureRecognizer class]])
//            {
//                screenEdgePanGestureRecognizer = (UIScreenEdgePanGestureRecognizer *)recognizer;
//                break;
//            }
//        }
//    }
//    return screenEdgePanGestureRecognizer;
//}



@end
