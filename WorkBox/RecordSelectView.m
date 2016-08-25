//
//  RecordSelectView.m
//  WorkBox
//
//  Created by ChenZS on 16/8/23.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "RecordSelectView.h"
#define MAS_SHORTHAND
#import "Masonry.h"

@implementation RecordSelectView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)init {
    if (self = [super init]) {
        _selected = WBRecordSelectNone;
    }
    return self;
}

- (id)cellWithTitle:(NSString *)title tag:(NSInteger)tag color:(UIColor *)color {
    RecordSelectViewCell *cell = [[[RecordSelectViewCell alloc]initWithTitle:title Color:color value:tag]config];
    
    [self addSubview:cell];
    [cell makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.width).multipliedBy(0.5);
        make.height.equalTo(self.height).multipliedBy(0.5);
    }];
    
    return cell;
}

- (id)config {
    
    self.cell0 = [self cellWithTitle:@"Import&Pressing"
                                 tag:WBRecordSelectImportAndPressing
                               color:[UIColor redColor]];
    [self.cell0 makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@0);
        make.top.equalTo(@0);
    }];
    
    self.cell1 = [self cellWithTitle:@"Unimportance&Pressing"
                                 tag:WBRecordSelectUnimportanceAndPressing
                               color:[UIColor orangeColor]];
    [self.cell1 makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(@0);
        make.top.equalTo(@0);
    }];
    
    self.cell2 = [self cellWithTitle:@"Import&Relaxing"
                                 tag:WBRecordSelectImportAndRelaxing
                               color:[UIColor greenColor]];
    [self.cell2 makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(@0);
        make.bottom.equalTo(@0);
    }];
    
    self.cell3 = [self cellWithTitle:@"Unimportance&Relaxing"
                                 tag:WBRecordSelectUnimportanceAndRelaxing
                               color:[UIColor grayColor]];
    [self.cell3 makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(@0);
        make.bottom.equalTo(@0);
    }];
    
    return self;
}

- (void)buttonPress:(id)sender {
    
}

@end
