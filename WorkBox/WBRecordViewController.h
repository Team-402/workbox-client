//
//  WBRecordViewController.h
//  WorkBox
//
//  Created by ChenZS on 16/8/18.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "BaseViewController.h"
#import "RecordTimeView.h"
#import "RecordSelectView.h"

@interface WBRecordViewController : BaseViewController

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UITextField *descriptionTextField;
@property (nonatomic, strong) RecordTimeView *timeView;
@property (nonatomic, strong) RecordSelectView *selectView;
@property (nonatomic, strong) UIButton *actionButton;
@property (nonatomic, strong) UIScrollView *scrollView;

@end
