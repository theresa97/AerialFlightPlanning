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

- (IBAction)Input301Action:(id)sender;
- (IBAction)Input302Action:(id)sender;


@end 