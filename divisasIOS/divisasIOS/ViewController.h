//
//  ViewController.h
//  divisasIOS
//
//  Created by alumno on 15/01/15.
//  Copyright (c) 2015 Roberto Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfTipoCambio;
@property (weak, nonatomic) IBOutlet UITextField *tfPesos;
@property (weak, nonatomic) IBOutlet UITextField *tfDolares;
- (IBAction)bCalcular:(id)sender;

@end

