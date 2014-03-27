FastKit
=======

Make  coding more convenient and  quickly,also reduce the amount of code.



###     creat view like :
        + (UIView *)view;
        + (UIView *)viewWithFrame:(CGRect)frame;
        + (UIView *)clearView;
        + (UIView *)clearViewWithFrame:(CGRect)frame;
        + (UIView *)viewWithColor:(UIColor *)color frame:(CGRect)frame;
        + (UIView *)viewWithColor:(UIColor *)color;
        - (void)setClearColor;//background color
        - (void)setColor:(UIColor *)color;

        + (UILabel *)label;
        + (UILabel *)labelWithFrame:(CGRect)frame;
        + (UILabel *)clearLabel;
        + (UILabel *)clearLabelWithFrame:(CGRect)frame;
        + (UILabel *)clearLabelWithFrame:(CGRect)frame fontSize:(CGFloat)fontSize;
        + (UILabel *)labelWithColor:(UIColor *)color;
        
        + (UIControl *)clearControlWithFrame:(CGRect)frame;
        - (void)addNormalActionWithBlock:(FastControlAction)block;
        - (void)addActoion:(FastControlAction)action events:(UIControlEvents)events;
        - (void)removeActionWithEvent:(UIControlEvents)events;
        - (void)setIndexPath:(NSIndexPath *)indexPath;
        - (NSIndexPath *)indexPath;

###     example:
        UILabel *label = [[UILabel alloc] initWithFrame:aFrame]:
        label.background = [UIColor clearColor];
        label.font = [UIFont systemFontWithSize:aFontSize];
###     replace：
        UILabel *label = [UILabel clearLabelWithFrame:aFrame fontSize:aFontSize];
    
