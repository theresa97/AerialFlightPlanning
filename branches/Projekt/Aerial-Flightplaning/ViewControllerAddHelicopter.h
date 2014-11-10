//
//  ViewControllerAddHelicopter.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 27.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerAddHelicopter : UIViewController
- (IBAction)saveNewHelicopter:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *helicopterName;
@property (weak, nonatomic) IBOutlet UITextField *helicopterType;
@property (weak, nonatomic) IBOutlet UITextField *BasicEmtpyWeightTextfield;
@property (weak, nonatomic) IBOutlet UITextField *basicEmptyWeightArm;
@property (weak, nonatomic) IBOutlet UITextField *pilotSeatArm;
@property (weak, nonatomic) IBOutlet UITextField *CoPilotSeatArm;


@property (weak, nonatomic) IBOutlet UIButton *addPassanger;
- (IBAction)addPassanger:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelSitzname;
@property (weak, nonatomic) IBOutlet UILabel *labelArmLong;
@property (weak, nonatomic) IBOutlet UILabel *labelArmLat;

@property (weak, nonatomic) IBOutlet UITextField *TextSitzName;
@property (weak, nonatomic) IBOutlet UITextField *textArmLong;
@property (weak, nonatomic) IBOutlet UITextField *textArmLat;


- (IBAction)addFilledPassanger:(id)sender;


@end
