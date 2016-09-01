//
//  WBTarbarViewController.m
//  WorkBox
//
//  Created by ChenZS on 16/8/3.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "WBTarbarViewController.h"
#import "WBTagsTableViewController.h"
#import "WBRecordViewController.h"
#import "WBPersonalViewController.h"
#import "WBTagDetailViewController.h"

@interface WBTarbarViewController () <UISplitViewControllerDelegate>

@end

@implementation WBTarbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISplitViewController *splitViewController = (UISplitViewController *)self.viewControllers.firstObject;
    splitViewController.delegate = self;
    UINavigationController *tagsNavigationController = splitViewController.viewControllers.firstObject;
    WBTagsTableViewController *tagsViewController = (WBTagsTableViewController *)tagsNavigationController.topViewController;
    tagsViewController.managedObjectContext = self.managedObjectContext;
    
    [self setSelectedIndex:1];
    [self hideTabBar:YES];
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

#pragma mark - Split view

- (BOOL)splitViewController:(UISplitViewController *)splitViewController collapseSecondaryViewController:(UIViewController *)secondaryViewController ontoPrimaryViewController:(UIViewController *)primaryViewController {
    if ([secondaryViewController isKindOfClass:[UINavigationController class]] && [[(UINavigationController *)secondaryViewController topViewController] isKindOfClass:[WBTagDetailViewController class]] && ([(WBTagDetailViewController *)[(UINavigationController *)secondaryViewController topViewController] detailItem] == nil)) {
        // Return YES to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
        return YES;
    } else {
        return NO;
    }
}

@end
