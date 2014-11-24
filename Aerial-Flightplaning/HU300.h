//
//  HU300.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 17.11.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HU300 : NSObject

-(void) initVariables:(NSDecimalNumber*)PilotWeighta and:(NSDecimalNumber*)COpilotWeighta and:(NSDecimalNumber*)MidPassangerWeighta and:(NSDecimalNumber*)MainTank and: (NSDecimalNumber*)AuxTank;

@property NSDecimalNumber* BasicEmptyWeight;
@property NSDecimalNumber* BasicEmptyWeightArmLong;
@property NSDecimalNumber* BasicEmptyWeightArmLat;
@property NSDecimalNumber* PilotWeight;
@property NSDecimalNumber* PilotLongArm;
@property NSDecimalNumber* PilotLatArm;
@property NSDecimalNumber* COpilotweight;
@property NSDecimalNumber* COpilotLongArm;
@property NSDecimalNumber* COpilotLatArm;
@property NSDecimalNumber* MidPassangerWeight;
@property NSDecimalNumber* MidPassangerLongArm;
@property NSDecimalNumber* MidPassagerLatArm;
@property NSDecimalNumber* GloveBoxWeight;
@property NSDecimalNumber* GloveBoxLongArm;
@property NSDecimalNumber* GloveBoxLatArm;
@property NSDecimalNumber* MainFuelTankLiter;
@property NSDecimalNumber* MainFuelTankLongArm;
@property NSDecimalNumber* MainFuelTankLatArm;
@property NSDecimalNumber* AuxFuelTankLiter;
@property NSDecimalNumber* AuxFuelTankLongArm;
@property NSDecimalNumber* AuxFuelTankLatArm;


@end
