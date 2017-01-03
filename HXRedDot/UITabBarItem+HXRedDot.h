//
//  UITabBarItem+HXRedDot.h
//  HXRedDotTabBarItem
//
//  Created by imp on 2016/12/27.
//  Copyright © 2016年 imp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarItem (HXRedDot)

/**
 * 获取tabbarItem的imageView
 */
- (UIImageView *)imageView;

/**
 * 设置对应tabbarItem的redDot
 */
- (UILabel *)creatRedDot:(NSInteger)integer image:(UIImageView *)image;

@end
