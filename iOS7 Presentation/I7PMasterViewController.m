//
//  I7PMasterViewController.m
//  iOS7 Presentation
//
//  Created by Mark Danks on 24/10/2013.
//  Copyright (c) 2013 Apptivation. All rights reserved.
//

#import "I7PMasterViewController.h"

typedef NS_ENUM(NSUInteger, I7PMasterViewControllerRow)
{
    I7PMasterViewControllerRowTint,
    I7PMasterViewControllerRowSlowTable,
    
    I7PMasterViewControllerRowCount,
};

@interface I7PMasterViewController ()

@end

@implementation I7PMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return I7PMasterViewControllerRowCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    if(I7PMasterViewControllerRowTint == indexPath.row){
        cell.textLabel.text = @"Tinting";
    
    }else if(I7PMasterViewControllerRowSlowTable == indexPath.row){
        cell.textLabel.text = @"Slow Table View";
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(I7PMasterViewControllerRowTint == indexPath.row){
        [self performSegueWithIdentifier:@"PushTintSegue"
                                  sender:tableView];
    
    }else if(I7PMasterViewControllerRowSlowTable == indexPath.row){
        [self performSegueWithIdentifier:@"PushSlowTable"
                                  sender:tableView];
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}

@end
