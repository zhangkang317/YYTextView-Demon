//
//  LPPZHelper.h
//  BeStore
//
//  Created by LPPZ-User02 on 2017/1/12.
//  Copyright © 2017年 周小宏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface LPPZHelper : NSObject






/// At正则 例如 @王思聪
+ (NSRegularExpression *)regexAt;
//动态发布的内容展示
+ (NSRegularExpression *)regex_MoodAtUser ;


@end
NS_ASSUME_NONNULL_END
