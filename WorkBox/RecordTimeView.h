//
//  RecordTimeView.h
//  WorkBox
//
//  Created by ChenZS on 16/8/23.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecordTimeView : UIView

@property (nonatomic, strong) NSDate *fromTime;
@property (nonatomic, strong) NSDate *toTime;

@property (nonatomic, strong) UILabel *toTimeTitle;
@property (nonatomic, strong) UILabel *fromTimeTitle;
@property (nonatomic, strong) UILabel *toTimeValue;
@property (nonatomic, strong) UILabel *fromTimeValue;

@end
