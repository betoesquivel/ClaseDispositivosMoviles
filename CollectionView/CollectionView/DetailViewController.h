//
//  DetailViewController.h
//  CollectionView
//
//  Created by José Alberto Esquivel on 4/23/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *oScrollView;
@property (strong, nonatomic) UIImage *image;
@end
