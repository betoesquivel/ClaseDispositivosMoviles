//
//  ViewController.h
//  Quartz
//
//  Created by José Alberto Esquivel on 3/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UISwitch) NSArray *oSwitches;
@property NSInteger TRIANGLE;
@property NSInteger RECTANGLE;
@property NSInteger CIRCLE;

@end

