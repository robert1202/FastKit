//
//  UIColor+FastKit.m
//  FastKit
//
//  Created by JianYe on 13-7-8.
//  Copyright (c) 2013年 YingYing. All rights reserved.
//

#import "UIColor+FastKit.h"

@implementation UIColor (FastKit)

+ (UIColor*)colorWithHex:(int)hex {
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0
                           green:((float)((hex & 0xFF00) >> 8))/255.0
                            blue:((float)(hex & 0xFF))/255.0 alpha:1.0];
}
@end
