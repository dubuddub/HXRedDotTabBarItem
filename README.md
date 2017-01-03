# HXRedDotTabBarItem
How to use 
1.#import "UITabBarItem+HXRedDot.h"
2.creat RedDot 

@property (strong, nonatomic) UILabel *label;

UIImageView *imageViewInTabBarItem = self.tabBarController.tabBar.items[1].imageView;
self.label = [self.tabBarController.tabBarItem creatRedDot:6 image:imageViewInTabBarItem];
self.label.hidden = NO;

3. remove RedDot 
self.label.hidden = YES;
