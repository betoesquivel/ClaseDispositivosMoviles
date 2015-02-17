//
//  Actividad.h
//  Calificaciones
//
//  Created by José Alberto Esquivel on 2/16/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actividad : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *comments;
@property NSInteger grade;

- (id) initWithName:(NSString*) n grade:(NSInteger) g comments:(NSString*) c;
- (id) initWithName:(NSString*) n;
@end
