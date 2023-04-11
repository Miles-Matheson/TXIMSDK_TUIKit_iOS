//
//  UIButton+Block.m
//  Dfbb1124
//
//  Created by kris on 2022/11/25.
//

#import "UIButton+Block.h"
#import "UIColor+HexColor.h"

#import<objc/message.h>
static const char *key = "actionKey";
#define SpecColorFromHex(hex)                   [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]


@implementation UIButton (Block)

+ (UIButton *)jp_createButtonWithImageName:(NSString *)imageName actionBlock:(ButtonActionBlock)actionBlock
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.imageView.contentMode = UIViewContentModeScaleAspectFill;
    [button setTitle:@"" forState:0];
    [button setImage:[UIImage imageNamed:imageName] forState:0];
    [button addTarget:button action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(button, key, actionBlock, OBJC_ASSOCIATION_COPY);
   return button;
}

+ (UIButton *)jp_createNormalButtonWithText:(NSString *)text color:(UIColor *)color fontSize:(NSString *)fontSize actionBlock:(ButtonActionBlock)actionBlock
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.imageView.contentMode = UIViewContentModeScaleAspectFill;
    [button setTitle:text forState:0];
    [button setTitleColor:color forState:0];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize.floatValue weight:UIFontWeightSemibold];
    [button addTarget:button action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(button, key, actionBlock, OBJC_ASSOCIATION_COPY);
   return button;
}

+ (UIButton *)jp_createButtonWithTitle:(NSString *)title actionBlock:(ButtonActionBlock)actionBlock
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.imageView.contentMode = UIViewContentModeScaleAspectFill;
    [button setTitle:title forState:0];
    [button setTitleColor:SpecColorFromHex(0xFFFFFF) forState:0];
    button.titleLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightSemibold];
    [button addTarget:button action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(button, key, actionBlock, OBJC_ASSOCIATION_COPY);
   return button;
}

- (void)buttonClick:(UIButton *)button {
    ButtonActionBlock actionBlock1 = objc_getAssociatedObject(button, key);
    if (actionBlock1) {
        actionBlock1(button);
    }
}

- (void)jp_layout
{
    [self layoutIfNeeded];
    self.layer.cornerRadius = 7;
    [self setBackgroundColor:[UIColor commonGradientColorWithSize:self.bounds.size]];
}

@end
