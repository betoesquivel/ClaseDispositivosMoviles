//
//  DetailViewController.m
//  CollectionView
//
//  Created by José Alberto Esquivel on 4/23/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc] initWithImage:_image];
    _oScrollView.contentSize = imageView.frame.size;
    [_oScrollView addSubview:imageView];
    [_oScrollView setContentOffset:CGPointMake(200, 200) animated:YES];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
