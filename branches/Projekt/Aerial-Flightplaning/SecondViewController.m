//
//  SecondViewController.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 12.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "SecondViewController.h"
#import "HU300.h"
#import <QuartzCore/QuartzCore.h>
@interface SecondViewController ()

@end


@implementation SecondViewController{
    CGPoint cgNeutralposition;
}
@synthesize waterLevel;
@synthesize drawView;

- (void)viewDidLoad {
    [super viewDidLoad];
    cgNeutralposition = CGPointMake(30,  320);
    
    
    
   
    //CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
   // CGContextFillEllipseInRect(contextRef, CGRectMake(30, 320, 5, 5));
    //[self.view addSubview:drawView];

    

    UIGraphicsBeginImageContext(waterLevel.frame.size);
    
    
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    
    [bezierPath moveToPoint: CGPointMake(30, 320)];
    [bezierPath addLineToPoint: CGPointMake(255, 320)];
    [bezierPath addLineToPoint: CGPointMake(355, 245)];
    [bezierPath addLineToPoint: CGPointMake(310, 20)];
    [bezierPath addLineToPoint: CGPointMake(80, 20)];
    [bezierPath addLineToPoint: CGPointMake(80,20)];
    [bezierPath addLineToPoint: CGPointMake(30, 320)];
    [bezierPath closePath];

    
    //links unten anfagn (x koordinate) beginnt bei -2,5 (30,320)
    //links unten anfang (y koordinate) beginnt bei 101  (30,320)
   // CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    //CGContextFillEllipseInRect(contextRef, CGRectMake(30, 320, 5, 5));
    //hier weiter mit Punkte einezeichnen Bzw in Berechnen Methode 1 inch = 25 punkte
    
    [UIColor.greenColor setStroke];
    bezierPath.lineWidth = 4;
    
    [bezierPath stroke];
    
    UIBezierPath* bezierPathDiagram = UIBezierPath.bezierPath;
    [bezierPathDiagram moveToPoint:CGPointMake(0, 0)];
    [bezierPathDiagram addLineToPoint:CGPointMake(0, 320)];
    [bezierPathDiagram closePath];
     bezierPathDiagram.lineWidth = 4;
    [UIColor.blackColor setStroke];
    [bezierPathDiagram stroke];
    
    UIBezierPath* bezierPathDiagramHorizontal = UIBezierPath.bezierPath;
    for (NSInteger i = 1; i<14; i++) {
        NSInteger count = i*25;
        [bezierPathDiagramHorizontal moveToPoint:CGPointMake(0,345-count)];
        [bezierPathDiagramHorizontal addLineToPoint:CGPointMake(360,345-count)];
    }
    bezierPathDiagramHorizontal.lineWidth = 1;
    [UIColor.blackColor setStroke];
    [bezierPathDiagramHorizontal stroke];

    
    UIBezierPath* bezierPathDiagramVertical = UIBezierPath.bezierPath;
    [bezierPathDiagramVertical moveToPoint:CGPointMake(30,350)];
    [bezierPathDiagramVertical addLineToPoint:CGPointMake(365,350)];
    [bezierPathDiagramVertical moveToPoint:CGPointMake(30,350)];
    [bezierPathDiagramVertical addLineToPoint:CGPointMake(30,335)];
   
    
    
    //hier aufgehört weiter bei zeichnen der einzelnen stricke für die schwerpunkte
    for (NSInteger i = 1; i<14; i++) {
        //NSLog(@"schleife");
        NSInteger count = i*25;
        [bezierPathDiagramVertical moveToPoint:CGPointMake(5+count,350)];
        [bezierPathDiagramVertical addLineToPoint:CGPointMake(5+count,0)];
        

    }
    
    [bezierPathDiagramVertical closePath];
    bezierPathDiagramVertical.lineWidth = 2;
    [UIColor.blackColor setStroke];
    [bezierPathDiagramVertical stroke];
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddPath(context,bezierPath.CGPath);
    CGContextAddPath(context, bezierPathDiagram.CGPath);
    waterLevel.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [self.view addSubview:waterLevel];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
}


- (IBAction)buttonBerechnen:(id)sender {
    HU300 *neueBerechnung = [[HU300 alloc]init];
    [neueBerechnung initVariables:[NSDecimalNumber decimalNumberWithString:self.textFieldGewichtPilot.text]and:[NSDecimalNumber decimalNumberWithString:self.textFieldGewichtCoPilot.text] and:[NSDecimalNumber decimalNumberWithString:self.textFieldGewichtPassagier.text] and:[NSDecimalNumber decimalNumberWithString:self.textFieldSpritStart.text] and:[NSDecimalNumber decimalNumberWithString:self.textFieldSpritEnde.text]];
    
    NSNumber * momentOld = [NSNumber numberWithDouble:[neueBerechnung.self.BasicEmptyWeightArmLong doubleValue]*[neueBerechnung.self.BasicEmptyWeight doubleValue]];
    //NSNumber *testnum =[NSNumber numberWithDouble:[neueBerechnung.self.PilotWeight doubleValue]];
    
    //NSNumber *test1 =[NSNumber numberWithDouble:[neueBerechnung.self.COpilotweight doubleValue]*[neueBerechnung.self.COpilotLongArm doubleValue] ];
    
    
    NSNumber *loadMoment = [NSNumber numberWithFloat:[neueBerechnung.self.PilotWeight floatValue]*[neueBerechnung.self.PilotLongArm floatValue]+[neueBerechnung.self.COpilotweight floatValue]*[neueBerechnung.self.COpilotLongArm doubleValue]+[neueBerechnung.self.MidPassangerWeight doubleValue]*[neueBerechnung.self.MidPassangerLongArm floatValue]+0.79*[neueBerechnung.self.FuelStart floatValue]*[neueBerechnung.self.MainFuelTankLongArm floatValue]+[neueBerechnung.self.GloveBoxWeight floatValue]*[neueBerechnung.self.GloveBoxLongArm floatValue]];
    NSNumber * momentNew =[NSNumber numberWithDouble:[momentOld doubleValue] + [loadMoment doubleValue]];
    NSNumber * WeightNew = [NSNumber numberWithDouble:[neueBerechnung.self.BasicEmptyWeight doubleValue]+ [neueBerechnung.self.PilotWeight doubleValue]+[neueBerechnung.self.COpilotweight doubleValue]+ [neueBerechnung.self.MidPassangerWeight doubleValue]+[neueBerechnung.self.GloveBoxWeight doubleValue]+[neueBerechnung.self.FuelStart doubleValue]*0.79];
    NSNumber *CGnew = [NSNumber numberWithDouble:[momentNew doubleValue] / [WeightNew doubleValue]];
   [self.labelNeuerCG setText:[NSString stringWithFormat:@"%@",CGnew]];
    
    //Berechung CG mit verbleibenden Sprit
    NSNumber *MomentWithoutFuel =[NSNumber numberWithFloat:[neueBerechnung.self.PilotWeight floatValue]*[neueBerechnung.self.PilotLongArm floatValue]+[neueBerechnung.self.COpilotweight floatValue]*[neueBerechnung.self.COpilotLongArm doubleValue]+[neueBerechnung.self.MidPassangerWeight doubleValue]*[neueBerechnung.self.MidPassangerLongArm floatValue]+0.79*[neueBerechnung.self.FuelEnd floatValue]*[neueBerechnung.self.MainFuelTankLongArm floatValue]+[neueBerechnung.self.GloveBoxWeight floatValue]*[neueBerechnung.self.GloveBoxLongArm floatValue]];
    NSNumber *momentNewWithoutFuel = [NSNumber numberWithDouble:[momentOld doubleValue]+ [MomentWithoutFuel doubleValue]];
    NSNumber *weigthWithoutFuel =[NSNumber numberWithDouble:[neueBerechnung.self.BasicEmptyWeight doubleValue]+ [neueBerechnung.self.PilotWeight doubleValue]+[neueBerechnung.self.COpilotweight doubleValue]+ [neueBerechnung.self.MidPassangerWeight doubleValue]+[neueBerechnung.self.GloveBoxWeight doubleValue]+[neueBerechnung.self.FuelEnd doubleValue]*0.79];
    
    NSNumber *CGWithoutFuel = [NSNumber numberWithDouble:[momentNewWithoutFuel doubleValue] / [weigthWithoutFuel doubleValue]];
    
    [self.labelCGOld setText:[NSString stringWithFormat:@"%@",CGWithoutFuel]];
    
    NSNumber *cgLongmax = [NSNumber numberWithDouble:101.0];
    NSNumber *cgLatmax = [NSNumber numberWithDouble:-2.5];
    
    NSNumber *cgdif = [NSNumber numberWithDouble:[cgLongmax doubleValue] - [CGWithoutFuel doubleValue]];
    
   
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    
    UIGraphicsBeginImageContext(CGSizeMake(500, 400));
    //CGContextFillRect(contextRef, CGRectMake(30, 320, 15, 15));
    CGContextFillEllipseInRect(contextRef, CGRectMake(30, 320, 15, 15));
    
    waterLevel.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
   
    
   
    
}


@end
