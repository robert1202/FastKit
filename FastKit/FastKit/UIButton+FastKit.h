//
//  UIButton+FastKit.h
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (FastKit)

+ (UIButton *)customButton;
+ (UIButton *)customButtonWithFrame:(CGRect)frame;

- (void)setNormalImage:(UIImage *)image;
- (void)setSelectImage:(UIImage *)image;//also hilight
- (void)setDisabledImage:(UIImage *)image;
- (void)setAllImage:(UIImage *)image;// except disabled

- (void)setNormalBackgroundImage:(UIImage *)image;
- (void)setSelectBackgroundImage:(UIImage *)image;
- (void)setDisabledBackgroundImage:(UIImage *)image;
- (void)setAllBackgroundImage:(UIImage *)image;

- (void)setNormalImageName:(NSString *)imageName;
- (void)setSelectImageName:(NSString *)imageName;
- (void)setDisabledImageName:(NSString *)imageName;
- (void)setAllImageName:(NSString *)imageName;

- (void)setNormalBackgroundImageName:(NSString *)imageName;
- (void)setSelectBackgroundImageName:(NSString *)imageName;
- (void)setDisabledBackgroundImageName:(NSString *)imageName;
- (void)setAllBackgroundImageName:(NSString *)imageName;

- (void)setNormalTitle:(NSString *)title;
- (void)setSelectTitle:(NSString *)title;
- (void)setDisabledTitle:(NSString *)title;
- (void)setAllTitle:(NSString *)title;

- (void)setTitleFont:(UIFont *)font;
- (void)setTitleFontSize:(CGFloat)fontSize;
- (void)setTitleBoldFontSize:(CGFloat)fontSize;

- (void)setNormalTitleColor:(UIColor *)color;
- (void)setSelectTitleColor:(UIColor *)color;
- (void)setDisabledTitleColor:(UIColor *)color;
- (void)setAllTitleColor:(UIColor *)color;

@end