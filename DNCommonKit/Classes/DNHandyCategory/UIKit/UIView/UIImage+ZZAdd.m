//
//  UIImage+ZZAdd.m
//  TGBus
//
//  Created by donews on 2018/7/27.
//  Copyright © 2018年 Jamie. All rights reserved.
//

#import "UIImage+ZZAdd.h"

@implementation UIImage (ZZAdd)

+ (instancetype)zz_imageName:(NSString *)imageName inBundle:(NSString *)bundle {
    NSString *imgBundlePath = [[NSBundle mainBundle] pathForResource:bundle ofType:@"bundle"];
    NSBundle *imgBundle = [NSBundle bundleWithPath:imgBundlePath];
    UIImage *image = [UIImage imageNamed:imageName inBundle:imgBundle compatibleWithTraitCollection:nil];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)zz_imageClip:(UIImage *)image {
    
    CGSize newSize;
    CGImageRef imageRef =nil;
    
    if ((image.size.width / image.size.height) < 1) {
        
        newSize.width = image.size.width;
        newSize.height = image.size.width ;
        
        imageRef = CGImageCreateWithImageInRect([image CGImage], CGRectMake(0,fabs(image.size.height - newSize.height) / 2, newSize.width, newSize.height));
        
    } else {
        
        newSize.height = image.size.height;
        newSize.width = image.size.height * 1;

        imageRef = CGImageCreateWithImageInRect([image CGImage], CGRectMake(fabs(image.size.width - newSize.width) / 2, 0, newSize.width, newSize.height));
    }
    
    
   return [UIImage imageWithCGImage:imageRef];

}

+ (instancetype)zz_imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f,0.0f,1.0f,1.0f);UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
