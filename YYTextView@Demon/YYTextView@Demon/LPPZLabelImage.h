//
//  LPPZLabelImage.h
//  uilabe-uiimage
//
//  Created by zhangkang on 2018/4/26.
//  Copyright © 2018年 zhangkang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPPZLabelImage : UIView
@property (assign, nonatomic) CGSize lppz_TextSize;
@property (strong, nonatomic) UIImage * image ;

+(LPPZLabelImage *)imageWithText:(NSString *)text
                     font:(UIFont *)font
                textColor:(UIColor *)textColor
          backgroundColor:(UIColor *)backgroundColor;

+ (UIImage *)makeImageWithColor:(UIColor *)color
                       withSize:(CGSize)size;

@end
