//
//  UITabBarItem+HXRedDot.m
//  HXRedDotTabBarItem
//
//  Created by imp on 2016/12/27.
//  Copyright © 2016年 imp. All rights reserved.
//

#import "UITabBarItem+HXRedDot.h"



@implementation UITabBarItem (HXRedDot)

- (UIButton *)barButton{
    return [self valueForKey:@"view"];
}
- (UIImageView *)imageView {
    UIControl *barButton = [self barButton];
    
    if (!barButton) {
        return nil;
    }
    for (UIView *subview in barButton.subviews) {
        
        if ([NSStringFromClass([subview class]) isEqualToString:@"UITabBarSwappableImageView"]) {
            return (UIImageView *)subview;
        }
        
        if ([[[UIDevice currentDevice] systemVersion] floatValue] < 10) {
            
            if ([subview isKindOfClass:[UIImageView class]] && ![NSStringFromClass([subview class]) isEqualToString:@"UITabBarSelectionIndicatorView"]) {
                return (UIImageView *)subview;
            }
        }
        
    }
    return nil;
}


- (UILabel *)creatRedDot:(NSInteger)integer image:(UIImageView *)image{
    
    UILabel *label = [[UILabel alloc] init];
    [image addSubview:label];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.clipsToBounds = YES;
    
    label.font = [UIFont systemFontOfSize:8];
    label.frame = CGRectMake(image.frame.size.width - image.frame.size.width * 0.2, 0, label.frame.size.width, label.frame.size.width);
    label.backgroundColor = [UIColor redColor];
    label.text = [NSString stringWithFormat:@"%ld",integer];
    [label sizeToFit];
    
    if (label.text.length == 1) {
        label.frame = CGRectMake(CGRectGetMinX(label.frame), CGRectGetMinY(label.frame), CGRectGetHeight(label.bounds), CGRectGetHeight(label.bounds));
    }
    if (integer == 0) {
        label.text = @"";
        
    }
    label.layer.cornerRadius = label.frame.size.width / 2;
    return label;
    
}



@end
