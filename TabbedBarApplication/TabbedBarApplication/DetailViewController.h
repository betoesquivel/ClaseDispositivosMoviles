//
//  DetailViewController.h
//  TabbedBarApplication
//
//  Created by José Alberto Esquivel on 4/6/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *oLabel;

@property (strong, nonatomic) NSString *item;
@end
