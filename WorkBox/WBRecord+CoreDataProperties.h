//
//  WBRecord+CoreDataProperties.h
//  WorkBox
//
//  Created by ChenZS on 16/7/29.
//  Copyright © 2016年 f4Tech. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "WBRecord.h"

NS_ASSUME_NONNULL_BEGIN

@interface WBRecord (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *r_id;
@property (nullable, nonatomic, retain) NSNumber *u_id;
@property (nullable, nonatomic, retain) NSDate *startTime;
@property (nullable, nonatomic, retain) NSDate *endTime;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) NSNumber *enable;
@property (nullable, nonatomic, retain) NSString *describe;
@property (nullable, nonatomic, retain) NSNumber *t_id;
@property (nullable, nonatomic, retain) WBTag *tag;
@property (nullable, nonatomic, retain) WBUserInfo *user;

@end

NS_ASSUME_NONNULL_END
