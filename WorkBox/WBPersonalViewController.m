//
//  WBPersonalViewController.m
//  WorkBox
//
//  Created by ChenZS on 16/8/18.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "WBPersonalViewController.h"

@interface WBPersonalViewController ()

@end

@implementation WBPersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self config];
}

- (void)config {
    self.title = @"我的";
    [self configScrollView];
    [self configUserView];
}

- (void)configScrollView {
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    [self.view addSubview:scrollView];
    
    [scrollView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.width);
        make.height.equalTo(self.view.height);
        make.top.equalTo(@0);
        make.centerX.equalTo(self.view.centerX);
    }];
    
    self.scrollView = scrollView;
}

- (void)configUserView {
    PersonalUserView *userView = [[PersonalUserView alloc]initWithName:@"Test" score:99];
    [self.scrollView addSubview:userView];
    
    [userView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.width);
        make.height.equalTo(self.view.height).multipliedBy(0.3);
        make.top.equalTo(self.scrollView.top);
        make.centerX.equalTo(self.scrollView.centerX);
    }];
    
    self.userView = userView;
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
