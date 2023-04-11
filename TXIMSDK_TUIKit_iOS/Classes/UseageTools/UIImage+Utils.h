//
//  UIImage+Utils.h
//  YHYD
//
//  Created by edison_wang on 2021/8/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Utils)


+ (NSString *)jp_base64StrWithImage:(UIImage *)image;
+ (UIImage *)jp_imageWithBase64Str:(NSString *)baseStr;
@end

NS_ASSUME_NONNULL_END
