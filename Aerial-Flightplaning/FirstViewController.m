//
//  FirstViewController.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 12.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController{
    int selectedComponent;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawRect:(CGRect)rect
{
    
    self.textViewCrew.layer.borderWidth = 3.0;
    self.textViewCrew.layer.borderColor = [UIColor grayColor].CGColor;
    self.textViewCrew.layer.cornerRadius = 8;
}

- (IBAction)buttonSendeZuCloud:(UIButton *)sender {
    PFObject *data = [PFObject objectWithClassName:@"Datas"];
    data[@"textFieldPilot_data"] = self.textFieldPilot.text;
    data[@"textFieldFlughelfer_data"] = self.textFieldFlughelfer.text;
    data[@"textViewCrew_data"] = self.textViewCrew.text;
    //data[@"pickerHubschrauber_data"] = selectedComponent;
    //data[@"pickerDateDatum_data"] = [self.pickerDateDatum selectedRowInComponent:selectedComponent];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{ // SPALTN
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{  //REIHEN
    //return [[GlobalState Instance].CarLicensePlates count]; // Änderung– Daten von M.
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    //return [[GlobalState Instance].CarLicensePlates objectAtIndex:row]; //DATEN von M.
    return 0;
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    selectedComponent = row;
    // NSLog(@"%d",selectedComponent);
}
@end
