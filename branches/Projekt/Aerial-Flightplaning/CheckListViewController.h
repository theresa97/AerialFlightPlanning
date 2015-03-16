//
//  CheckListViewController.h
//  Aerial-Flightplaning
//
//  Created by Patrick Wyruch on 22/02/15.
//  Copyright (c) 2015 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckListViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *LFZ_Button;
@property (weak, nonatomic) IBOutlet UIButton *OMBescheide_Button;
@property (weak, nonatomic) IBOutlet UIButton *Kartenmaterial_Button;
@property (weak, nonatomic) IBOutlet UIButton *Schwerpunktberechnung_Button;
@property (weak, nonatomic) IBOutlet UIButton *Bordbuch_Button;
@property (weak, nonatomic) IBOutlet UIButton *ATCFlugplan_Button;
@property (weak, nonatomic) IBOutlet UIButton *Wetterberatung_button;
@property (weak, nonatomic) IBOutlet UIButton *Notam_Button;
@property (weak, nonatomic) IBOutlet UIButton *Flugtickets_Button;
@property (weak, nonatomic) IBOutlet UIButton *Endurance_Button;
@property (weak, nonatomic) IBOutlet UIButton *Notausruestung_Button;

- (IBAction)ButtonsAction:(id)sender;

@end
