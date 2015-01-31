//
//  TransparentView.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 30.01.15.
//  Copyright (c) 2015 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransparentView : UIView

@property (weak, nonatomic) NSNumber* cgdif;
@property (weak, nonatomic) NSNumber* test;
@property BOOL noDrwaing;

-(void)setNums:(NSNumber*)cg setDrawingDisabled:(BOOL)drawing;

@end
