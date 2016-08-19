//
//  BaseTarbarViewController.m
//  WorkBox
//
//  Created by ChenZS on 16/7/27.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "BaseTarbarViewController.h"

@interface BaseTarbarViewController ()

@end

@implementation BaseTarbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self setSelectedIndex:1];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(tabBarTurnRight:)];
    
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(tabBarTurnLeft:)];
    
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:swipeRight];
    
//    [self hideTabBar:YES];
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

- (IBAction) tabBarTurnRight:(id)sender
{
    NSUInteger selectedIndex = [self selectedIndex];
    
    NSArray *aryViewController = self.viewControllers;
    
    if (selectedIndex < aryViewController.count - 1) {
        
        UIView *fromView = [self.selectedViewController view];
        UIView *toView = [[self.viewControllers objectAtIndex:selectedIndex + 1] view];
        
        [UIView transitionFromView:fromView toView:toView duration:0.5f options:UIViewAnimationOptionCurveEaseOut completion:^(BOOL finished) {
            if (finished) {
                [self setSelectedIndex:selectedIndex + 1];
            }
        }];
    }
}

- (IBAction) tabBarTurnLeft:(id)sender
{
    
    NSUInteger selectedIndex = [self selectedIndex];
    
    if (selectedIndex > 0) {
        UIView *fromView = [self.selectedViewController view];
        
        UIView *toView = [[self.viewControllers objectAtIndex:selectedIndex - 1] view];
        
        [UIView transitionFromView:fromView toView:toView duration:0.5f options:UIViewAnimationOptionCurveEaseIn completion:^(BOOL finished) {
            if (finished) {
                [self setSelectedIndex:selectedIndex - 1];
            }
        }];
    }
}

- (void)hideTabBar:(BOOL)hide {
    if (self.tabBar.hidden == hide) {
        return;
    }
    self.tabBar.hidden = hide;
}

@end
