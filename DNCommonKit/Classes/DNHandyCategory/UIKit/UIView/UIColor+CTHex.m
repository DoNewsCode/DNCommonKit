//
//  UIColor+CTHex.m
//  DNCommonKit
//
//  Created by Ming on 2019/4/11.
//

#import "UIColor+CTHex.h"

#import "NSString+CTAdd.h"

@implementation UIColor (CTHex)

// 透明度固定为1，以0x开头的十六进制转换成的颜色
+ (UIColor *)ct_colorWithHex:(long)hexColor{
    return [UIColor ct_colorWithHex:hexColor alpha:1.];
}

// 0x开头的十六进制转换成的颜色,透明度可调整
+ (UIColor *)ct_colorWithHex:(long)hexColor alpha:(float)opacity {
    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
    float blue = ((float)(hexColor & 0xFF))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
}

// 颜色转换三：iOS中十六进制的颜色（以#开头）转换为UIColor
+ (UIColor *)ct_colorWithHexString: (NSString *)color {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    // 判断前缀并剪切掉
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //R、G、B
    NSString *rString = [cString ct_substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString ct_substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString ct_substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

// 随机颜色
+ (UIColor *)ct_randomColor {
    NSInteger aRedValue = arc4random() % 255;
    NSInteger aGreenValue =arc4random() % 255;
    NSInteger aBlueValue =arc4random() % 255;
    UIColor *randColor = [UIColor colorWithRed:aRedValue / 255.0f green:aGreenValue / 255.0f blue:aBlueValue / 255.0f alpha:1.0f];
    return randColor;
}

@end
