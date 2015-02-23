//
//  FlugViewController.h
//  Aerial-Flightplaning
//
//  Created by Patrick Wyruch on 22/02/15.
//  Copyright (c) 2015 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlugViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *Flugort;

@property (weak, nonatomic) IBOutlet UITextField *Startzeit;
@property (weak, nonatomic) IBOutlet UITextField *Ankunftsort;
@property (weak, nonatomic) IBOutlet UITextField *Ladezeit;
@property (weak, nonatomic) IBOutlet UITextField *Dauer;
@property (weak, nonatomic) IBOutlet UITextField *Flugart;
- (IBAction)FlugSpeichern:(id)sender;
@end
