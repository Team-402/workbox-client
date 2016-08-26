//
//  PersonalUserView.m
//  WorkBox
//
//  Created by ChenZS on 16/8/26.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "PersonalUserView.h"

@implementation PersonalUserView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithName:(NSString *)name score:(NSInteger)score {
    
    if (self = [super init]) {
        _name = name;
        _score = score;
    }
    
    return [self config];
}

- (id)config {
    
    return self;
}

@end
