//
//  UIButton+Block.h
//  Dfbb1124
//
//  Created by kris on 2022/11/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef void (^ButtonActionBlock)(UIButton *button);


@interface UIButton (Block)

+ (UIButton *)jp_createNormalButtonWithText:(NSString *)text color:(UIColor *)color fontSize:(NSString *)fontSize actionBlock:(ButtonActionBlock)actionBlock;
+ (UIButton *)jp_createButtonWithTitle:(NSString *)title actionBlock:(ButtonActionBlock)actionBlock;
+ (UIButton *)jp_createButtonWithImageName:(NSString *)imageName actionBlock:(ButtonActionBlock)actionBlock;
- (void)jp_layout;

@end

NS_ASSUME_NONNULL_END
