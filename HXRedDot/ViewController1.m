//
//  ViewController1.m
//  HXRedDot
//
//  Created by imp on 2017/1/3.
//  Copyright © 2017年 imp. All rights reserved.
//

#import "ViewController1.h"
#import "UITabBarItem+HXRedDot.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

}

- (IBAction)creatRedDot:(id)sender {
    
    UIImageView *imageViewInTabBarItem = self.tabBarController.tabBar.items[1].imageView;

    [self.tabBarController.tabBarItem creatRedDot:6 image:imageViewInTabBarItem];
    
}
- (IBAction)remove:(id)sender {
    
    UIImageView *imageViewInTabBarItem = self.tabBarController.tabBar.items[1].imageView;
    
    for (UIView *subview in imageViewInTabBarItem.subviews) {
        
        if ([subview isKindOfClass:[UILabel class]]) {
            [subview removeFromSuperview];
        }
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
