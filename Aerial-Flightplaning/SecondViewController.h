//
//  SecondViewController.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 12.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *waterLevel;
@property (weak, nonatomic) IBOutlet UIView *drawView;

@property (weak, nonatomic) IBOutlet UITextField *textFieldGewichtPilot;
@property (weak, nonatomic) IBOutlet UITextField *textFieldGewichtPassagier;
@property (weak, nonatomic) IBOutlet UITextField *textFieldGewichtCoPilot;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSpritStart;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSpritEnde;
@property (weak, nonatomic) IBOutlet UILabel *labelNeuerCG;
@property (weak, nonatomic) IBOutlet UILabel *labelCGOld;

@property (weak, nonatomic) IBOutlet UIButton *buttoBerechnen;
- (IBAction)buttonBerechnen:(id)sender;


@end

