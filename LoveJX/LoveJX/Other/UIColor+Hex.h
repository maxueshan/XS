//
//  UIColor+Hex.h
//  quan
//
//  Created by xizi on 14-7-8.
//  Copyright (c) 2014年 xizi. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (Hex)
/**
 *  通过16进制获取Color
 *
 *  @param hex 16进制字符串不需要#
 *  
 *  @param alpha 透明度
 *
 *  @return Color
 */
+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha;

@end
