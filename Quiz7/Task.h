//
//  Task.h
//  Quiz7
//
//  Created by Michael Vitone on 3/18/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Task : NSManagedObject

@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic) float urgency;
@property (nonatomic, retain) NSString * name;

@end
