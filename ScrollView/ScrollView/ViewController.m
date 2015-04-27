//
//  ViewController.m
//  ScrollView
//
//  Created by José Alberto Esquivel on 4/20/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *sheepImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sheep.jpg" ]];
    _oScrollView.contentSize = sheepImage.frame.size;
    [_oScrollView addSubview:sheepImage];
    [_oScrollView setContentOffset:CGPointMake(200, 200) animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
