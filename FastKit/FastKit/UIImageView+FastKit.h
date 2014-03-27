//
//  UIImageView+FastKit.h
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (FastKit)

+ (UIImageView *)imageView;
+ (UIImageView *)imageViewWithFrame:(CGRect)frame;
+ (UIImageView *)imageViewWitImage:(UIImage *)image;
+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image;
+ (UIImageView *)imageViewWitImageName:(NSString *)imageName;
+ (UIImageView *)imageViewWithFrame:(CGRect)frame imageName:(NSString *)imageName;
- (void)setImageWithName:(NSString *)imageName;
- (void)setScaleToFit;

@end

