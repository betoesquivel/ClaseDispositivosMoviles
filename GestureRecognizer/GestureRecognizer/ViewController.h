//
//  ViewController.h
//  GestureRecognizer
//
//  Created by José Alberto Esquivel on 4/27/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *oImage;
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *oSingleTap;
@end

