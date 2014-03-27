//
//  UIImage+FastKit.m
//  FastKit
//
//  Created by JianYe on 14-3-14.
//  Copyright (c) 2014年 YingYing. All rights reserved.
//

#import "UIImage+FastKit.h"

@implementation UIImage (FastKit)

static CGFloat edgeSizeFromCornerRadius(CGFloat cornerRadius) {
    return cornerRadius * 2 + 1;
}

+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 5, 5);
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRect:rect];
    roundedRect.lineWidth = 0;
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    [color setFill];
    [roundedRect fill];
    [roundedRect stroke];
    [roundedRect addClip];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
}

+ (UIImage *)imageWithColor:(UIColor *)color
                borderColor:(UIColor *)borderColor
                 borderWith:(CGFloat)borderWith
{
    CGRect rect = CGRectMake(0,0, 10, 10);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShouldAntialias(context, YES);
    CGContextSetLineWidth(context, borderWith);
    
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRect:rect];
    CGContextSetFillColorWithColor(context, borderColor.CGColor);
    CGContextAddPath(context, roundedRect.CGPath);
    CGContextDrawPath(context, kCGPathFill);
    
    rect = CGRectMake(borderWith/2,borderWith/2, 10-borderWith, 10-borderWith);
    roundedRect = [UIBezierPath bezierPathWithRect:rect];
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextAddPath(context, roundedRect.CGPath);
    CGContextDrawPath(context, kCGPathFill);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(borderWith, borderWith, borderWith, borderWith)];
}

+ (UIImage *)imageWithColor:(UIColor *)color
               cornerRadius:(CGFloat)cornerRadius {
    CGFloat minEdgeSize = edgeSizeFromCornerRadius(cornerRadius);
    CGRect rect = CGRectMake(0, 0, minEdgeSize, minEdgeSize);
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    roundedRect.lineWidth = 0;
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    [color setFill];
    [roundedRect fill];
    [roundedRect stroke];
    [roundedRect addClip];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(cornerRadius, cornerRadius, cornerRadius, cornerRadius)];
}


+ (UIImage *)imageWithColor:(UIColor *)color
                borderColor:(UIColor *)borderColor
                 borderWith:(CGFloat)borderWith
               cornerRadius:(CGFloat)cornerRadius
{
    CGRect rect = CGRectMake(0,0, cornerRadius*2, cornerRadius*2);
    CGRect rect2 = CGRectMake(borderWith/2,borderWith/2, cornerRadius*2-borderWith, cornerRadius*2-borderWith);
    
    CGRect rect1 = CGRectMake(0,0, cornerRadius*2, cornerRadius*2);
    
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    UIGraphicsBeginImageContextWithOptions(rect1.size, NO, 0.0f);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShouldAntialias(context, YES);
    CGContextSetLineWidth(context, borderWith);
    CGContextSetFillColorWithColor(context, borderColor.CGColor);
    CGContextAddPath(context, roundedRect.CGPath);
    CGContextDrawPath(context, kCGPathFill);
    
    roundedRect = [UIBezierPath bezierPathWithRoundedRect:rect2 cornerRadius:cornerRadius];
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextAddPath(context, roundedRect.CGPath);
    CGContextDrawPath(context, kCGPathFill);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(cornerRadius, cornerRadius, cornerRadius, cornerRadius)];
}


+ (UIImage *) circularImageWithColor:(UIColor *)color
                                size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:rect];
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    [color setFill];
    [color setStroke];
    [circle addClip];
    [circle fill];
    [circle stroke];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (CGPathRef)createRoundedPath:(CGRect)rect
                    corners:(UIRectCorner)corners
                cornerRadius:(CGFloat)cornerRadius
{
    UIBezierPath *thePath = [UIBezierPath bezierPathWithRoundedRect:rect
                                                  byRoundingCorners:corners
                                                        cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    return thePath.CGPath;
}

+ (UIImage *)imageWithColor:(UIColor *)color
                borderColor:(UIColor *)borderColor
                 borderWith:(CGFloat)borderWith
               cornerRadius:(CGFloat)cornerRadius
                    corners:(UIRectCorner)corners
{
    CGRect rect = CGRectMake(0,0, cornerRadius*2, cornerRadius*2);
    CGRect rect1 = CGRectMake(borderWith/2,borderWith/2, cornerRadius*2-borderWith, cornerRadius*2-borderWith);
    
    
    UIBezierPath *roundedRect = [UIBezierPath
                                 bezierPathWithCGPath:[UIImage createRoundedPath:rect
                                                                         corners:corners
                                                                    cornerRadius:cornerRadius]];
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShouldAntialias(context, YES);
    CGContextSetLineWidth(context, borderWith);
    
    CGContextSetFillColorWithColor(context, borderColor.CGColor);
    CGContextAddPath(context, roundedRect.CGPath);
    CGContextDrawPath(context, kCGPathFill);
    
    roundedRect = [UIBezierPath
                   bezierPathWithCGPath:[UIImage createRoundedPath:rect1
                                                           corners:corners
                                                      cornerRadius:cornerRadius]];
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextAddPath(context, roundedRect.CGPath);
    CGContextDrawPath(context, kCGPathFill);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(cornerRadius, cornerRadius, cornerRadius, cornerRadius)];
}

+ (UIImage *)imageWithColor:(UIColor *)color
               cornerRadius:(CGFloat)cornerRadius
                    corners:(UIRectCorner)corners
{
    CGFloat minEdgeSize = edgeSizeFromCornerRadius(cornerRadius);
    CGRect rect = CGRectMake(0, 0, minEdgeSize, minEdgeSize);
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithCGPath:[UIImage createRoundedPath:rect corners:corners cornerRadius:cornerRadius]];
    roundedRect.lineWidth = 0;
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    [color setFill];
    [roundedRect fill];
    [roundedRect stroke];
    [roundedRect addClip];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(cornerRadius, cornerRadius, cornerRadius, cornerRadius)];
}
@end
