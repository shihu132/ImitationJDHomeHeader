//
//  SHBaseUI.h
//  ImitationJDHomeHeader
//
//  Created by joyshow on 2018/11/22.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SHBaseUI : UIView
/** 导航栏左按钮 */
- (UIBarButtonItem *)sh_leftItem;

/** 导航栏右按钮 */
- (UIBarButtonItem *)sh_rightItem;

/** 中间搜索框 */
- (UIView *)sh_titleView;

- (void)addScrollView:(UINavigationBar *)navigationBar;

@property (nonatomic, strong) UITableView *tableview;
@end

NS_ASSUME_NONNULL_END
