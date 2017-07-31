//
//  XSNavgigationController.m
//  LoveJX
//
//  Created by xueshan on 17/7/31.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "XSNavgigationController.h"

@interface XSNavgigationController ()

@end

@implementation XSNavgigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:animated];
    
    if (self.viewControllers.count > 0) {
        self.hidesBottomBarWhenPushed = YES;
    }
    
}






@end
