//
//  NSString+TGAdd.m
//  TGBus
//
//  Created by donews on 2018/8/10.
//  Copyright © 2018年 Jamie. All rights reserved.
//

#import "NSString+TGAdd.h"

@implementation NSString (TGAdd)

+ (instancetype)tg_commentCountStringWithCount:(NSUInteger)count {
    float temp = count / 1000.0;
    if (temp >= 1) {
        return [NSString stringWithFormat:@"%.1fk",temp];
    }
    return [NSString stringWithFormat:@"%lu",(unsigned long)count];
}

- (instancetype)dn_substringWithRange:(NSRange)range{
#ifdef DEBUG
    
    if (self.length >=(range.location + range.length)) {
        
        return [self substringWithRange:range];
        
    }
    return nil;
#elif
    return [self substringWithRange:range];
#endif
}

@end
