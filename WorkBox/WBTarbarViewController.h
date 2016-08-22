//
//  WBTarbarViewController.h
//  WorkBox
//
//  Created by ChenZS on 16/8/3.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import "BaseTarbarViewController.h"

@class WBTagsTableViewController;
@class WBRecordViewController;
@class WBPersonalViewController;

@interface WBTarbarViewController : BaseTarbarViewController

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) WBTagsTableViewController *tagsViewController;
@property (nonatomic, strong) WBRecordViewController *recordViewController;
@property (nonatomic, strong) WBPersonalViewController *personalViewController;

@end
