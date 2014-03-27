//
//  UIControl+FastKit.m
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import "UIControl+FastKit.h"

@interface UIControlEventsHandle : NSObject <NSCopying>
@property (nonatomic, copy) FastControlAction action;
@property (nonatomic) UIControlEvents controlEvents;

@end

@implementation UIControlEventsHandle

- (id)initWithHandler:(FastControlAction)action controlEvents:(UIControlEvents)controlEvents {
	if ((self = [super init])) {
		self.action = action;
		self.controlEvents = controlEvents;
	}
	return self;
}

- (id)copyWithZone:(NSZone *)zone {
	return [[UIControlEventsHandle alloc] initWithHandler:self.action controlEvents:self.controlEvents];
}

- (void)actionHandle:(id)sender {
    if (_action) _action(sender);
}

@end

@implementation UIControl (FastKit)

+ (UIControl *)clearControlWithFrame:(CGRect)frame {
    UIControl *control = [[UIControl alloc] initWithFrame:frame];
    [control setClearColor];
    return control;
}

- (void)addNormalTarget:(id)target action:(SEL)action {
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

- (void)addNormalActionWithBlock:(FastControlAction)block {
    [self addActoion:block events:UIControlEventTouchUpInside];
}

- (void)addActoion:(FastControlAction)action events:(UIControlEvents)events {
    if (!action) return;
    NSMutableDictionary *handles = [self associatedValueForKey:@"FastActionsEvents"];
    if (!handles) {
        handles = [NSMutableDictionary dictionary];
        [self associateValue:handles withKey:@"FastActionsEvents"];
    }
    [self removeActionWithEvent:events];
    
    UIControlEventsHandle *handle = [[UIControlEventsHandle alloc] initWithHandler:action controlEvents:events];
    [self addTarget:handle action:@selector(actionHandle:) forControlEvents:events];
    [handles setObject:handle forKey:@(events)];
}

- (void)removeActionWithEvent:(UIControlEvents)events {
    NSMutableDictionary *handles = [self associatedValueForKey:@"FastActionsEvents"];
	if (!handles) {
		handles = [NSMutableDictionary dictionary];
		[self associateValue:handles withKey:@"FastActionsEvents"];
	}
    UIControlEventsHandle *handle = [handles objectForKey:@(events)];
    if (handle) {
        [self removeTarget:handle action:@selector(actionHandle:) forControlEvents:events];
        [handles removeObjectForKey:@(events)];
    }
}

- (void)setIndexPath:(NSIndexPath *)indexPath {
    objc_setAssociatedObject(self, (__bridge const void *)(@"indexPath"), indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)indexPath {
    NSIndexPath  *indexPath = objc_getAssociatedObject(self, (__bridge const void *)(@"indexPath"));
    return indexPath;
}

@end