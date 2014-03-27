//
//  UIImageView+FastKit.m
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import "UIImageView+FastKit.h"

@implementation UIImageView (FastKit)

+ (UIImageView *)imageView {
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor clearColor];
    return imageView;
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame {
    UIImageView *imageView = [UIImageView imageView];
    imageView.frame = frame;
    return imageView;
}

+ (UIImageView *)imageViewWitImage:(UIImage *)image {
    UIImageView *imageView = [UIImageView imageView];
    imageView.image = image;
    return imageView;
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image {
    UIImageView *imageView = [UIImageView imageViewWithFrame:frame];
    imageView.image = image;
    return imageView;
}

+ (UIImageView *)imageViewWitImageName:(NSString *)imageName {
    return [UIImageView imageViewWitImage:[UIImage imageNamed:imageName]];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame imageName:(NSString *)imageName {
    UIImageView *imageView = [UIImageView imageViewWithFrame:frame];
    imageView.image = [UIImage imageNamed:imageName];
    return imageView;
}
- (void)setImageWithName:(NSString *)imageName {
    self.image = [UIImage imageNamed:imageName];
}

- (void)setScaleToFit {
    self.contentMode = UIViewContentModeScaleToFill;
}

@end
