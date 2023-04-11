//
//  UIImage+Utils.m
//  YHYD
//
//  Created by edison_wang on 2021/8/19.
//

#import "UIImage+Utils.h"

@implementation UIImage (Utils)



+ (NSString *)jp_base64StrWithImage:(UIImage *)image
{
    NSData * imageData = UIImageJPEGRepresentation(image, 1);
    NSString * base64Str = [imageData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return base64Str;
}

+ (UIImage *)jp_imageWithBase64Str:(NSString *)baseStr
{
    NSData *imageData = [[NSData alloc] initWithBase64EncodedString:baseStr options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [UIImage imageWithData:imageData];
}
@end
