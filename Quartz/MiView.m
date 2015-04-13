//
//  MiView.m
//  Quartz
//
//  Created by José Alberto Esquivel on 3/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "MiView.h"

@implementation MiView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor );
    if (_circleActivated) {
    // Circle
        CGLayerRef circleLayer = CGLayerCreateWithContext(context,	self.frame.size,NULL);
        CGContextRef circleContext	=	CGLayerGetContext(circleLayer);
        CGContextSetLineWidth(circleContext, 3.0);
        CGContextSetStrokeColorWithColor(circleContext, [UIColor whiteColor].CGColor);
        CGContextSetFillColorWithColor(circleContext, [UIColor yellowColor].CGColor );
        
        // Painting the circle
        CGRect circleRect	=	CGRectMake(5,0,100,100);
        CGContextFillEllipseInRect(circleContext,	circleRect);
        CGContextStrokeEllipseInRect(circleContext,	circleRect);
        
        CGContextDrawLayerInRect(context, self.frame, circleLayer);
    }

    if (_rectangleActivated){
        // Rectangle
        CGLayerRef rectangleLayer = CGLayerCreateWithContext(context,	self.frame.size,NULL);
        CGContextRef rectangleContext	=	CGLayerGetContext(rectangleLayer);
        CGContextSetLineWidth(rectangleContext, 3.0);
        CGContextSetStrokeColorWithColor(rectangleContext, [UIColor whiteColor].CGColor);
        CGContextSetFillColorWithColor(rectangleContext, [UIColor redColor].CGColor );
        
        // Painting the rectangle
        CGRect myRect	= CGRectMake(5,100,100,100);
        CGContextStrokeRect	(rectangleContext,	myRect);
        CGContextFillRect	(rectangleContext,	myRect);
        
        CGContextDrawLayerInRect(context, self.frame, rectangleLayer);
        
    }
    
    if (_triangleActivated) {
        // Triangle
        CGLayerRef triangleLayer = CGLayerCreateWithContext(context,	self.frame.size,NULL);
        CGContextRef triangleContext	=	CGLayerGetContext(triangleLayer);
        CGContextSetLineWidth(triangleContext, 3.0);
        CGContextSetStrokeColorWithColor(triangleContext, [UIColor whiteColor].CGColor);
        CGContextSetFillColorWithColor(triangleContext, [UIColor purpleColor].CGColor );

        // Painting the triangle
        CGContextMoveToPoint(triangleContext, 50,200);
        CGContextAddLineToPoint(triangleContext, 150, 400);
        CGContextAddLineToPoint(triangleContext, 5, 400);
        CGContextAddLineToPoint(triangleContext, 50, 200);
        CGContextClosePath(triangleContext);
        CGContextFillPath(triangleContext);
        
        CGContextMoveToPoint(triangleContext, 50,200);
        CGContextAddLineToPoint(triangleContext, 150, 400);
        CGContextAddLineToPoint(triangleContext, 5, 400);
        CGContextAddLineToPoint(triangleContext, 50, 200);
        CGContextClosePath(triangleContext);
        CGContextStrokePath(triangleContext);
        
        CGContextDrawLayerInRect(context, self.frame, triangleLayer);
        
    }
    
    
}

@end
