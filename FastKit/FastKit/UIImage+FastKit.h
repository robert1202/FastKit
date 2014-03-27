//
//  UIImage+FastKit.h
//  FastKit
//
//  Created by JianYe on 14-3-14.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FastKit)

+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageWithColor:(UIColor *)color borderColor:(UIColor *)borderColor borderWith:(CGFloat)borderWith;//1 birder with = 1 pixel

+ (UIImage *)imageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius;

+ (UIImage *)imageWithColor:(UIColor *)color borderColor:(UIColor *)borderColor borderWith:(CGFloat)borderWith cornerRadius:(CGFloat)cornerRadius;

+ (UIImage *)circularImageWithColor:(UIColor *)color size:(CGSize)size;

+ (UIImage *)imageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius corners:(UIRectCorner)corners;

+ (UIImage *)imageWithColor:(UIColor *)color borderColor:(UIColor *)borderColor borderWith:(CGFloat)borderWith cornerRadius:(CGFloat)cornerRadius corners:(UIRectCorner)corners;
@end
