//
//  ViewController.h
//  MasterMine
//
//  Created by beto on 1/29/15.
//  Copyright (c) 2015 beto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// OUTLETS
// Test or Play selector
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

// Test board
@property (weak, nonatomic) IBOutlet UIView *lblTestBoard;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *gameBtns;


// Player board
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btns;

- (IBAction)changeSquare1:(UIButton *)sender;
- (IBAction)changeSquare2:(UIButton *)sender;
- (IBAction)changeSquare3:(UIButton *)sender;
- (IBAction)changeSquare4:(UIButton *)sender;

// Result board
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *resultBtns;

// Button actions
- (IBAction)checkGuess:(UIButton *)sender;
- (IBAction)startGame:(UIButton *)sender;
- (IBAction)segmentChanged:(UISegmentedControl *)sender;

// PROPERTIES
@property int tryCounter;
@property int correctColor;
@property int correctColorAndPosition;
@property NSMutableArray *playerColors;
@property NSMutableArray *gameColors;
@property NSMutableArray *colors;



@end

