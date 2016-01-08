//
//  AppDelegate.m
//  tes
//
//  Created by kuailefu on 16/1/8.
//  Copyright © 2016年 kuailefu. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomTabBarViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //a.初始化一个tabBar控制器
    CustomTabBarViewController *tb=[[CustomTabBarViewController alloc]init];
    //设置控制器为Window的根控制器
    tb.delegate = self;
    self.window.rootViewController=tb;
    
    //b.创建子控制器
    UIViewController *c1=[[UIViewController alloc]init];
    c1.view.backgroundColor=[UIColor grayColor];

    
    UIViewController *c2=[[UIViewController alloc]init];
    c2.view.backgroundColor=[UIColor brownColor];
    
    UIViewController *c3=[[UIViewController alloc]init];
    c3.view.backgroundColor = [UIColor purpleColor];

    UIViewController *c4=[[UIViewController alloc]init];
    c4.view.backgroundColor = [UIColor yellowColor];
    
    tb.viewControllers=@[c1,c2,c3,c4];
    //2.设置Window为主窗口并显示出来
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSString *tag = [NSString stringWithFormat:@"%lu",(unsigned long)tabBarController.selectedIndex];
    [[NSNotificationCenter defaultCenter]postNotificationName:@"changestag" object:tag];
}
@end
