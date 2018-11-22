//
//  UINavigationBar+ChangeColor.h
//  ImitationJDHomeHeader
//
//  Created by joyshow on 2018/11/22.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (ChangeColor)
/**
 *  设置导航栏
 */
- (void)start;

/**
 *  还原导航栏
 */
- (void)reset;

/**
 *  @param color 最终显示颜色
 *  @param offsetY 滑动视图水平偏移量
 */
- (void)changeColor:(UIColor *)color withOffsetY:(CGFloat)offsetY;

@end

NS_ASSUME_NONNULL_END
