//
//  NSString+ZZHeight.m
//  ZZHandyCategory
//
//  Created by donews on 2018/7/20.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "NSString+ZZHeight.h"

#define PLACEFODERSTRING (NSString *)@"占位"

@implementation NSString (ZZHeight)

- (CGFloat)zz_heightWithFont:(UIFont *)font width:(CGFloat)width{
    return    [self zz_heightWithFont:font width:width maxHeight:CGFLOAT_MAX];
}


/**
 指定宽度 计算文字高度设置最大值
 
 
 @param font 字体
 @param width 宽度
 @param MaxHeight 最大高度
 @return 高度
 */
    
- (CGFloat)zz_heightWithFont:(UIFont *)font width:(CGFloat)width maxHeight:(CGFloat)maxHeight {
    
    CGSize constrainSize = CGSizeMake(width, maxHeight);
    CGRect rect = [self boundingRectWithSize:constrainSize
                                     options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                  attributes:@{NSFontAttributeName:font}
                                     context:nil];
    return rect.size.height;

}

- (CGFloat)zz_widthWith:(UIFont *)font height:(CGFloat)height {
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    CGFloat width = [self sizeWithFont:font constrainedToSize:CGSizeMake(MAXFLOAT,height) lineBreakMode:NSLineBreakByCharWrapping].width;
#pragma clang diagnostic pop
    return width;
}

- (CGSize)stringSizeWithFont:(UIFont *)font size:(CGSize)size
{
    NSDictionary *dic = @{NSFontAttributeName:font};
    return  [self boundingRectWithSize:size
                               options:NSStringDrawingUsesLineFragmentOrigin
                            attributes:dic
                               context:nil].size;
}
    
- (BOOL)zz_isSingleLineForLabel:(UILabel *)label {
    if ([self stringSizeWithFont:label.font size:CGSizeMake(label.frame.size.width, MAXFLOAT)].height > [PLACEFODERSTRING stringSizeWithFont:label.font size:CGSizeMake(label.frame.size.width, MAXFLOAT)].height) {
        return NO;
    }
    return YES;
}
    


@end
