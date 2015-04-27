//
//  ViewController.m
//  GestureRecognizer
//
//  Created by José Alberto Esquivel on 4/27/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imageName = @"mickey.png";
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTap:)];
    
    doubleTap.numberOfTapsRequired = 2;
    [self.oSingleTap requireGestureRecognizerToFail: doubleTap];
    
    [self.oImage addGestureRecognizer: doubleTap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) handleDoubleTap: (UITapGestureRecognizer *) sender{
    _imageName = ([_imageName isEqual:@"mickey.png"] ? @"sheep.jpg": @"mickey.png" );
    CGPoint tapPoint = [sender locationInView: sender.view.superview];
    CGRect myFrame = _oImage.frame;
    myFrame.origin.x = tapPoint.x;
    myFrame.origin.y = tapPoint.y;
    _oImage.image = [UIImage imageNamed: _imageName];
    NSLog(@"%f %f", myFrame.origin.x, myFrame.origin.y);
    [_oImage setFrame:CGRectMake(myFrame.origin.x, myFrame.origin.y, _oImage.frame.size.width, _oImage.frame.size.height)];
    NSLog(@"%f %f", myFrame.origin.x, myFrame.origin.y);
}

- (IBAction) handlePinchGesture: (UIPinchGestureRecognizer *)sender
{
    CGFloat	factor = [sender scale];
    sender.view.transform = CGAffineTransformScale(sender.view.transform, factor, factor);
    sender.scale = 1;
}

- (IBAction) handlePanGesture: (UIPanGestureRecognizer *)sender
{
    CGPoint translate = [sender translationInView:self.view];
    
    
    CGRect newFrame = sender.view.frame;
    newFrame.origin.x += translate.x;
    newFrame.origin.y += translate.y;
    sender.view.frame = newFrame;
    
    if (sender.state == UIGestureRecognizerStateEnded)
        sender.view.frame = newFrame;
    
    [sender setTranslation: CGPointMake(0,0) inView:self.view];
}

- (IBAction) handleSingleTap: (UIGestureRecognizer *) sender{
    CGPoint tapPoint = [sender locationInView: sender.view];
    
    [UIView animateWithDuration:1 animations:^{
        self.oImage.center = tapPoint;
    }];
}

@end
