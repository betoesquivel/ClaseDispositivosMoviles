//
//  MasterViewController.h
//  MasterDetail
//
//  Created by José Alberto Esquivel on 2/9/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) NSArray *array;

@end

