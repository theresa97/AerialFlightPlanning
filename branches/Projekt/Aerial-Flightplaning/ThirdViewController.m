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
    NSArray *ArrayVolumen;
    NSArray *ArrayGeschwindigkeit;
    NSArray *ArrayLaenge;
    NSArray *ArrayGewicht;
    NSString *value301;
    NSDecimalNumber *valueUmrechnung301;
    NSString *value302;
    NSDecimalNumber *valueUmrechnung302;
    bool GewichtBOOL;
    bool VolumenBOOL ;
    bool LaengeBOOL ;
    bool GeschwindigkeitBOOL ;
    
}




-(void)viewDidLoad {

    [super viewDidLoad];
    ArrayGeschwindigkeit = @[@"Kilometer/Stunde", @"Knoten", @"Meilen/Stunde" ];
    ArrayGewicht =@[@"Kilogramm", @"Pfund"];
    ArrayLaenge = @[@"Meile", @"Meter", @"Kilometer",@"Fuß"];
    ArrayVolumen =@[@"Gallonen", @"Imperalgallonene" , @"Liter"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
-(void) madeDictionary{
 
    NSNumber *gallonenInLiter = [NSNumber numberWithDouble:3.785];//in liter
    //Geschwindigkeit
    NSNumber *kmhInMeilenh= [NSNumber numberWithDouble:0.621371192];//in meilen/h
    NSNumber *kmhInKnoten =[NSNumber numberWithDouble:0.5399568034]; //in knoten
    NSNumber *knotenInKmh = [NSNumber numberWithDouble:1.8520]; //in km/h
    NSNumber *knotenInMeilenh = [NSNumber numberWithDouble:1.1507794480136]; //in meilen/h
    NSNumber *meilehInKmh= [NSNumber numberWithDouble:1.609344];//in kmh
    NSNumber *meilehInKnoten=[NSNumber numberWithDouble:0.8689762];//in Knoten
    //Gewicht
    NSNumber *pfundInKilogramm = [NSNumber numberWithDouble:0.45];//in kilogramm
    NSNumber *kilogrammInPfund = [NSNumber numberWithDouble:2.20462262];// in pfund
    //Laenge
    NSNumber *meileInKilometer = [NSNumber numberWithDouble:1.609344];//in kilometer
    NSNumber *meileInMeter = [NSNumber numberWithDouble:1609.34]; // in meter
    NSNumber *meileInFuß= [NSNumber numberWithDouble:5280]; //in fuß
    
    NSNumber *meterInFuß = [NSNumber numberWithDouble:3.2808];// in fuß
    
    NSNumber *kilometerInMeilen = [NSNumber numberWithDouble:0.62137];//in meilen
    NSNumber *kilometerInFuß = [NSNumber  numberWithDouble:3280.84];//inFuß
    
    NSNumber *fußInMeter = [NSNumber numberWithDouble:0.304803];// in meter
 
    //Volumen
    //NOCH ALLE URECHNUNGEN!!!!!!! -- OBEN NOCHMAL KONTROLLIEREN
    //http://www.convertworld.com/de/
    //NSNumber *liter = [NSNumber numberWithDouble:0.264173];//
    //NSNumber *imperalgallonenInLiter = [NSNumber numberWithDouble:4.546092]; // in liter
    
    
    dictionary =[[NSMutableDictionary alloc]init];
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
            // = @[@"Liter" , @"Imperalgallonene"];
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
 
 
 }


- (IBAction)Input301Action:(id)sender {
}

- (IBAction)Input302Action:(id)sender {
}

- (IBAction)GewichtAction:(id)sender {
    self.BTNLaenge.alpha = .25;
    self.BTNGeschwindigkeit.alpha = .25;
    self.BTNVolumen.alpha = .25;
    self.BTNGewicht.alpha = 1;
    GewichtBOOL = true;
}

- (IBAction)LaengeAction:(id)sender {
    self.BTNLaenge.alpha = 1;
    self.BTNGeschwindigkeit.alpha = .25;
    self.BTNVolumen.alpha = .25;
    self.BTNGewicht.alpha = .25;
    LaengeBOOL = true;
}

- (IBAction)VolumenAction:(id)sender {
    self.BTNLaenge.alpha = .25;
    self.BTNGeschwindigkeit.alpha = .25;
    self.BTNVolumen.alpha = 1;
    self.BTNGewicht.alpha = .25;
    VolumenBOOL = true;
}

- (IBAction)GeschwindigkeitAction:(id)sender {
    self.BTNLaenge.alpha = 0.25;
    self.BTNGeschwindigkeit.alpha = 1;
    self.BTNVolumen.alpha = .25;
    self.BTNGewicht.alpha = 0.25;
    GeschwindigkeitBOOL = true;
}
*/

@end