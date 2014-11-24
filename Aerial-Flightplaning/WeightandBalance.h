//
//  WeightandBalance.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 27.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlobalState.h"

@interface WeightandBalance : NSObject

@property NSInteger *BasicEmptyWeight;
@property NSInteger *BasicArm;
@property NSInteger *weigthPilot;
@property NSInteger *armPilot;
@property NSInteger *weightCoPilot;
@property NSInteger *armCoPilot;


@end