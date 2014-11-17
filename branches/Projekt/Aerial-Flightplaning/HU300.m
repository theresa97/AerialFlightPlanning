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


-(void)initVariables:(NSDecimalNumber*)PilotWeighta and:(NSDecimalNumber*)COpilotWeighta and:(NSDecimalNumber*)MidPassangerWeighta and:(NSDecimalNumber*)MainTank and: (NSDecimalNumber*)AuxTank{
    
    BasicEmptyWeight = [[NSDecimalNumber alloc]init];
    
    BasicEmptyWeightArmLat = [[NSDecimalNumber alloc]initWithDouble:0.4];
    BasicEmptyWeightArmLong = [[NSDecimalNumber alloc]initWithDouble:100.9];
    PilotWeight = PilotWeighta;
     PilotLongArm = [[NSDecimalNumber alloc]initWithDouble:83.2];
     PilotLatArm = [[NSDecimalNumber alloc]initWithDouble:-13.8];
    COpilotweight = COpilotWeighta;
     COpilotLongArm = [[NSDecimalNumber alloc]initWithDouble:83.2];
    COpilotLatArm = [[NSDecimalNumber alloc]initWithDouble:13.8];
    MidPassangerWeight = [[NSDecimalNumber alloc]init];
    MidPassangerLongArm = [[NSDecimalNumber alloc]initWithDouble:80];
     MidPassagerLatArm = [[NSDecimalNumber alloc]initWithDouble:0.75];
    GloveBoxWeight = [[NSDecimalNumber alloc]init];//wird noch benötig
     GloveBoxLongArm = [[NSDecimalNumber alloc]init];//wird noch benötigt
     GloveBoxLatArm = [[NSDecimalNumber alloc]init];
    MainFuelTankLatArm = [[NSDecimalNumber alloc]initWithDouble:18];
     MainFuelTankLongArm  = [[NSDecimalNumber alloc]initWithDouble:107];
    MainFuelTankLiter = MainTank;
    AuxFuelTankLiter = AuxTank;
     AuxFuelTankLatArm = [[NSDecimalNumber alloc]initWithDouble:-17.2];
     AuxFuelTankLongArm = [[NSDecimalNumber alloc]initWithDouble:107];
    
}




@end
