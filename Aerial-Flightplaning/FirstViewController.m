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
    NSInteger selectedComponent;
}

-(void)viewWillAppear:(BOOL)animated{
    [[GlobalState Instance].helicopters addObject:@"HU300"];
    
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
    
    NSDate *date = self.pickerDateDatum.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd.MM yyyy HH:mm"];
    NSString *dateString = [formatter  stringFromDate:date];
    
    data[@"Pilotenname"] = self.textFieldPilot.text;
    data[@"Flughelfer"] = self.textFieldFlughelfer.text;
    data[@"Team"] = self.textViewCrew.text;
    data[@"Hubschraubername"] = [[GlobalState Instance].helicopters objectAtIndex:selectedComponent];
    data[@"Durchfuehrungsdatum"] = dateString;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{ // SPALTN
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    //REIHEN
   return [[GlobalState Instance].helicopters count]; // Änderung– Daten von M.
   
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSLog(@"Hier");
    return [[GlobalState Instance].helicopters objectAtIndex:row]; //DATEN von M
    
    
   }

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    selectedComponent = row;
    
}
@end
