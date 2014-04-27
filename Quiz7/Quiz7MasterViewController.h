//
//  Quiz7MasterViewController.h
//  Quiz7
//
//  Created by Michael Vitone on 3/18/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface Quiz7MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
