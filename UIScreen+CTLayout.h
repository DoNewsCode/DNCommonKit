//
//  UIScreen+CTLayout.h
//  DNCommonKit
//
//  Created by Ming on 2020/10/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScreen (CTLayout)


// iPhoneX、iPhoneXR、iPhoneXs、iPhoneXs Max等
// 判断刘海屏，返回YES表示是刘海屏
- (BOOL)ct_isNotchScreen;


@end

NS_ASSUME_NONNULL_END
