//
//  I7PFastTableViewController.h
//  iOS7 Presentation
//
//  Created by Mark Danks on 24/10/2013.
//  Copyright (c) 2013 Apptivation. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "I7PSlowTableViewController.h"

/**
 * An implementation of a `UITableViewController` that uses
 * tableView:estimatedHeightForRowAtIndexPath: to improve loading performance.
 */
@interface I7PFastTableViewController : I7PSlowTableViewController

@end
