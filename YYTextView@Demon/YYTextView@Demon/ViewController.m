//
//  ViewController.m
//  YYTextView@Demon
//
//  Created by zhangkang on 2018/7/27.
//  Copyright © 2018年 zhangkang. All rights reserved.
//
#define UI_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define UI_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define weakify(...) \
rac_keywordify \
metamacro_foreach_cxt(rac_weakify_,, __weak, __VA_ARGS__)

#import "ViewController.h"
//#import "Masonry.h"
#import <YYText.h>
#import "LPPZSendContentTextParser.h"
#import "LPPZListViewController.h"




@interface ViewController ()<YYTextViewDelegate>
@property (strong, nonatomic) YYTextView *textView;

@end

@implementation ViewController
//        __typeof (self) __weak weakSelf = self;

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * tmp = [[UIView alloc] init];
//    self.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.textView];
    
    UIButton * btn = [[UIButton alloc] init];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnOnclicK:) forControlEvents:  UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 200, 100, 100);
    [self.view addSubview:btn];
    
    
    UIButton * logBtn = [[UIButton alloc] init];
    [logBtn setTitle:@"打印出数据" forState:UIControlStateNormal];
    [logBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [logBtn addTarget:self action:@selector(logBtnclicK) forControlEvents:  UIControlEventTouchUpInside];
    logBtn.frame = CGRectMake(100, 250, 100, 100);
    [self.view addSubview:logBtn];
}

-(void)logBtnclicK{
    [self.textView.attributedText enumerateAttribute:YYTextAttachmentAttributeName
                                             inRange:NSMakeRange(0, self.textView.attributedText.string.length)
                                             options:0
                                          usingBlock:^(id value, NSRange range, BOOL *stop) {
                                              if ([value isKindOfClass: [YYTextAttachment class]]) {
                                                  YYTextAttachment * attachMent = (YYTextAttachment *)value;
                                                  if (attachMent.userInfo != nil) {
                                                      for (NSString * key in attachMent.userInfo) {
                                                          NSLog(@"key:%@",attachMent.userInfo[key]);

                                                      }
                                                  }
                                              }
                                          }];

}
-(void)btnOnclicK:(UIButton *)sender{
    LPPZListViewController * vc = [[LPPZListViewController alloc] init];
    vc.didSelectBlock = ^(NSString *name) {
        [self.textView replaceRange:self.textView.selectedTextRange
                           withText:name];

    };
    [self.navigationController pushViewController:vc animated:YES];
}

- (YYTextView *)textView {
    if (_textView == nil) {
        _textView = [[YYTextView alloc] initWithFrame:CGRectMake(10, 80, UI_SCREEN_WIDTH - 20, 90)];
        _textView.textColor = [UIColor blackColor];
        _textView.font = [UIFont systemFontOfSize:15];
        _textView.scrollEnabled = NO;
        _textView.textParser = [[LPPZSendContentTextParser alloc] init];
        _textView.delegate = self;
        _textView.inputAccessoryView = [UIView new];
        _textView.backgroundColor = [UIColor redColor];
      
    }
    return _textView;
}




@end
