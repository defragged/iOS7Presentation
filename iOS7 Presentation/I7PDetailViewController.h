//
//  I7PDetailViewController.h
//  iOS7 Presentation
//
//  Created by Mark Danks on 24/10/2013.
//  Copyright (c) 2013 Apptivation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface I7PDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
