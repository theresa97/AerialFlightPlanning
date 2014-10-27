//
//  FirstViewController.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 12.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface FirstViewController : UIViewController

//Properties

@property (weak, nonatomic) IBOutlet UITextField *textFieldPilot;

@property (weak, nonatomic) IBOutlet UITextView *textViewCrew;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerHubrschrauber;


@property (weak, nonatomic) IBOutlet UITextField *textFieldFlughelfer;

@property (weak, nonatomic) IBOutlet UIDatePicker *pickerDateDatum;


@property (weak, nonatomic) IBOutlet UIButton *buttonSendeZuCloud;

//Actions


@end

