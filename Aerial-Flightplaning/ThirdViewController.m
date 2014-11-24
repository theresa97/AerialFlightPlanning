//
//  ThirdViewController.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 20.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "ThirdViewController.h"
#import "GlobalState.h"

@interface ThirdViewController ()

@end


@implementation ThirdViewController{
    NSDictionary *dictionary ;
    NSArray *ArrayTitle;
    NSString *value301;
    NSDecimalNumber *valueUmrechnung301;
    NSString *value302;
    NSDecimalNumber *valueUmrechnung302;}




-(void)viewDidLoad {

    [super viewDidLoad];
    ArrayTitle = @[@"Gallonen", @"Kilogramm", @"Imperalgallonen", @"Meile", @"Meter", @"Liter",@"Kilometer", @"Fuß" ];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) madeDictionary{
    dictionary =[[NSMutableDictionary alloc]init];
    NSNumber *gallonen = [NSNumber numberWithDouble:3.785];
    NSNumber *kilogramm = [NSNumber numberWithDouble:2.20462262];
    NSNumber *imperalgallonen = [NSNumber numberWithDouble:4.546092];
    NSNumber *meile = [NSNumber numberWithDouble:1.609344];
    NSNumber *meter = [NSNumber numberWithDouble:3.2808];
    NSNumber *liter = [NSNumber numberWithDouble:0.264173];
    NSNumber *kilometer = [NSNumber numberWithDouble:0.62137];
    NSNumber *fuß = [NSNumber numberWithDouble:0.304803];
    [dictionary setValue:gallonen forKey:@"Gallonen"];
    [dictionary setValue:kilogramm forKey:@"Kilogramm"];
    [dictionary setValue:imperalgallonen forKey:@"Imperalgallonen"];
    [dictionary setValue:meile forKey:@"Meile"];
    [dictionary setValue:meter forKey:@"Meter"];
    [dictionary setValue:liter forKey:@"Liter"];
    [dictionary setValue:kilometer forKey:@"Kilometer"];
    [dictionary setValue:fuß forKey:@"Fuß"];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [ArrayTitle count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [ArrayTitle objectAtIndex:row];
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if( pickerView.tag == 301){
        value301 = [ArrayTitle objectAtIndex:row];
        
        valueUmrechnung301 = [dictionary valueForKey:value301];
        
        if([value301  isEqual: @"Gallonen"]){
            ArrayTitle = @[@"Liter" , @"Imperalgallonene"];
            //ArrayTitle - kann man es hier nochmal machen bzw kann man arraytitle updaten -- gefahr: die ursprülgich wird wrsl nicht erhalten
            //[pickerView. reloadAllComponats];
            //wie spricht man pickerView mit tag an bzw. updatet man es dan -- oben funktioniert es nicht mit reload
            
            
            
        }
        
    } else if(pickerView.tag== 302){
        value302 = [ArrayTitle objectAtIndex:row];
        valueUmrechnung302 = [dictionary valueForKey:value302];
    }
    
    NSDecimalNumber *digit301 = [NSDecimalNumber decimalNumberWithString:self.Input301.text];
    NSDecimalNumber *equals =  [digit301 decimalNumberByMultiplyingBy:valueUmrechnung301];
    NSString *final =[NSString stringWithFormat:@"%@", equals];
    [self.Input301 setText:final];
    
    
    
    
    
    
    
    
    
}



/*- (IBAction)textFieldGallonsAction:(id)sender{
 CGFloat eingabe = [self.textFieldGallons.text floatValue];
 double ergebnis = eingabe*4.546092 ;
 NSString *liter = [NSString stringWithFormat:@"%f", ergebnis];
 [self.textFieldLiter setText:liter];
 
 
 }*/


- (IBAction)Input301Action:(id)sender {
}

- (IBAction)Input302Action:(id)sender {
}
@end