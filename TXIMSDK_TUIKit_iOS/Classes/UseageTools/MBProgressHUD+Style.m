//
//  MBProgressHUD+Style.m
//  Dfbb1124
//
//  Created by Kris.JP on 2022/11/28.
//

#import "MBProgressHUD+Style.h"
#define SpecColorFromHex(hex)                   [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]
#define SpecColorFromHexAndAlpa(hex, value)                   [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:value]
#define SpecAppWindow    [UIApplication sharedApplication].windows.firstObject

@implementation MBProgressHUD (Style)
+ (void)jp_autoHideWithSeconds:(NSInteger)sec Block:(void (^)(void))block
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:SpecAppWindow animated:YES];
    hud.contentColor = SpecColorFromHex(0xFFFFFF);
    hud.bezelView.style =  MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = SpecColorFromHexAndAlpa(0x000000, 0.8);
    [hud showAnimated:YES];
    [hud hideAnimated:YES afterDelay:sec];
    [hud setCompletionBlock:^{
        if (block) {
            block();
        }
    }];
}
@end
