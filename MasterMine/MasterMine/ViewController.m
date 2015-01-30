//
//  ViewController.m
//  MasterMine
//
//  Created by beto on 1/29/15.
//  Copyright (c) 2015 beto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self resetGame];
    
    // Initialize array colors with 6 different colors;
    // code snippet extracted from: http://goo.gl/VomwHj
    float increment = 0.15;
    float hue = 0.0;
    for (int i; i < 7; i++) {
        hue += increment;
        UIColor *color = [UIColor colorWithHue:hue
                                    saturation:1.0
                                    brightness:1.0
                                         alpha:1.0];
        hue += increment;
        [self.colors addObject:color];
    }
    
}

- (void)resetGame {
    // Initialize tryCounter and correctColors and correctColorsAndPosition in 0
    self.tryCounter = self.correctColor = self.correctColorAndPosition = 0;
    
    // Make sure 'play' is selected in the segmentedView
    self.segment.selectedSegmentIndex = 0;
    
    // Hide testing board
    self.lblTestBoard.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkGuess:(UIButton *)sender {
    NSLog(@"guessing...");
}

- (IBAction)startGame:(UIButton *)sender {
    NSLog(@"starting the game...");
    [self resetGame];
}

- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    NSLog(@"segment just changed...");
    
    if(sender.selectedSegmentIndex == 0){
        self.lblTestBoard.hidden = YES;
        [self resetGame];
    } else {
        self.lblTestBoard.hidden = NO;
    }
}




- (IBAction)changeSquare1:(UIButton *)sender {
    
}
- (IBAction)changeSquare2:(UIButton *)sender {
}
- (IBAction)changeSquare3:(UIButton *)sender {
}
- (IBAction)changeSquare4:(UIButton *)sender {
}

@end
