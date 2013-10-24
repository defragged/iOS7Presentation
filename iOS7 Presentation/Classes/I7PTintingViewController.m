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

- (IBAction)tintButtonPressed:(id)sender {
    self.view.tintColor = [[self class]randomColor];
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
