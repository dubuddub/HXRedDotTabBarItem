# HXRedDotTabBarItem

![image](https://github.com/Zzzard/HXRedDotTabBarItem/blob/master/demo111.gif)


##USAGE 
######1 creatRedDot
`
#import "UITabBarItem+HXRedDot.h"

@property (strong, nonatomic) UILabel *label;

UIImageView *imageViewInTabBarItem = self.tabBarController.tabBar.items[1].imageView;
self.label = [self.tabBarController.tabBarItem creatRedDot:6 image:imageViewInTabBarItem];
self.label.hidden = NO;
`
######2 removeRedDot
`
self.label.hidden = YES;
`

