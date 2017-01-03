//
//  ViewController.m
//  HXRedDot
//
//  Created by imp on 2017/1/3.
//  Copyright © 2017年 imp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UITabBar *tabBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar = [[UITabBar alloc] init];
//    UITabBarItem *item1 = [QDUIHelper tabBarItemWithTitle:@"QMUIKit" image:[UIImageMake(@"icon_tabbar_uikit") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:UIImageMake(@"icon_tabbar_uikit_selected") tag:0];
//    UITabBarItem *item2 = [QDUIHelper tabBarItemWithTitle:@"Components" image:[UIImageMake(@"icon_tabbar_component") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:UIImageMake(@"icon_tabbar_component_selected") tag:1];
//    UITabBarItem *item3 = [QDUIHelper tabBarItemWithTitle:@"Lab" image:[UIImageMake(@"icon_tabbar_lab") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:UIImageMake(@"icon_tabbar_lab_selected") tag:2];
    
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
