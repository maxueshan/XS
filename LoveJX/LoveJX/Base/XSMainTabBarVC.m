//
//  XSMainTabBarVC.m
//  LoveJX
//
//  Created by xueshan on 17/7/31.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "XSMainTabBarVC.h"
#import "XSNavgigationController.h"
#import "XSTabBar.h"


@interface XSMainTabBarVC ()

@end

@implementation XSMainTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupController];
    
    [self setupMyTabBar];
}

- (void)setupMyTabBar{
    XSTabBar *tabBar = [[XSTabBar alloc]init];
    [self setValue:tabBar forKey:@"tabBar"];
    
}


- (void)setupController{
    
    NSArray *array = @[//可以换成网络图片, 可以动态切换
                       @{@"clsName": @"XSHomeViewController", @"title": @"首页",@"imageName":@"tabBar_essence"},
                       @{@"clsName": @"XSActiveViewController", @"title": @"活动",@"imageName":@"tabBar_new"},
                       @{@"clsName": @"XSMessageViewController", @"title": @"消息",@"imageName":@"tabBar_friendTrends"},
                       @{@"clsName": @"XSProfileViewController", @"title": @"我",@"imageName":@"tabBar_me"}
                       
                       ];
    for (NSDictionary *dic in array) {
        [self setChildControllerWithDictionary:dic];
    }
    
}
- (void)setChildControllerWithDictionary:(NSDictionary *)dic{

    
    UIViewController *vc = [NSClassFromString(dic[@"clsName"]) new];
    vc.title = dic[@"title"];
    NSString *name1 = [NSString stringWithFormat:@"%@_icon",dic[@"imageName"]];
    NSString *name2 = [NSString stringWithFormat:@"%@_click_icon",dic[@"imageName"]];

    vc.tabBarItem.image = [[UIImage imageNamed:name1] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:name2] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor]} forState:UIControlStateNormal];
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateHighlighted];

    XSNavgigationController *nav = [[XSNavgigationController alloc]initWithRootViewController:vc];
    
    [self addChildViewController:nav];
}



@end










