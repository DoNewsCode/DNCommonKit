//
//  UIScreen+CTLayout.m
//  DNCommonKit
//
//  Created by Ming on 2020/10/22.
//

#import "UIScreen+CTLayout.h"

@implementation UIScreen (CTLayout)

// iPhoneX、iPhoneXR、iPhoneXs、iPhoneXs Max等
// 判断刘海屏，返回YES表示是刘海屏
- (BOOL)ct_isNotchScreen {
    
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        return NO;
    }
    
    CGSize size = self.bounds.size;
    NSInteger notchValue = size.width / size.height * 100;
    
    if (216 == notchValue || 46 == notchValue) {
        return YES;
    }
    
    return NO;
}

@end
