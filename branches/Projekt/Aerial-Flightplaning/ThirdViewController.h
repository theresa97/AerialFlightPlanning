//
//  ThirdViewController.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 20.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ThirdViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *Input301;

@property (weak, nonatomic) IBOutlet UITextField *Input302;

@property (weak, nonatomic) IBOutlet UIButton *BTNGeschwindigkeit;
@property (weak, nonatomic) IBOutlet UIButton *BTNVolumen;
@property (weak, nonatomic) IBOutlet UIButton *BTNLaenge;
@property (weak, nonatomic) IBOutlet UIButton *BTNGewicht;
@property (weak, nonatomic) IBOutlet UIPickerView *Picker301Outet;
@property (weak, nonatomic) IBOutlet UIPickerView *Picker302Outlet;
@property (weak, nonatomic) IBOutlet UIButton *Button1;
@property (weak, nonatomic) IBOutlet UIButton *Button2;
@property (weak, nonatomic) IBOutlet UIButton *Button3;
@property (weak, nonatomic) IBOutlet UIButton *Button4;
@property (weak, nonatomic) IBOutlet UIButton *Button5;
@property (weak, nonatomic) IBOutlet UIButton *Button6;
@property (weak, nonatomic) IBOutlet UIButton *Button7;
@property (weak, nonatomic) IBOutlet UIButton *Button8;
@property (weak, nonatomic) IBOutlet UIButton *Button9;
@property (weak, nonatomic) IBOutlet UIButton *Button0;
@property (weak, nonatomic) IBOutlet UIButton *ButtonAC;
@property (weak, nonatomic) IBOutlet UIButton *ButtonMinus;
@property (weak, nonatomic) IBOutlet UIButton *ButtonPlus;
@property (weak, nonatomic) IBOutlet UIButton *ButtonIstgleich;
@property (weak, nonatomic) IBOutlet UILabel *Anzeige;


- (IBAction)in301:(id)sender;
- (IBAction)in302:(id)sender;


- (IBAction)GewichtAction:(id)sender;
- (IBAction)LaengeAction:(id)sender;
- (IBAction)VolumenAction:(id)sender;
- (IBAction)GeschwindigkeitAction:(id)sender;
- (IBAction)Action1:(id)sender;
- (IBAction)Action2:(id)sender;
- (IBAction)Action3:(id)sender;
- (IBAction)Action4:(id)sender;
- (IBAction)Action5:(id)sender;
- (IBAction)Action6:(id)sender;
- (IBAction)Action7:(id)sender;
- (IBAction)Action8:(id)sender;
- (IBAction)Action9:(id)sender;
- (IBAction)Action0:(id)sender;
- (IBAction)ActionAC:(id)sender;
- (IBAction)ActionMinus:(id)sender;
- (IBAction)ActionPlus:(id)sender;
- (IBAction)ActionIstGleich:(id)sender;


@end