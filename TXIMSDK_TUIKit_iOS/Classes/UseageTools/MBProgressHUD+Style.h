//
//  MBProgressHUD+Style.h
//  Dfbb1124
//
//  Created by Kris.JP on 2022/11/28.
//

#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (Style)

+ (void)jp_autoHideWithSeconds:(NSInteger)sec Block:(void(^)(void))block;


@end

NS_ASSUME_NONNULL_END
