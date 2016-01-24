//
//  UIColor+UIColor_Hex.h
//  practice
//
//  Created by tarena on 15/7/25.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (UIColor_Hex)
+ (UIColor*)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*)colorWithHex:(NSInteger)hexValue;
+ (NSString *)hexFromUIColor:(UIColor*)color;


@end
