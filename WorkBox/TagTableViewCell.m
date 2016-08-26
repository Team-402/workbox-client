//
//  TagTableViewCell.m
//  WorkBox
//
//  Created by ChenZS on 16/8/1.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "TagTableViewCell.h"

@implementation TagTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
    [self configTagTitle];
}

- (void)configTagTitle {
    
    self.tagTitle = [[UITextField alloc]init];
    [self.tagTitle setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.contentView addSubview:self.tagTitle];
    
    [self.tagTitle makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@25);
        make.trailing.equalTo(@(-25));
        make.height.equalTo(@30);
        make.centerY.equalTo(self.contentView.centerY);
    }];
}

- (void)canEdited:(BOOL)edited {
    [self.tagTitle setEnabled:edited];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
