//
//  ViewController.m
//  MasterMine
//
//  Created by beto on 1/29/15.
//  Copyright (c) 2015 beto. All rights reserved.
//

#import "ViewController.h"
#include <stdlib.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // initialize game and players arrays
    self.playerColors = [[NSMutableArray alloc] init];
    self.gameColors = [[NSMutableArray alloc] init];
    self.colors = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < 4; i++){
        [self.playerColors addObject:[NSNumber numberWithInteger:(NSInteger) 0]];
    }
    for (NSInteger i = 0; i < 4; i++){
        [self.gameColors addObject:[NSNumber numberWithInteger:(NSInteger) 0]];
    }
    
    [self.colors addObject: [UIColor blueColor]];
    [self.colors addObject: [UIColor greenColor]];
    [self.colors addObject: [UIColor cyanColor]];
    [self.colors addObject: [UIColor yellowColor]];
    [self.colors addObject: [UIColor magentaColor]];
    [self.colors addObject: [UIColor orangeColor]];

    //JUST CORRECT COLOR COLOR
    [self.colors addObject: [UIColor whiteColor]];
    //CORRECT POSITION COLOR
    [self.colors addObject: [UIColor redColor]];
    //DEFAULT
    [self.colors addObject: [UIColor grayColor]];
    
    // Log all created arrays:
    NSLog(@"color array %@", self.colors);
    NSLog(@"player array %@", self.playerColors);
    NSLog(@"game array %@", self.gameColors);
    [self resetGame];
    
    // UIColor *color = [UIColor grayColor];
    //[self.colors addObject: [UIColor grayColor]];
    
    
}

- (void)randomizeGameColors {
    NSMutableSet *usedColors = [NSMutableSet setWithCapacity:6];
    NSNumber *num;
    NSInteger random;
    for (NSInteger i = 0; i < 4; i++) {
        do{
            random = arc4random_uniform(5);
            num = [NSNumber numberWithInteger: random];
        }while([usedColors containsObject:num]);
        [usedColors addObject: num];
        [self.gameColors replaceObjectAtIndex:i withObject:num];
        NSLog(@"random color at %d: %d %d my gen num %@", i, [[self.gameColors objectAtIndex: i] intValue],random, num);
    }
}

- (BOOL)colorsAreValid {
    NSCountedSet *selected = [NSCountedSet setWithArray:_playerColors];
    for (NSNumber *num in selected){
        if ([selected countForObject:num]>1) return NO;
    }
    return YES;
}

- (void) resetResultButtons{
    for (UIButton *btn in _resultBtns){
        btn.backgroundColor = [_colors objectAtIndex:8];
    }
}
- (void) endGame{
    // disable buttons
    for (UIButton *btn in _resultBtns){
        [btn setEnabled:NO];
    }
    for (UIButton *btn in _gameBtns){
        [btn setEnabled:NO];
    }
    for (UIButton *btn in _btns){
        [btn setEnabled:NO];
    }
    // show alert
    NSString *title = @"Felicidades!";
    NSString *msg = [[NSString alloc] initWithFormat:@"Has ganado con %d intentos! ",_tryCounter];
    NSString *okText = @"Ok";
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText style:UIAlertActionStyleCancel handler:nil];
    [alert addAction: okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    [self resetGame];
}
- (void) displayInvalidAlert{
    // show alert
    NSString *title = @"Atención!";
    NSString *msg = @"Recuerda que no puedes tener colores repetidos";
    NSString *okText = @"Intentaré otra vez";
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText style:UIAlertActionStyleCancel handler:nil];
    [alert addAction: okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}
- (void)resetGame {
    // enable buttons
    for (UIButton *btn in _resultBtns){
        [btn setEnabled:YES];
    }
    for (UIButton *btn in _gameBtns){
        [btn setEnabled:YES];
    }
    for (UIButton *btn in _btns){
        [btn setEnabled:YES];
    }
    
    // hide labels
    
    // Initialize tryCounter and correctColors and correctColorsAndPosition in 0
    self.tryCounter = self.correctColor = self.correctColorAndPosition = 0;
    
    // Make sure 'play' is selected in the segmentedView
    self.segment.selectedSegmentIndex = 0;
    
    // color squares
    NSInteger i = 0;
    for (UIButton *btn in self.btns) {
        btn.backgroundColor = [self.colors objectAtIndex:[[self.playerColors objectAtIndex:i] intValue] ];
        i += 1;
    }
    i = 0;
    // randomize the colors of the game
    [self randomizeGameColors];
    // paint with the colors that are at that index
    for (UIButton *btn in self.gameBtns) {
        btn.backgroundColor = [self.colors objectAtIndex:[[self.gameColors objectAtIndex:i] intValue]];
        i += 1;
    }
    
    // reset resultbtns
    [self resetResultButtons];
    
    // Hide testing board
    self.lblTestBoard.hidden = YES;
}

- (void)colorResultBtns{
    int perfect = _correctColorAndPosition;
    int partial = _correctColor;
    for (UIButton *btn in _resultBtns){
        if (perfect > 0){
            btn.backgroundColor = [_colors objectAtIndex:7];
            perfect--;
        }else if (partial > 0){
            btn.backgroundColor = [_colors objectAtIndex:6];
            partial--;
        }else{
            btn.backgroundColor = [_colors objectAtIndex:8];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkGuess:(UIButton *)sender {
    // check if valid color selection
    if(![self colorsAreValid]) {
        [self displayInvalidAlert];
        // this does not count as a try
        return;
    }
    // increment the tries
    _tryCounter += 1;
    
    // Copy arrays
    NSMutableArray *playerColors = [[NSMutableArray alloc] initWithArray:_playerColors copyItems:YES];
    NSMutableArray *gameColors = [[NSMutableArray alloc] initWithArray:_gameColors copyItems:YES];

    NSNumber *alreadyFoundColorNumber = [NSNumber numberWithInt:8];

    NSLog(@"guessing...");
    NSLog(@"check if there are any correctColorAndPosition...");
    for (NSInteger i = 0; i<4; i++){
        NSNumber *player, *game;
        player = [playerColors objectAtIndex:i];
        game = [gameColors objectAtIndex:i];
        if ( player == game ){
            NSLog(@"Found one completely correct!");
            self.correctColorAndPosition += 1;
            
            //reset those colors
            [playerColors replaceObjectAtIndex:i withObject: alreadyFoundColorNumber];
            [gameColors replaceObjectAtIndex:i withObject: alreadyFoundColorNumber];
        }
    }
    NSLog(@"Found %d completely correct!", self.correctColorAndPosition);
    NSLog(@"Searching for partial matches...");
    
    for (NSInteger i = 0; i < 4; i++){
        for(NSInteger gameI = 0; gameI < 4 && [playerColors objectAtIndex:i] != alreadyFoundColorNumber; gameI++){
            NSNumber *gameNum = [gameColors objectAtIndex:gameI];
            if (gameNum != alreadyFoundColorNumber){
                if ([playerColors objectAtIndex:i] == gameNum){
                    NSLog(@"Found a partial match at %d and %d!", gameI, i);
                    self.correctColor  += 1;
                    //reset those colors
                    [playerColors replaceObjectAtIndex:i withObject: alreadyFoundColorNumber];
                    [gameColors replaceObjectAtIndex:gameI withObject: alreadyFoundColorNumber];
                }
            }
        }
    }
    
    // I finished
    NSLog(@"Finished and found: %d perfect matches, %d partial matches", _correctColorAndPosition, _correctColor );
    
    // paint squares
    [self colorResultBtns];
    
    // show alert if he won and disable all buttons
    if ( _correctColorAndPosition == 4) {
        [self endGame];
    }
    // reset variables
    _correctColorAndPosition = _correctColor = 0;
    
    
}

- (IBAction)startGame:(UIButton *)sender {
    NSLog(@"starting the game...");
    [self resetGame];
}

- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    NSLog(@"segment just changed...");
    
    if(sender.selectedSegmentIndex == 0){
        self.lblTestBoard.hidden = YES;
    } else {
        self.lblTestBoard.hidden = NO;
    }
}

- (NSInteger)getNextColorIndex:(NSInteger)btnIndex{
    // update index
    NSInteger nextColor = ([[self.playerColors objectAtIndex:btnIndex] intValue] + 1) % 6;
    [self.playerColors replaceObjectAtIndex:btnIndex withObject:[NSNumber numberWithInt:nextColor]];
    
    return [[self.playerColors objectAtIndex:btnIndex] intValue];
}


- (IBAction)changeSquare1:(UIButton *)sender {
    sender.backgroundColor = [self.colors objectAtIndex: [self getNextColorIndex:0]];
}
- (IBAction)changeSquare2:(UIButton *)sender {
    sender.backgroundColor = [self.colors objectAtIndex: [self getNextColorIndex:1]];
}
- (IBAction)changeSquare3:(UIButton *)sender {
    sender.backgroundColor = [self.colors objectAtIndex: [self getNextColorIndex:2]];
}
- (IBAction)changeSquare4:(UIButton *)sender {
    sender.backgroundColor = [self.colors objectAtIndex: [self getNextColorIndex:3]];
}

@end
