//
//  ViewControllerAddHelicopter.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 27.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "ViewControllerAddHelicopter.h"

@interface ViewControllerAddHelicopter ()



@end

@implementation ViewControllerAddHelicopter

-(void)viewWillAppear:(BOOL)animated{
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)saveNewHelicopter:(id)sender {
}
- (IBAction)addPassanger:(id)sender {
    [self.labelSitzname setHidden:NO ];
    [self.labelArmLong setHidden:NO];
    [self.labelArmLat setHidden:NO];
    [self.TextSitzName setHidden:NO];
    [self.textArmLong setHidden:NO];
    [self.textArmLat setHidden:NO];
    
}
- (IBAction)addFilledPassanger:(id)sender {
    //missing
    
    
}
@end
