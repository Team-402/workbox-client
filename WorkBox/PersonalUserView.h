//
//  PersonalUserView.h
//  WorkBox
//
//  Created by ChenZS on 16/8/26.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalUserView : UIView

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger score;

@property (nonatomic, strong) UIImageView *backgroundView;
@property (nonatomic, strong) UIImageView *headView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *scoreLabel;

@end
