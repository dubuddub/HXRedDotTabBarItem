//
//  AppDelegate.m
//  HXRedDot
//
//  Created by imp on 2017/1/3.
//  Copyright © 2017年 imp. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    ViewController1 *vc1 = [[ViewController1 alloc] init];
    vc1.view.frame = CGRectMake(0, 0, width, height);
    vc1.view.backgroundColor = [UIColor whiteColor];

    ViewController2 *vc2 = [[ViewController2 alloc] init];
    vc2.view.frame = CGRectMake(0, 0, width, height);
    vc2.view.backgroundColor = [UIColor yellowColor];
    
    ViewController3 *vc3 = [[ViewController3 alloc] init];
    vc3.view.frame = CGRectMake(0, 0, width, height);
    vc3.view.backgroundColor = [UIColor blueColor];
    
    UITabBarController *tabbarVC = [[UITabBarController alloc] init];
    tabbarVC.viewControllers = @[vc1,vc2,vc3];
    
    vc1.tabBarItem.title = @"1";
    vc1.tabBarItem.image = [UIImage imageNamed:@"contact"];
    
    vc2.tabBarItem.title = @"2";
    vc2.tabBarItem.image = [UIImage imageNamed:@"invite"];
    
    vc3.tabBarItem.title = @"3";
    vc3.tabBarItem.image = [UIImage imageNamed:@"ljqg_1"];
    
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    
    self.window.rootViewController =tabbarVC;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
