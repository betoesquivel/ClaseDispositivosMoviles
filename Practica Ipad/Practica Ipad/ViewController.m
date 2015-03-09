//
//  ViewController.m
//  Practica Ipad
//
//  Created by José Alberto Esquivel on 3/9/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if	([UIImagePickerController isSourceTypeAvailable:
          UIImagePickerControllerSourceTypePhotoLibrary])	{
        _oPicButton.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectFoto:(UIButton *)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self	presentViewController:picker animated:YES completion:	NULL];
}

- (IBAction)takeFoto:(UIButton *)sender {
    UIImagePickerController	*picker	=	[[UIImagePickerController
                                          alloc]	init];
    picker.delegate	=	self;
    picker.sourceType	=	UIImagePickerControllerSourceTypeCamera;
    [self	presentViewController:picker animated:YES completion:
     NULL];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    _oImage.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    if (picker.sourceType == UIImagePickerControllerSourceTypeCamera){
        UIImageWriteToSavedPhotosAlbum(_oImage.image, nil, nil, nil);
    }
}

- (void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
