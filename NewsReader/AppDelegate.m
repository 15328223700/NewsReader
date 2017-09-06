//
//  AppDelegate.m
//  NewsReader
//
//  Created by zhukang on 17/9/2.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginPage.h"
#import "HomePage.h"


@implementation AppDelegate

+ (AppDelegate *)appDeg
{
    return  (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)showHomePage
{
    HomePage *page = [[HomePage alloc] init];
    
    self.window.rootViewController = page;
    
    [self.window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    LoginPage *loginVC = [[LoginPage alloc] init];
    self.window.rootViewController = loginVC;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
