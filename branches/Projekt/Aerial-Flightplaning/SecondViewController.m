//
//  SecondViewController.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 12.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end


@implementation SecondViewController{

}
@synthesize waterLevel;

- (void)viewDidLoad {
    [super viewDidLoad];
    

    UIGraphicsBeginImageContext(waterLevel.frame.size);
    [waterLevel.image drawAtPoint:CGPointMake(400,300)];
    //define BezierPath
    
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    /*[bezierPath moveToPoint: CGPointMake(0, 600)];
    [bezierPath addLineToPoint: CGPointMake(450, 600)];
    [bezierPath addLineToPoint: CGPointMake(650, 450)];
    [bezierPath addLineToPoint: CGPointMake(560, 0)];
    [bezierPath addLineToPoint: CGPointMake(100, 0)];
    [bezierPath addLineToPoint: CGPointMake(100.5, -0.5)];
    [bezierPath addLineToPoint: CGPointMake(0, 600)];
    [bezierPath closePath];*/

    [bezierPath moveToPoint: CGPointMake(30, 320)];
    [bezierPath addLineToPoint: CGPointMake(255, 320)];
    [bezierPath addLineToPoint: CGPointMake(355, 245)];
    [bezierPath addLineToPoint: CGPointMake(310, 20)];
    [bezierPath addLineToPoint: CGPointMake(80, 20)];
    [bezierPath addLineToPoint: CGPointMake(80,20)];
    [bezierPath addLineToPoint: CGPointMake(30, 320)];
    [bezierPath closePath];

    //[UIColor.grayColor setFill];
    //[bezierPath fill];
    [UIColor.blackColor setStroke];
    bezierPath.lineWidth = 1;
    
    [bezierPath stroke];
    // Add to the current Graphic context
    
    
    
    
    UIBezierPath* bezierPathDiagram = UIBezierPath.bezierPath;
    [bezierPathDiagram moveToPoint:CGPointMake(0, 0)];
    [bezierPathDiagram addLineToPoint:CGPointMake(0, 320)];
    [bezierPathDiagram closePath];
    bezierPathDiagram.lineWidth = 4;
    [UIColor.blackColor setStroke];
    [bezierPathDiagram stroke];
    
    UIBezierPath* bezierPathDiagramVertical = UIBezierPath.bezierPath;
    [bezierPathDiagramVertical moveToPoint:CGPointMake(30,350)];
    [bezierPathDiagramVertical addLineToPoint:CGPointMake(365,350)];
    [bezierPathDiagramVertical moveToPoint:CGPointMake(30,350)];
    [bezierPathDiagramVertical addLineToPoint:CGPointMake(30,335)];
    
    //hier aufgehört weiter bei zeichnen der einzelnen stricke für die schwerpunkte
    for (NSInteger i = 1; i<6; i++) {
        NSLog(@"schleife");
        NSInteger count = i*20;
    [bezierPathDiagramVertical moveToPoint:CGPointMake(30+count,350)];
    [bezierPathDiagramVertical addLineToPoint:CGPointMake(30+count,335)];
        
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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
}


@end
