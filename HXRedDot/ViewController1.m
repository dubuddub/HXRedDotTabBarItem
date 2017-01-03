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

@property (strong, nonatomic) UILabel *label;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    UIImageView *imageViewInTabBarItem = self.tabBarController.tabBar.items[1].imageView;
    self.label = [self.tabBarController.tabBarItem creatRedDot:6 image:imageViewInTabBarItem];
}

- (IBAction)creatRedDot:(id)sender {
    
    self.label.hidden = NO;
    
}
- (IBAction)remove:(id)sender {
    
    self.label.hidden = YES;
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
