//
//  WBRecordViewController.m
//  WorkBox
//
//  Created by ChenZS on 16/8/18.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "WBRecordViewController.h"
#define MAS_SHORTHAND
#import "Masonry.h"

@interface WBRecordViewController ()

@end

@implementation WBRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self config];
}

- (void)config {
    self.title = @"增加记录";
    [self configImageView];
    [self configDescript];
    [self configTimeView];
    [self configSelectView];
    [self configActionButton];
}

- (void)configImageView {
    UIImage *image = [UIImage imageNamed:@"title_temp.jpeg"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    self.imageView = imageView;
    [self.imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:self.imageView];
    
    [self.imageView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.width);
        make.height.equalTo(self.view.height).multipliedBy(0.35);
        make.top.equalTo(@0);
        make.centerX.equalTo(self.view.centerX);
    }];
}

- (void)configDescript {
    UITextField *textField = [[UITextField alloc]init];
    self.descriptionTextField = textField;
    self.descriptionTextField.placeholder = @"description";
    [self.descriptionTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:self.descriptionTextField];
    
    [self.descriptionTextField makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@5);
        make.trailing.equalTo(@(-5));
        make.height.equalTo(@35);
        make.top.equalTo(self.imageView.bottom);
        make.centerX.equalTo(self.view.centerX);
    }];
}

- (void)configTimeView {
    self.timeView = [[[RecordTimeView alloc]init]config];
    [self.view addSubview:self.timeView];
    
    [self.timeView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.width);
        make.height.equalTo(@100);
        make.top.equalTo(self.descriptionTextField.bottom);
        make.centerX.equalTo(self.view.centerX);
    }];
}

- (void)configSelectView {
    self.selectView = [[[RecordSelectView alloc]init]config];
    [self.view addSubview:self.selectView];
    
    [self.selectView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.width);
        make.height.equalTo(self.view.height).multipliedBy(0.3);
        make.top.equalTo(self.timeView.bottom);
        make.centerX.equalTo(self.view.centerX);
    }];
}

- (void)configActionButton {
    self.actionButton = [[UIButton alloc]init];
    [self.actionButton setTitle:@"Add" forState:UIControlStateNormal];
    [self.actionButton setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:self.actionButton];
    
    [self.actionButton makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.width);
        make.height.equalTo(@60);
        make.bottom.equalTo(@0);
        make.leading.equalTo(@0);
    }];
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
