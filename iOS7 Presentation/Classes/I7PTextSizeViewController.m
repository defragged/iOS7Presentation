//
//  I7PTextSizeViewController.m
//  iOS7 Presentation
//
//  Created by Mark Danks on 24/10/2013.
//  Copyright (c) 2013 Apptivation. All rights reserved.
//

#import "I7PTextSizeViewController.h"

@interface I7PTextSizeViewController ()
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *labels;
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UILabel *subheadline;
@property (weak, nonatomic) IBOutlet UILabel *body;
@property (weak, nonatomic) IBOutlet UILabel *caption1;
@property (weak, nonatomic) IBOutlet UILabel *caption2;
@property (weak, nonatomic) IBOutlet UILabel *footnote;

@end

@implementation I7PTextSizeViewController

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
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(fontSizeChangedNotification:)
                                                name:UIContentSizeCategoryDidChangeNotification
                                              object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)fontSizeChangedNotification:(NSNotification*)notification{
    // Annoyingly, font styles in nibs don't refresh automatically
    self.headline.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    self.subheadline.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    self.body.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.caption1.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    self.caption2.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    self.footnote.font = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    
    [self.labels makeObjectsPerformSelector:@selector(invalidateIntrinsicContentSize)];
}

@end
