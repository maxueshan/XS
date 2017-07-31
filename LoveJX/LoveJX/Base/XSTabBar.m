//
//  XSTabBar.m
//  LoveJX
//
//  Created by xueshan on 17/7/31.
//  Copyright © 2017年 xueshan. All rights reserved.
//

#import "XSTabBar.h"

@interface XSTabBar()

@property(nonatomic,strong)UIButton *publishButton;
@property(nonatomic,strong)UIControl *previousClickedTabBarBtn;

@end

@implementation XSTabBar

- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat btnW = self.frame.size.width / (self.items.count + 1);
    CGFloat btnH = self.frame.size.height;
    CGFloat x = 0;
    int i = 0;
    for (UIControl *tabBarBtn in self.subviews) {
        if ([tabBarBtn isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 0 && _previousClickedTabBarBtn == nil) {
                _previousClickedTabBarBtn = tabBarBtn;
            }
            if (i == 2) {
                i += 1;
            }
            x = i*btnW;
            tabBarBtn.frame = CGRectMake(x, 0, btnW, btnH);
            i++;
            
        }
        
    }
    
//    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    self.publishButton.frame = CGRectMake(2 * btnW, -40, btnW, btnH + 30);
}

- (UIButton *)publishButton{
    if (!_publishButton) {
        _publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon-1"] forState:UIControlStateNormal];
        [_publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon-1"] forState:UIControlStateHighlighted];
//        [_publishButton sizeToFit];
        [_publishButton addTarget:self action:@selector(publichBtnClicked) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_publishButton];
//        _publishButton.backgroundColor = [UIColor lightGrayColor];
        
    }
    return _publishButton;
}

- (void)publichBtnClicked{
    NSLog(@"publichBtnClicked");
    
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *result = [super hitTest:point withEvent:event];

    if (self.hidden || self.alpha <= 0.01f || self.userInteractionEnabled == NO) {
        return nil;
    }
   
    //将 btn 上的点转换到 self 上
    CGPoint buttonPoint = [self.publishButton convertPoint:point fromView:self];
    
    // 判断点在不在按钮上
    if ([self.publishButton pointInside:buttonPoint withEvent:event]) {
        
        return self.publishButton;
    }

    return result;
}





@end














