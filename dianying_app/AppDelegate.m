//
//  AppDelegate.m
//  dianying_app
//
//  Created by 张瑜 on 16/6/21.
//  Copyright (c) 2016年 张瑜. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //创建windows
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor redColor];
    
    
    //1.创建根控制器
    UITabBarController *tb = [[UITabBarController alloc] init];
    self.window.rootViewController = tb;
    
    //2.添加多个控制器
    UIViewController *home= [self addControllerWithClass:[UIViewController class] title:@"首页" image:@"首页_24" selectedImage:@"首页_24"];
    UIViewController *pd= [self addControllerWithClass:[UIViewController class] title:@"频道" image:@"频道_27" selectedImage:@"频道_27"];
    UIViewController *dy= [self addControllerWithClass:[UIViewController class] title:@"订阅" image:@"订阅_27" selectedImage:@"订阅_27"];
    UIViewController *me= [self addControllerWithClass:[UIViewController class] title:@"我的" image:@"我的_31" selectedImage:@"我的_31"];
    tb.viewControllers=@[home,pd,dy,me];
    
    
    
    [self.window makeKeyAndVisible];
    

    
    return YES;
}

/**
   根据一个创建好的控制器初始化控制器
 */
-(UIViewController *) addControllerWithClass:(Class) class title:(NSString *)title
image:(NSString *)image selectedImage:(NSString *)selectedImage{
   
    UIViewController *vc = [[class alloc] init];
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    vc.view.backgroundColor = [UIColor grayColor];
    return vc;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
