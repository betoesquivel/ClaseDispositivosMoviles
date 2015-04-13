//
//  FirstViewController.h
//  PickerView
//
//  Created by José Alberto Esquivel on 4/13/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *oPicker;
@property (weak, nonatomic) IBOutlet UITextField *oTextField;


@end

