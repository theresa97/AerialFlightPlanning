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


- (IBAction)in301:(id)sender;
- (IBAction)in302:(id)sender;


- (IBAction)GewichtAction:(id)sender;
- (IBAction)LaengeAction:(id)sender;
- (IBAction)VolumenAction:(id)sender;
- (IBAction)GeschwindigkeitAction:(id)sender;

@end