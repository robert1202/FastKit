//
//  UIScrollView+FastKit.m
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import "UIScrollView+FastKit.h"

@implementation UIScrollView (FastKit)

+ (UIScrollView *)noIndicatorViewWithFrame:(CGRect)frame {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:frame];
    [scrollView setClearColor];
    return scrollView;
}

@end