//
//  UIImage+ZZAdd.h
//  TGBus
//
//  Created by donews on 2018/7/27.
//  Copyright © 2018年 Jamie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZZAdd)

/** 从bundle中获取图片 */
+ (instancetype)zz_imageName:(NSString *)imageName inBundle:(NSString *)bundle;
/** 当图片被压缩拉伸时裁切图片 */
+ (instancetype)zz_imageClip:(UIImage *)image;
/** 单一的颜色生成图片 */
+ (instancetype)zz_imageWithColor:(UIColor*)color;

@end
