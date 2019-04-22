//
//  LPPZSendContentTextParser.h
//  BeStore
//
//  Created by LPPZ-User02 on 2017/4/25.
//  Copyright © 2017年 周小宏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYText.h"

NS_ASSUME_NONNULL_BEGIN
@interface LPPZSendContentTextParser : NSObject <YYTextParser>

@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *highlightTextColor;
@property (nonatomic, strong) UIFont *atUserFont;

@end
NS_ASSUME_NONNULL_END
