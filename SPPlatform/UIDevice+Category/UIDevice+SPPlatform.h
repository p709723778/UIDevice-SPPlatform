//
//  UIDevice+SPPlatform.h
//  SPPlatform
//
//  Created by SotoPoul on 2017/3/27.
//  Copyright © 2017年 SotoPoul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (SPPlatform)


/**
   获取设备类型信息

   @return 设备名称
 */
+ (NSString *)platformString;

@end
