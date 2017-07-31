//
//  XSLoginVC.m
//  LoveJX
//
//  Created by xueshan on 17/7/31.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "XSLoginVC.h"
#import "RCAnimatedImagesView.h"
#import "XSLoginView.h"

@interface XSLoginVC ()<UITextFieldDelegate,RCAnimatedImagesViewDelegate>

@property(strong, nonatomic)RCAnimatedImagesView *animatedImagesView;


@end

@implementation XSLoginVC
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.animatedImagesView stopAnimating];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.animatedImagesView startAnimating];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    //添加动态图
    self.animatedImagesView = [[RCAnimatedImagesView alloc]
                               initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,
                                                        self.view.bounds.size.height)];
    [self.view addSubview:self.animatedImagesView];
    self.animatedImagesView.delegate = self;


}
- (NSUInteger)animatedImagesNumberOfImages:(RCAnimatedImagesView *)animatedImagesView {
    return 2;
}

- (UIImage *)animatedImagesView:(RCAnimatedImagesView *)animatedImagesView
                   imageAtIndex:(NSUInteger)index {
    return [UIImage imageNamed:@"login_background.png"];
}



@end
