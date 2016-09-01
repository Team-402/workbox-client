//
//  WBPersonalViewController.h
//  WorkBox
//
//  Created by ChenZS on 16/8/18.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "BaseViewController.h"
#import "PersonalUserView.h"

@interface WBPersonalViewController : BaseViewController <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) PersonalUserView *userView;

@end
