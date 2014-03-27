//
//  UIButton+FastKit.m
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import "UIButton+FastKit.h"

@implementation UIButton (FastKit)

+ (UIButton *)customButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setClearColor];
    return button;
}

+ (UIButton *)customButtonWithFrame:(CGRect)frame {
    UIButton *button = [UIButton customButton];
    button.frame = frame;
    return button;
}

- (void)setNormalImage:(UIImage *)image {
    [self setImage:image forState:UIControlStateNormal];
}

- (void)setSelectImage:(UIImage *)image {
    [self setImage:image forState:UIControlStateHighlighted];
    [self setImage:image forState:UIControlStateSelected];
}

- (void)setDisabledImage:(UIImage *)image {
    [self setImage:image forState:UIControlStateDisabled];
}

- (void)setAllImage:(UIImage *)image {
    [self setNormalImage:image];
    [self setSelectImage:image];
}

- (void)setNormalBackgroundImage:(UIImage *)image {
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

- (void)setSelectBackgroundImage:(UIImage *)image {
    [self setBackgroundImage:image forState:UIControlStateHighlighted];
    [self setBackgroundImage:image forState:UIControlStateSelected];
}

- (void)setDisabledBackgroundImage:(UIImage *)image {
    [self setBackgroundImage:image forState:UIControlStateDisabled];
}

- (void)setAllBackgroundImage:(UIImage *)image {
    [self setNormalBackgroundImage:image];
    [self setSelectBackgroundImage:image];
}

- (void)setNormalImageName:(NSString *)imageName {
    [self setNormalImage:[UIImage imageNamed:imageName]];
}

- (void)setSelectImageName:(NSString *)imageName {
    [self setSelectImage:[UIImage imageNamed:imageName]];
}

- (void)setDisabledImageName:(NSString *)imageName {
    [self setDisabledImage:[UIImage imageNamed:imageName]];
}

- (void)setAllImageName:(NSString *)imageName {
    [self setNormalImageName:imageName];
    [self setSelectImageName:imageName];
}

- (void)setNormalBackgroundImageName:(NSString *)imageName {
    [self setSelectBackgroundImage:[UIImage imageNamed:imageName]];
}

- (void)setSelectBackgroundImageName:(NSString *)imageName {
    [self setSelectBackgroundImage:[UIImage imageNamed:imageName]];
}

- (void)setDisabledBackgroundImageName:(NSString *)imageName {
    [self setDisabledBackgroundImage:[UIImage imageNamed:imageName]];
}

- (void)setAllBackgroundImageName:(NSString *)imageName {
    [self setAllBackgroundImage:[UIImage imageNamed:imageName]];
}

- (void)setNormalTitle:(NSString *)title {
    [self setTitle:title forState:UIControlStateNormal];
}

- (void)setSelectTitle:(NSString *)title {
    [self setTitle:title forState:UIControlStateHighlighted];
    [self setTitle:title forState:UIControlStateSelected];
}

- (void)setDisabledTitle:(NSString *)title {
    [self setTitle:title forState:UIControlStateDisabled];
}

- (void)setAllTitle:(NSString *)title {
    [self setNormalTitle:title];
    [self setSelectTitle:title];
}

- (void)setTitleFont:(UIFont *)font {
    [self.titleLabel setFont:font];
}

- (void)setTitleFontSize:(CGFloat)fontSize {
    [self.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
}

- (void)setTitleBoldFontSize:(CGFloat)fontSize {
    [self.titleLabel setFont:[UIFont boldSystemFontOfSize:fontSize]];
}

- (void)setNormalTitleColor:(UIColor *)color {
    [self setTitleColor:color forState:UIControlStateNormal];
}

- (void)setSelectTitleColor:(UIColor *)color {
    [self setTitleColor:color forState:UIControlStateHighlighted];
    [self setTitleColor:color forState:UIControlStateSelected];
}

- (void)setDisabledTitleColor:(UIColor *)color {
    [self setTitleColor:color forState:UIControlStateDisabled];
}

- (void)setAllTitleColor:(UIColor *)color {
    [self setNormalTitleColor:color];
    [self setSelectTitleColor:color];
}


@end
