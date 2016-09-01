//
//  WBTagsTableViewController.h
//  WorkBox
//
//  Created by ChenZS on 16/7/1.
//  Copyright © 2016年 f4Tech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class WBTagDetailViewController;

@interface WBTagsTableViewController : UITableViewController<NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) WBTagDetailViewController *detailViewController;

@end
