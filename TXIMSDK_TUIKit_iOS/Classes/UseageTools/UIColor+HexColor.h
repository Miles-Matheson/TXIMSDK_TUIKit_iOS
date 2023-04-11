//
//  UIColor+HexColor.h
//  LZDividingRuler
//
//  Created by liuzhixiong on 2018/9/3.
//  Copyright © 2018年 liuzhixiong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, GradientColorDirection) {
    GradientColorDirectionLevel,
    GradientColorDirectionVertical,
    GradientColorDirectionDownDiagonalLine,
    GradientColorDirectionUpwardDiagonalLine, 
};

@interface UIColor (HexColor)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


/// 设置渐变色
/// @param size 需要渐变的大小
/// @param direction 渐变的方向
/// @param startcolor 渐变的开始颜色
/// @param endColor 渐变的结束颜色
+ (instancetype)gradientColorWithSize:(CGSize)size
                            direction:(GradientColorDirection)direction
                           startColor:(UIColor *)startcolor
                             endColor:(UIColor *)endColor;

+ (UIColor *)commonGradientColorWithSize:(CGSize)size;

@end
