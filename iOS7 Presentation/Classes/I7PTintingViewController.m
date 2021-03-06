//
//  I7PTintingViewController.m
//  iOS7 Presentation
//
//  Created by Mark Danks on 24/10/2013.
//  Copyright (c) 2013 Apptivation. All rights reserved.
//

#import "I7PTintingViewController.h"

@interface I7PTintingViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


@end

@implementation I7PTintingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self.activityIndicator startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tintButtonPressed:(id)sender {
    self.view.tintColor = [[self class]randomColor];
    
    // Cheating a little: The tintColour property tints the edge, which isn't obvious
    self.toggle.onTintColor = self.view.tintColor;
    
    self.activityIndicator.color = self.view.tintColor;
    
    self.pageControl.currentPageIndicatorTintColor = self.view.tintColor;
}

- (IBAction)retintContainerButtonPressed:(id)sender {
    self.containerView.tintColor = [[self class]randomColor];
}

- (IBAction)clearButtonPressed:(id)sender {
    self.containerView.tintColor = nil;
}

+(UIColor*)randomColor{
    return [UIColor colorWithRed:drand48()
                           green:drand48()
                            blue:drand48()
                           alpha:1];
}

@end
