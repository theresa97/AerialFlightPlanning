//
//  ThirdViewController.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 20.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

<<<<<<< .mine
=======

>>>>>>> .r33
@implementation ThirdViewController{
    NSMutableDictionary *dictionary ;
}

<<<<<<< .mine


-(void)viewDidLoad {
=======

- (void)viewDidLoad {
>>>>>>> .r33
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) madeDictionary{
    dictionary =[[NSMutableDictionary alloc]init];
    NSNumber *gallonen = [NSNumber numberWithDouble:3.785];
    NSNumber *kilo = [NSNumber numberWithDouble:2.20462262];
    NSNumber *imperalgallonen = [NSNumber numberWithDouble:4.546092];
    NSNumber *meile = [NSNumber numberWithDouble:1.609344];
    NSNumber *fuß = [NSNumber numberWithDouble:3.2808];
    [dictionary setValue:gallonen forKey:@"Gallonen"];
    [dictionary setValue:kilo forKey:@"Kilo"];
    [dictionary setValue:imperalgallonen forKey:@"Imperalgallonen"];
    [dictionary setValue:meile forKey:@"Meile"];
    [dictionary setValue:fuß forKey:@"Fuß"];
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [dictionary count];
}



- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSArray *namen = [dictionary allKeys];
    return [namen objectAtIndex:row];

}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
}



- (IBAction)textFieldGallonsAction:(id)sender{
    CGFloat eingabe = [self.textFieldGallons.text floatValue];
    double ergebnis = eingabe*4.546092 ;
    NSString *liter = [NSString stringWithFormat:@"%f", ergebnis];
    [self.textFieldLiter setText:liter];
    
    
}

- (IBAction)textFieldLiterAction:(id)sender {
    CGFloat eingabe = [self.textFieldLiter.text floatValue];
    CGFloat ergebnis = (CGFloat)eingabe/4.546092;
    NSString *gallon =[NSString stringWithFormat:@"%f", ergebnis];
    [self.textFieldGallons setText:gallon];
    
    
    
}
- (IBAction)textFieldKiloAction:(id)sender {
    CGFloat eingabe = [self.textFieldKilo.text floatValue];
    double ergebnis = eingabe* 2.20462262;
    NSString *pounds = [NSString stringWithFormat:@"%f", ergebnis];
    [self.textFieldPounds setText:pounds];
}

- (IBAction)textFieldPoundsAction:(id)sender {
    CGFloat eingabe = [self.textFieldKilo.text floatValue];
    double ergebnis = eingabe* 2.20462262;
    NSString *pounds = [NSString stringWithFormat:@"%f", ergebnis];
    [self.textFieldPounds setText:pounds];}



@end


