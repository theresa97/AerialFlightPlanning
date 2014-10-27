//
//  ThirdViewController.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 20.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThirdViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
- (IBAction)textFieldGallonsAction:(id)sender;
- (IBAction)textFieldLiterAction:(id)sender;
- (IBAction)textFieldKiloAction:(id)sender;
- (IBAction)textFieldPoundsAction:(id)sender;




@property (weak, nonatomic) IBOutlet UITextField *textFieldLiter;
@property (weak, nonatomic) IBOutlet UITextField *textFieldGallons;
@property (weak, nonatomic) IBOutlet UITextField *textFieldKilo;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPounds;

@end
