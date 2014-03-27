//
//  UILabel+FastKit.h
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (FastKit)

+ (UILabel *)label;
+ (UILabel *)labelWithFrame:(CGRect)frame;
+ (UILabel *)clearLabel;
+ (UILabel *)clearLabelWithFrame:(CGRect)frame;
+ (UILabel *)clearLabelWithFrame:(CGRect)frame fontSize:(CGFloat)fontSize;
+ (UILabel *)labelWithColor:(UIColor *)color;
- (void)setFontSize:(CGFloat)fontSize;//system font
- (void)setBoldFontSize:(CGFloat)fontSize;//system font
- (void)setSizeToFitText;//lineNumber = 0， lineBreakMode = NSLineBreakByCharWrapping;
- (void)sizeToFitWidthWithText:(NSString *)text;//height be sure and to fit width
- (void)sizeToFitHeightWithText:(NSString *)text;//width be sure and to fit height

@end