//
//  CustomTabBarViewController.m
//  tes
//
//  Created by kuailefu on 16/1/8.
//  Copyright © 2016年 kuailefu. All rights reserved.
//

#import "CustomTabBarViewController.h"

@interface CustomTabBarViewController ()
@property (nonatomic, strong) NSArray *nonmalImage;
@property (nonatomic, strong) NSArray *selectImage;
@end

@implementation CustomTabBarViewController
- (void)actionClick:(NSNotification *)notif{
    NSString *tag = [NSString stringWithFormat:@"%@",notif.object];
    if ([tag isEqualToString:@"0"]) {
        UIButton *btn = [self.view viewWithTag:1001];
          UIImage *imageA = [UIImage imageNamed:[self.selectImage objectAtIndex:0]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }else{
        UIButton *btn = [self.view viewWithTag:1001];
        UIImage *imageA = [UIImage imageNamed:[self.nonmalImage objectAtIndex:0]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }
    
    if ([tag isEqualToString:@"1"]) {
        UIButton *btn = [self.view viewWithTag:1002];
        UIImage *imageA = [UIImage imageNamed:[self.selectImage objectAtIndex:1]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }else{
        UIButton *btn = [self.view viewWithTag:1002];
        UIImage *imageA = [UIImage imageNamed:[self.nonmalImage objectAtIndex:1]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }
    
    if ([tag isEqualToString:@"2"]) {
        UIButton *btn = [self.view viewWithTag:1003];
        UIImage *imageA = [UIImage imageNamed:[self.selectImage objectAtIndex:2]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }else{
        UIButton *btn = [self.view viewWithTag:1003];
        UIImage *imageA = [UIImage imageNamed:[self.nonmalImage objectAtIndex:2]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }
    
    if ([tag isEqualToString:@"3"]) {
        UIButton *btn = [self.view viewWithTag:1004];
        UIImage *imageA = [UIImage imageNamed:[self.selectImage objectAtIndex:3]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }else{
        UIButton *btn = [self.view viewWithTag:1004];
        UIImage *imageA = [UIImage imageNamed:[self.nonmalImage objectAtIndex:3]];
        [btn setImage:imageA forState:UIControlStateNormal];
    }
    
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    self.nonmalImage = @[@"camera_normal.png",@"cloud_normal.png",@"global_normal",@"user_normal.png"];
    self.selectImage =@[@"camera_pressed.png",@"cloud_pressed.png",@"global_pressed",@"user_pressed.png"];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(actionClick:) name:@"changestag" object:nil];
    
    //行
    for (NSInteger i = 0; i<1; i++)
    { //列
        for (NSInteger j = 0; j<4; j++)
        {
            UIButton* numberButton = [UIButton buttonWithType:UIButtonTypeCustom];
            numberButton.frame = CGRectMake(self.view.bounds.size.width/4*j, 46.0f*i, self.view.bounds.size.width/4 - 1, 45.0f);
            NSInteger numberNum = i*4+j+1;
            numberButton.userInteractionEnabled = NO;
            [numberButton addTarget:self action:@selector(actionClick:) forControlEvents:UIControlEventTouchUpInside];
            numberButton.tag = 1000 + numberNum;
            UIImage *imageA = [UIImage imageNamed:[self.nonmalImage objectAtIndex:j]];
            [numberButton setImage:imageA forState:UIControlStateNormal];
            
            [self.tabBar addSubview:numberButton];
        }
        
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
}
@end
