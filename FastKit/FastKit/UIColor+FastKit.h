//
//  UIColor+FastKit.h
//  FastKit
//
//  Created by JianYe on 13-7-8.
//  Copyright (c) 2013年 YingYing. All rights reserved.
//

#define ColorWithRGB(_red,_green,_blue,_alpha) [UIColor colorWithRed:_red/255.0 green:_green/255.0 blue:_blue/255.0 alpha:_alpha]
#define ColorWithWhite(_white,_alpha)   [UIColor colorWithWhite:_white alpha:_alpha]
#define ColorWithWebColor(_int)         [UIColor colorWithHex:_int]

#import <UIKit/UIKit.h>

@interface UIColor (FastKit)
+ (UIColor*)colorWithHex:(int)hex;
@end
