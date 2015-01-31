//
//  TransparentView.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 30.01.15.
//  Copyright (c) 2015 Matthias Oberegger. All rights reserved.
//

#import "TransparentView.h"


@implementation TransparentView
@synthesize cgdif,noDrwaing,test;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    if (noDrwaing==YES) {
        CGContextRef contextRef = UIGraphicsGetCurrentContext();
        UIColor *c = [UIColor blueColor] ;
        CGContextSetFillColorWithColor(contextRef,[c CGColor]);
        CGContextFillEllipseInRect(contextRef, CGRectMake(100, [cgdif doubleValue]*25, 15, 15));

    }
    

    }
-(void)setNums:(NSNumber *)cg setDrawingDisabled:(BOOL)drawing{
    cgdif=cg;
    noDrwaing=drawing;
}

@end
