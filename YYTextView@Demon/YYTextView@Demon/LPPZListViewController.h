//
//  LPPZListViewController.h
//  LPPZStretchViewController
//
//  Created by zhangkang on 2018/9/18.
//  Copyright © 2018年 zhangkang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPPZListViewController : UIViewController
@property (strong, nonatomic) UITableView *tableView;
@property (nonatomic, copy) void(^ _Nullable didSelectBlock)(NSString * name);

@end
