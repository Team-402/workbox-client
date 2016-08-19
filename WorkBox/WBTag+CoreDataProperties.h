//
//  WBTag+CoreDataProperties.h
//  WorkBox
//
//  Created by ChenZS on 16/7/29.
//  Copyright © 2016年 f4Tech. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "WBTag.h"

NS_ASSUME_NONNULL_BEGIN

@interface WBTag (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *t_id;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *enable;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *record;

@end

@interface WBTag (CoreDataGeneratedAccessors)

- (void)addRecordObject:(NSManagedObject *)value;
- (void)removeRecordObject:(NSManagedObject *)value;
- (void)addRecord:(NSSet<NSManagedObject *> *)values;
- (void)removeRecord:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
