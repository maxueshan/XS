//
//  UIButton+FillColor.m
//  Fbox
//
//  Created by gopay on 15/9/8.
//  Copyright (c) 2015年 gopay. All rights reserved.
//

#import "UIButton+FillColor.h"

@implementation UIButton(FillColor)

- (void)setBackgroundColor:(UIColor *)backgroundColor  forState:(UIControlState)state {
    [self setBackgroundImage:[UIButton imageWithColor:backgroundColor] forState:state];
}

+ (UIImage *)imageWithColor:(UIColor *)color{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
