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
    I7PMasterViewControllerRowFastTable,
    I7PMasterViewControllerRowImageTint,
    I7PMasterViewControllerRowText,
    
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
    
    // Seed the random number generator (once only)
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        srand48(time(0));
    });
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
    
    }else if(I7PMasterViewControllerRowFastTable == indexPath.row){
        cell.textLabel.text = @"Fast Table View";
    
    }else if(I7PMasterViewControllerRowImageTint == indexPath.row){
        cell.textLabel.text = @"Image Tinting";
    
    }else if(I7PMasterViewControllerRowText == indexPath.row){
        cell.textLabel.text = @"Text Styles";
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
    
    }else if(I7PMasterViewControllerRowFastTable == indexPath.row){
        [self performSegueWithIdentifier:@"PushFastTable"
                                  sender:tableView];
    
    }else if(I7PMasterViewControllerRowImageTint == indexPath.row){
        [self performSegueWithIdentifier:@"PushImage"
                                  sender:tableView];
    
    }else if(I7PMasterViewControllerRowText == indexPath.row){
        [self performSegueWithIdentifier:@"PushText"
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
