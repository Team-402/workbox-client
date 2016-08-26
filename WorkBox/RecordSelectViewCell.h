//
//  RecordSelectViewCell.h
//  WorkBox
//
//  Created by ChenZS on 16/8/25.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecordSelectViewCell : UIView

@property (nonatomic, assign) BOOL selected;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *colorView;
@property (nonatomic, strong) UIColor *backgroundColor;
@property (nonatomic, assign) NSInteger value;

- (id)initWithTitle:(NSString *)title Color:(UIColor *)color value:(NSInteger)value;

@end
