//
//  UIControl+FastKit.h
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^FastControlAction)(id obj);

@interface UIControl (FastKit)

+ (UIControl *)clearControlWithFrame:(CGRect)frame;
- (void)addNormalTarget:(id)target action:(SEL)action;
- (void)addNormalActionWithBlock:(FastControlAction)block;
- (void)addActoion:(FastControlAction)action events:(UIControlEvents)events;
- (void)removeActionWithEvent:(UIControlEvents)events;

- (void)setIndexPath:(NSIndexPath *)indexPath;
- (NSIndexPath *)indexPath;

@end