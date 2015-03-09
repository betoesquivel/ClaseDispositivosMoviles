//
//  ViewController.h
//  Practica Ipad
//
//  Created by José Alberto Esquivel on 3/9/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *oImage;
@property (weak, nonatomic) IBOutlet UIButton *oPicButton;

- (IBAction)takeFoto:(UIButton *)sender;

- (IBAction)selectFoto:(UIButton *)sender;

@end

