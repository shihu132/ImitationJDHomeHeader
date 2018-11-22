//
//  SHBaseUI.m
//  ImitationJDHomeHeader
//
//  Created by joyshow on 2018/11/22.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "SHBaseUI.h"
#import "UINavigationBar+ChangeColor.h"
#import "SDCycleScrollView.h"
#import "UIImageView+WebCache.h"
#import "SHTableViewCell.h"

@interface SHBaseUI ()<UITableViewDelegate, UITableViewDataSource,SDCycleScrollViewDelegate>
{
    UINavigationBar *_navigationBar;
    SDCycleScrollView *_customCellScrollViewDemo;
}

@end

#define kScreenW CGRectGetWidth([UIScreen mainScreen].bounds)
#define kScreenH CGRectGetHeight([UIScreen mainScreen].bounds)
#define kTabBarH (kScreenH == 812?83:49)
#define kNavH (kScreenH == 812?88:64)

@implementation SHBaseUI

- (instancetype)initWithFrame:(CGRect)frame{
    self =  [super initWithFrame:frame];
    if (self) {
        [self addTableView];
        [self addPlaceholderImage];
    }
    return self;
}

- (void)addTableView{
    _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, -kNavH, kScreenW, kScreenH) style:UITableViewStylePlain];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    [self addSubview:_tableview];
}

- (void)addPlaceholderImage{

    NSArray *imagesURLStrings = @[
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542888659365&di=60a07c32dcf7681d656b610f269753f9&imgtype=0&src=http%3A%2F%2Fpic18.photophoto.cn%2F20110317%2F0036036394904443_b.jpg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542888659364&di=bcb8cbe4c38f8524256e9f29f61aa17d&imgtype=0&src=http%3A%2F%2Fpic14.photophoto.cn%2F20100303%2F0036036356596828_b.jpg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542888659363&di=a77e9465080ee51b565589e9fd02c538&imgtype=0&src=http%3A%2F%2Fpic21.photophoto.cn%2F20111115%2F0036036357429030_b.jpg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542888844254&di=f1e93ad25a4f88c0de3b947d778cd49d&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201508%2F27%2F20150827202753_tKTXZ.thumb.700_0.jpeg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542888888646&di=ddce98780c8bdc40aa1329d2e932d7eb&imgtype=0&src=http%3A%2F%2Fpic18.photophoto.cn%2F20110317%2F0036036394904443_b.jpg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1542878919&di=9163a5edf9fc7789d552f90a2982ac15&src=http://image.tupian114.com/20121031/14040659.jpg"
                                  ];

    SDCycleScrollView *cycleScrollView3 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, kScreenW, 460) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    cycleScrollView3.currentPageDotImage = [UIImage imageNamed:@"pageControlCurrentDot"];
    cycleScrollView3.pageDotImage = [UIImage imageNamed:@"pageControlDot"];
    cycleScrollView3.imageURLStringsGroup = imagesURLStrings;
    _tableview.tableHeaderView = cycleScrollView3;
}

- (UIBarButtonItem *)sh_leftItem{
    UIImage *imgLeft = [[UIImage imageNamed:@"btn_nav_scan"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:imgLeft style:UIBarButtonItemStylePlain target:self action:@selector(onLeftNavBtnClick)];
    return leftItem;
}

- (UIBarButtonItem *)sh_rightItem{

    UIImage *imgRight = [[UIImage imageNamed:@"btn_nav_message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithImage:imgRight style:UIBarButtonItemStylePlain target:self action:@selector(onRightNavBtnClick)];
    return rightItem;
}

- (UIView *)sh_titleView{
    UITextField *tfSearch = [[UITextField alloc] init];
    tfSearch.bounds = CGRectMake(0, 0, kScreenW - 100, 28);
    tfSearch.backgroundColor = [UIColor colorWithRed:0.918 green:0.918 blue:0.918 alpha:0.80];
    tfSearch.placeholder = @"搜索";
    tfSearch.borderStyle = UITextBorderStyleRoundedRect;
    tfSearch.font = [UIFont systemFontOfSize:14];
    return tfSearch;
}

#pragma mark - Tableview Datasource & Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 81;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SHTableViewCell *cell = [SHTableViewCell cellWithTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.001f;
}

- (void)addScrollView:(UINavigationBar *)navigationBar {
    _navigationBar = navigationBar;
    [self scrollViewDidScroll:_tableview];
}

/* 滑动过程中做处理 */
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [_navigationBar changeColor:[UIColor redColor] withOffsetY:scrollView.contentOffset.y];
}

- (void)onLeftNavBtnClick {
    NSLog(@"shihu_____左边");
}

- (void)onRightNavBtnClick {
    NSLog(@"shihu_____右边");
}

@end
