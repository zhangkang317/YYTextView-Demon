//
//  LPPZHelper.m
//  BeStore
//
//  Created by LPPZ-User02 on 2017/1/12.
//  Copyright © 2017年 周小宏. All rights reserved.
//

#import "LPPZHelper.h"

@implementation LPPZHelper



+ (NSRegularExpression *)regexAt {
    static NSRegularExpression *regex;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
         regex = [NSRegularExpression regularExpressionWithPattern:@"(\\[[^\\]]*\\])" options:kNilOptions error:NULL];
        
//        regex = [NSRegularExpression regularExpressionWithPattern:@"@[^@]+?\\s" options:kNilOptions error:NULL];
    });
    return regex;
}

+ (NSRegularExpression *)regex_MoodAtUser {
    static NSRegularExpression *regex;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        regex = [NSRegularExpression regularExpressionWithPattern:@"(\\[[^\\]]*\\])" options:kNilOptions error:NULL];
        
//        regex = [NSRegularExpression regularExpressionWithPattern:@"@[^@]+?\\s/" options:kNilOptions error:NULL];
    });
    return regex;
}









@end
