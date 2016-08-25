//
//  RecordSelectViewCell.m
//  WorkBox
//
//  Created by ChenZS on 16/8/25.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "RecordSelectViewCell.h"
#define MAS_SHORTHAND
#import "Masonry.h"

@implementation RecordSelectViewCell

- (id)initWithTitle:(NSString *)title Color:(UIColor *)color value:(NSInteger)value {
    if (self = [super init]) {
        _title = title;
        _backgroundColor = color;
        _value = value;
        _selected = NO;
    }
    return self;
}

- (id)config {
    
    self.titleLabel = [[UILabel alloc]init];
    self.titleLabel.text = self.title;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.titleLabel];
    [self.titleLabel makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@30);
        make.width.equalTo(@150);
        make.centerX.equalTo(self.centerX);
        make.centerY.equalTo(self.centerY).offset(-20);
    }];
    
    self.colorView = [[UIView alloc]init];
    [self.colorView setBackgroundColor:self.backgroundColor];
    [self addSubview:self.colorView];
    [self.colorView makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@20);
        make.width.equalTo(@60);
        make.centerX.equalTo(self.centerX);
        make.centerY.equalTo(self.centerY).offset(20);
    }];
    
    return self;
}

@end
