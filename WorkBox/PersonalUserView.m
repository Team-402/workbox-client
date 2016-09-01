//
//  PersonalUserView.m
//  WorkBox
//
//  Created by ChenZS on 16/8/26.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "PersonalUserView.h"

@implementation PersonalUserView

- (id)initWithName:(NSString *)name score:(NSInteger)score {
    
    if (self = [super init]) {
        _name = name;
        _score = score;
    }
    
    return [self config];
}

- (id) config {
    [self configBackground];
    [self configHeadView];
    [self configNameLabel];
    [self configScoreLabel];
    [self configStatusLabel];
    
    return self;
}

- (void)configBackground {
    UIImage *image = [UIImage imageNamed:@"title_temp.jpeg"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    self.backgroundView = imageView;
    [self addSubview:self.backgroundView];
    [self.backgroundView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.width);
        make.height.equalTo(self.height);
        make.centerX.equalTo(self.centerX);
        make.centerY.equalTo(self.centerY);
    }];
}

- (void)configHeadView {
    UIImage *image = [UIImage imageNamed:@"title_temp.jpeg"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    imageView.layer.masksToBounds =YES;
    imageView.layer.cornerRadius =50;
    [imageView.layer setBorderWidth:3];
    [imageView.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    self.headView = imageView;
    [self addSubview:self.headView];
    [self.headView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@100);
        make.height.equalTo(@100);
        make.centerY.equalTo(self.backgroundView.centerY);
        make.leading.equalTo(@20);
    }];
}

- (void)configNameLabel {
    UILabel *label = [[UILabel alloc]init];
    label.text = self.name;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:30.0f];
    self.nameLabel = label;
    [self addSubview:self.nameLabel];
    [self.nameLabel makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.width).multipliedBy(0.5).offset(20);
        make.height.equalTo(@40);
        make.centerY.equalTo(self.centerY).offset(-30);
        make.trailing.equalTo(@(-20));
    }];
}

- (void)configScoreLabel {
    UILabel *label = [[UILabel alloc]init];
    label.text = @"Healthy";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:25.0f];
    self.scoreLabel = label;
    [self addSubview:self.scoreLabel];
    
    [self.scoreLabel makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.width).multipliedBy(0.25);
        make.height.equalTo(@40);
        make.centerY.equalTo(self.centerY).offset(30);
        make.trailing.equalTo(@(-20));
    }];
}

- (void)configStatusLabel {
    UILabel *label = [[UILabel alloc]init];
    label.text = [NSString stringWithFormat:@"%ld", self.score];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:25.0f];
    self.statusLabel = label;
    [self addSubview:self.statusLabel];
    
    [self.statusLabel makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.width).multipliedBy(0.25);
        make.height.equalTo(@40);
        make.centerY.equalTo(self.centerY).offset(30);
        make.trailing.equalTo(self.scoreLabel.leading).offset(-20);
    }];
}

@end
