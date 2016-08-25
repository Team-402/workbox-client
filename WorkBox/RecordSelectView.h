//
//  RecordSelectView.h
//  WorkBox
//
//  Created by ChenZS on 16/8/23.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecordSelectViewCell.h"

typedef enum : NSUInteger {
    WBRecordSelectNone = 0,
    WBRecordSelectImportAndPressing,
    WBRecordSelectUnimportanceAndPressing,
    WBRecordSelectImportAndRelaxing,
    WBRecordSelectUnimportanceAndRelaxing
} WBRecordSelectValue;

@interface RecordSelectView : UIView

@property (nonatomic, strong) RecordSelectViewCell *cell0;
@property (nonatomic, strong) RecordSelectViewCell *cell1;
@property (nonatomic, strong) RecordSelectViewCell *cell2;
@property (nonatomic, strong) RecordSelectViewCell *cell3;

@property (nonatomic, assign) WBRecordSelectValue selected;

- (id)config;

@end
