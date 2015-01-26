//
//  HU300.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 17.11.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "HU300.h"

@implementation HU300{

}
@synthesize BasicEmptyWeight;
@synthesize BasicEmptyWeightArmLat;
@synthesize BasicEmptyWeightArmLong;
@synthesize PilotWeight;
@synthesize PilotLongArm;
@synthesize PilotLatArm;
@synthesize COpilotweight;
@synthesize COpilotLongArm;
@synthesize COpilotLatArm;
@synthesize MidPassangerWeight;
@synthesize MidPassangerLongArm;
@synthesize MidPassagerLatArm;
@synthesize GloveBoxWeight;
@synthesize GloveBoxLongArm;
@synthesize GloveBoxLatArm;
@synthesize MainFuelTankLatArm;
@synthesize MainFuelTankLongArm;
@synthesize MainFuelTankLiter;
@synthesize AuxFuelTankLiter;
@synthesize AuxFuelTankLatArm;
@synthesize AuxFuelTankLongArm;
@synthesize CGLatLimit;
@synthesize CGLongLimit;
@synthesize FuelEnd;
@synthesize FuelStart;


-(void)initVariables:(NSDecimalNumber*)PilotWeighta and:(NSDecimalNumber*)COpilotWeighta and:(NSDecimalNumber*)MidPassangerWeighta and:(NSDecimalNumber*)FuelAtStart and: (NSDecimalNumber*)FuelAtEnd{
    
    BasicEmptyWeight = [[NSDecimalNumber alloc]initWithDouble:1127];
    
    BasicEmptyWeightArmLat = [[NSDecimalNumber alloc]initWithDouble:0.4];
    BasicEmptyWeightArmLong = [[NSDecimalNumber alloc]initWithDouble:100.9];
    PilotWeight = PilotWeighta;
     PilotLongArm = [[NSDecimalNumber alloc]initWithDouble:83.2];
     PilotLatArm = [[NSDecimalNumber alloc]initWithDouble:-13.8];
    COpilotweight = COpilotWeighta;
     COpilotLongArm = [[NSDecimalNumber alloc]initWithDouble:83.2];
    COpilotLatArm = [[NSDecimalNumber alloc]initWithDouble:13.8];
    MidPassangerWeight = MidPassangerWeighta;
    MidPassangerLongArm = [[NSDecimalNumber alloc]initWithDouble:80];
     MidPassagerLatArm = [[NSDecimalNumber alloc]initWithDouble:0.75];
    GloveBoxWeight = [[NSDecimalNumber alloc]initWithDouble:50.4];//wird noch benötig
     GloveBoxLongArm = [[NSDecimalNumber alloc]initWithDouble:50.4];//wird noch benötigt
     GloveBoxLatArm = [[NSDecimalNumber alloc]initWithDouble:0.75];
    MainFuelTankLatArm = [[NSDecimalNumber alloc]initWithDouble:18];
     MainFuelTankLongArm  = [[NSDecimalNumber alloc]initWithDouble:107];
     AuxFuelTankLatArm = [[NSDecimalNumber alloc]initWithDouble:-17.2];
     AuxFuelTankLongArm = [[NSDecimalNumber alloc]initWithDouble:107];
    CGLatLimit = [[NSDecimalNumber alloc]initWithDouble:107];
    FuelEnd = FuelAtEnd;
    FuelStart = FuelAtStart;
}




@end
