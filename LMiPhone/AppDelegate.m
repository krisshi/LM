//
//  AppDelegate.m
//  LMiPhone
//
//  Created by kris on 9/15/14.
//  Copyright (c) 2014 kris. All rights reserved.
//

#import "AppDelegate.h"
#import "MessageMainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    self.window.backgroundColor = [UIColor whiteColor];
    [self createTabBarController];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
#pragma mark-private method
-(void)createTabBarController
{
    if (!_tabBarController) {
        //1
        MessageMainViewController *oMsgMainViewController = [[MessageMainViewController alloc] init];
        UITabBarItem *mytabBarItem=[[UITabBarItem alloc] initWithTitle:@"聊天" image:[UIImage imageNamed:@"tabbar_icon_0"] tag:0];
        [oMsgMainViewController setTabBarItem:mytabBarItem];
        UINavigationController *messageNct= [[UINavigationController alloc] initWithRootViewController:oMsgMainViewController];
        //2
        MessageMainViewController *oWeiBoMainViewController = [[MessageMainViewController alloc] init];
        UITabBarItem *mytabBarItem2=[[UITabBarItem alloc] initWithTitle:@"聊天1" image:[UIImage imageNamed:@"tabbar_icon_0"] tag:0];
        [oWeiBoMainViewController setTabBarItem:mytabBarItem2];
        UINavigationController *weiboNct= [[UINavigationController alloc] initWithRootViewController:oWeiBoMainViewController];
        _tabBarController = [[UITabBarController alloc] init];
        _tabBarController.selectedIndex = 0;
        self.tabBarController.viewControllers = [NSArray arrayWithObjects:messageNct,weiboNct,nil];
        self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
        
        UIView *bgView = [[UIView alloc] initWithFrame:self.tabBarController.tabBar.bounds];
        bgView.backgroundColor = [UIColor colorWithRed:61/255.f green:46/255.f blue:98/255.f alpha:1];
        [self.tabBarController.tabBar insertSubview:bgView atIndex:0];
        self.tabBarController.tabBar.opaque = YES;
    }
    self.window.rootViewController =_tabBarController;
}
@end
