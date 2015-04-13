//
//  ViewController.m
//  notifications
//
//  Created by José Alberto Esquivel on 3/19/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filePath = [self dataFilePath];
    if ([[NSFileManager defaultManager]fileExistsAtPath:filePath ]){
        _datos = [[NSArray alloc] initWithContentsOfFile:filePath];
        for (int i = 0; i < 4; i++){
            ((UITextField*)[_oDatos objectAtIndex:i]).text = _datos[i];
        }

    }
    
    UIApplication *app = [UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter]
     addObserver: self
     selector: @selector(aplicacionTerminara:)
     name: UIApplicationDidEnterBackgroundNotification
     object: app];
}


- (NSString*) dataFilePath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docsDirectory = [paths objectAtIndex:0];
    return [docsDirectory stringByAppendingString:@"archivoDatos.plist"];
    
}

-	(void)	aplicacionTerminara:	(NSNotification	*)	notification
{
    NSMutableArray	*listaDatos =	[[NSMutableArray alloc]	init];
    [listaDatos	addObject:	((UITextField*)_oDatos[0]).text];
	[listaDatos addObject:	((UITextField*)_oDatos[1]).text];
    [listaDatos addObject:	((UITextField*)_oDatos[2]).text];
    [listaDatos addObject:	((UITextField*)_oDatos[3]).text];
    
    [listaDatos writeToFile: [self dataFilePath]atomically:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
