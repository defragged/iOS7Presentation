//
//  I7PFastTableViewController
//  iOS7 Presentation
//
//  Created by Mark Danks on 24/10/2013.
//  Copyright (c) 2013 Apptivation. All rights reserved.
//

#import "I7PFastTableViewController.h"

@interface I7PFastTableViewController ()

@end

@implementation I7PFastTableViewController

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // Cells range between 44 + (1…100), so average 50
    return 44 + 50;
}

@end
