



#define FastUIKit_IS_IOS_7 ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0)?YES:NO
#define FastUIKit_IS_Retina (([[UIScreen mainScreen]scale]>1)?YES:NO)

#ifndef __IPHONE_5_0
#warning "This project uses features only available in iOS SDK 5.0 and later."
#endif

#ifdef __OBJC__
    #import "NSObject+AssociatedObjects.h"
    #import "UIView+FastKit.h"
    #import "UILabel+FastKit.h"
    #import "UIImageView+FastKit.h"
    #import "UIButton+FastKit.h"
    #import "UIControl+FastKit.h"
    #import "UIColor+FastKit.h"
    #import "UIImage+FastKit.h"
    #import "UIScrollView+FastKit.h"
#endif

