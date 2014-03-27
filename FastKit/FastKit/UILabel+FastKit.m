//
//  UILabel+FastKit.m
//  FastKit
//
//  Created by JianYe on 14-3-26.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import "UILabel+FastKit.h"

@implementation UILabel (FastKit)

+ (UILabel *)label {
    return [[UILabel alloc] init];
}

+ (UILabel *)labelWithFrame:(CGRect)frame {
    return [[UILabel alloc] initWithFrame:frame];
}

+ (UILabel *)clearLabel {
    UILabel *label = [UILabel label];
    [label setClearColor];
    return label;
}

+ (UILabel *)clearLabelWithFrame:(CGRect)frame {
    UILabel *label = [UILabel labelWithFrame:frame];
    [label setClearColor];
    return label;
}

+ (UILabel *)clearLabelWithFrame:(CGRect)frame fontSize:(CGFloat)fontSize {
    UILabel *label = [UILabel clearLabelWithFrame:frame];
    [label setFontSize:fontSize];
    return label;
}

+ (UILabel *)labelWithColor:(UIColor *)color {
    UILabel *label = [UILabel label];
    [label setColor:color];
    return label;
}

- (void)setFontSize:(CGFloat)fontSize {
    [self setFont:[UIFont systemFontOfSize:fontSize]];
}

- (void)setBoldFontSize:(CGFloat)fontSize {
    [self setFont:[UIFont boldSystemFontOfSize:fontSize]];
}

- (void)setSizeToFitText {
    self.numberOfLines = 0;
    self.lineBreakMode = NSLineBreakByCharWrapping;
}

- (void)sizeToFitWidthWithText:(NSString *)text {
    [self setSizeToFitText];
    self.width = [self sizeWithText:text].width + 2;
}

- (void)sizeToFitHeightWithText:(NSString *)text {
    [self setSizeToFitText];
    self.height = [self sizeWithText:text].height + 2;
}

- (CGSize)sizeWithText:(NSString *)text {
    CGSize stringSize;
    if (FastUIKit_IS_IOS_7) {
        NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName,nil];
        stringSize =[text boundingRectWithSize:CGSizeMake(MAXFLOAT, self.height) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:tdic context:nil].size;
    }else
    {
        if ([text respondsToSelector:@selector(sizeWithFont:constrainedToSize:lineBreakMode:)]) {
            stringSize  = [text sizeWithFont:self.font constrainedToSize:CGSizeMake(MAXFLOAT, self.height) lineBreakMode:self.lineBreakMode];
        }
    }
    return stringSize;
}

@end
