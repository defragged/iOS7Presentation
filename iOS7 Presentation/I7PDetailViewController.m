//
//  I7PDetailViewController.m
//  iOS7 Presentation
//
//  Created by Mark Danks on 24/10/2013.
//  Copyright (c) 2013 Apptivation. All rights reserved.
//

#import "I7PDetailViewController.h"

@interface I7PDetailViewController ()
- (void)configureView;
@end

@implementation I7PDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
