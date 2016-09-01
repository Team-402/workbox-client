//
//  RecordTimeView.m
//  WorkBox
//
//  Created by ChenZS on 16/8/23.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "RecordTimeView.h"

@implementation RecordTimeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)init {
    if (self = [super init]) {
        
    }
    return [self config];
}

- (UILabel *)labelWithTitle:(NSString *)title {
    UILabel *label = [[UILabel alloc]init];
    label.text = title;
    [self addSubview:label];
    
    [label makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@5);
        make.width.equalTo(@50);
        make.height.equalTo(@30);
    }];
    
    return label;
}

- (UILabel *)labelWithString:(NSString *)string {
    UILabel *label = [[UILabel alloc]init];
    label.text = string;
    label.textAlignment = NSTextAlignmentRight;
    [self addSubview:label];
    
    [label makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(@(-5));
        make.leading.equalTo(@55);
        make.height.equalTo(@30);
    }];
    
    return label;
}

- (id)config {
    
    self.fromTimeTitle = [self labelWithTitle:@"From"];
    [self.fromTimeTitle makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@5);
    }];
    
    self.toTimeTitle = [self labelWithTitle:@"To"];
    [self.toTimeTitle makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fromTimeTitle.bottom).offset(5);
    }];
    
    self.fromTimeValue = [self labelWithString:@"11111111111111"];
    [self.fromTimeValue makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@5);
    }];
    
    self.toTimeValue = [self labelWithString:@"11111111111111"];
    [self.toTimeValue makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fromTimeValue.bottom).offset(5);
    }];
    
    return self;
}

@end
