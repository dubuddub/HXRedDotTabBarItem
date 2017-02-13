# HXRedDotTabBarItem

![image](https://github.com/Zzzard/HXRedDotTabBarItem/blob/master/demo111.gif)


##USAGE 
###1 creatRedDot

```
UIImageView *imageViewInTabBarItem = self.tabBarController.tabBar.items[1].imageView;

[self.tabBarController.tabBarItem creatRedDot:6 image:imageViewInTabBarItem];
```


###2 removeRedDot
```
UIImageView *imageViewInTabBarItem = self.tabBarController.tabBar.items[1].imageView;

for (UIView *subview in imageViewInTabBarItem.subviews) {

if ([subview isKindOfClass:[UILabel class]]) {
[subview removeFromSuperview];
}
}

```

