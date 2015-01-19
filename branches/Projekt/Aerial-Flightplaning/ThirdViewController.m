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
    NSString *valueGanz301;
    NSString *valueGanz302;
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
    ArrayVolumen =@[@"Gallonen", @"Imperalgallonen" , @"Liter"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) madeDictionary{

    //Volumen
    NSNumber *gallonenInLiter = [NSNumber numberWithDouble:3.785];//in liter
    NSNumber *gallonenInImperalgallone = [NSNumber numberWithDouble:0.8326]; //in impergallone

    NSNumber *imperalgalloneInGallone = [NSNumber numberWithDouble:1.201]; //in gallone
    NSNumber *imperalgalloneInLiter = [NSNumber numberWithDouble:4.55]; //in Liter
    
    NSNumber *literInGallonen =[NSNumber numberWithDouble:0.26]; // in Gallone
    NSNumber *literInImperalgallone = [NSNumber numberWithDouble:0.22]; //in Imperalgallone
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
 
    dictionary =[[NSMutableDictionary alloc]init];
    //Volumen
    [dictionary setValue:gallonenInLiter forKey:@"GallonenInLiter"];
    [dictionary setValue:gallonenInImperalgallone forKey:@"GallonenInImperalgallonen"];
    
    [dictionary setValue:imperalgalloneInGallone forKey:@"ImperalgallonenInGallonen"];
    [dictionary setValue:imperalgalloneInLiter forKey:@"ImperalgallonenInLiter"];

    [dictionary setValue:literInGallonen forKey:@"LiterInGallonen"];
    [dictionary setValue:literInImperalgallone forKey:@"LiterInImperalgallonen"];
    
    //Geschwindigkeit
    [dictionary setValue:kmhInMeilenh forKey:@"Kilometer/StundeInMeilen/Stunde"];
    [dictionary setValue:kmhInKnoten forKey:@"Kilometer/StundeInKnoten"];
    
    [dictionary setValue:knotenInKmh forKey:@"KnotenInKilometer/Stunde"];
    [dictionary setValue:knotenInMeilenh forKey:@"KontenInMeilen/Stunde"];
    
    [dictionary setValue:meilehInKmh forKey:@"Meile/StundeInKilometer/Stunde"];
    [dictionary setValue:meilehInKnoten forKey:@"Meile/StundeInKilometer/Stunde"];
    
    //Gewicht
    [dictionary setValue:pfundInKilogramm forKey:@"PfundInKilogramm"];
    [dictionary setValue:kilogrammInPfund forKey:@"KilogrammInPfund"];
    
    //Laenge
    [dictionary setValue:meileInKilometer forKey:@"MeileInKilometer"];
    [dictionary setValue:meileInMeter forKey:@"MeileInMeter"];
    [dictionary setValue:meileInFuß forKey:@"MeileInFuß"];
    
    [dictionary setValue:meterInFuß forKey:@"MeterInFuß"];
    
    [dictionary setValue:kilometerInFuß forKey:@"KilometerInFuß"];
    [dictionary setValue:kilometerInMeilen forKey:@"KilometerInMeilen"];
    
    [dictionary setValue:fußInMeter forKey:@"FußInMeter"];
    
    
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(GewichtBOOL == true){
            return [ArrayGewicht count];
    }else if(GeschwindigkeitBOOL == true){
            return [ArrayGeschwindigkeit count];
    }else if(VolumenBOOL==true){
            return [ArrayGewicht count];
    }else if(LaengeBOOL == true){
            return [ArrayLaenge count];
    }else{
         return [ArrayGewicht count];
    }
    
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(GewichtBOOL == true){
       
        return [ArrayGewicht objectAtIndex:row];
    }else if(GeschwindigkeitBOOL == true){
        return [ArrayGeschwindigkeit objectAtIndex:row];
    }else if(VolumenBOOL==true){
        return [ArrayVolumen objectAtIndex:row];
    }else if(LaengeBOOL == true){
        return [ArrayLaenge objectAtIndex:row];
    }else{
        return @"";
    }
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if( pickerView.tag == 301){
        if(GewichtBOOL == true){
            value301 = [ArrayGewicht objectAtIndex:row];
        }else if(GeschwindigkeitBOOL == true){
            value301= [ArrayGeschwindigkeit objectAtIndex:row];
        }else if(VolumenBOOL==true){
            value301= [ArrayGewicht objectAtIndex:row];
        }else if(LaengeBOOL == true){
            value301= [ArrayLaenge objectAtIndex:row];
        }else{
            value301= [ArrayGewicht objectAtIndex:row];
        }
        
    } else if(pickerView.tag== 302){
        if(GewichtBOOL == true){
            value302 = [ArrayGewicht objectAtIndex:row];
        }else if(GeschwindigkeitBOOL == true){
            value302= [ArrayGeschwindigkeit objectAtIndex:row];
        }else if(VolumenBOOL==true){
            value302= [ArrayGewicht objectAtIndex:row];
        }else if(LaengeBOOL == true){
            value302= [ArrayLaenge objectAtIndex:row];
        }else{
            value302= [ArrayGewicht objectAtIndex:row];
        }
    }
    valueGanz301 = [NSString stringWithFormat:  @"%@In%@", value301 ,value302];
    valueUmrechnung301 = [dictionary valueForKey:valueGanz301];
    

    valueGanz302 =[NSString stringWithFormat:  @"%@In%@" ,value302, value301];
    valueUmrechnung302 =[dictionary valueForKey:valueGanz302];
    }



- (IBAction)Input301Action:(id)sender {
    NSDecimalNumber *digit301 = [NSDecimalNumber decimalNumberWithString:self.Input301.text];
    NSDecimalNumber *equals301 =  [digit301 decimalNumberByMultiplyingBy:valueUmrechnung301];
    NSString *final301 =[NSString stringWithFormat:@"%@", equals301];
    [self.Input301 setText:final301];
}

- (IBAction)Input302Action:(id)sender {
    NSDecimalNumber *digit302 = [NSDecimalNumber decimalNumberWithString:self.Input302.text];
    NSDecimalNumber *equals302 =  [digit302 decimalNumberByMultiplyingBy:valueUmrechnung302];
    NSString *final302 =[NSString stringWithFormat:@"%@", equals302];
    [self.Input302 setText:final302];
}

- (IBAction)GewichtAction:(id)sender {
    self.BTNLaenge.alpha = .25;
    self.BTNGeschwindigkeit.alpha = .25;
    self.BTNVolumen.alpha = .25;
    self.BTNGewicht.alpha = 1;
    GewichtBOOL = true;
    LaengeBOOL = false;
    VolumenBOOL = false;
    GeschwindigkeitBOOL = false;
    [self pickerView:self.Picker301Outet titleForRow:[ArrayGewicht count]-1 forComponent:1];
    [self pickerView:self.Picker302Outlet titleForRow:[ArrayGewicht count]-1 forComponent:1];
    [self.Picker301Outet reloadAllComponents];
    [self.Picker302Outlet reloadAllComponents];}

- (IBAction)LaengeAction:(id)sender {
    self.BTNLaenge.alpha = 1;
    self.BTNGeschwindigkeit.alpha = .25;
    self.BTNVolumen.alpha = .25;
    self.BTNGewicht.alpha = .25;
    LaengeBOOL = true;
    GewichtBOOL = false;
    VolumenBOOL = false,
    GeschwindigkeitBOOL = false;
    [self pickerView:self.Picker301Outet titleForRow:[ArrayLaenge count]-1 forComponent:1];
    [self pickerView:self.Picker302Outlet titleForRow:[ArrayLaenge count]-1 forComponent:1];
    [self.Picker301Outet reloadAllComponents];
    [self.Picker302Outlet reloadAllComponents];}

- (IBAction)VolumenAction:(id)sender {
    self.BTNLaenge.alpha = .25;
    self.BTNGeschwindigkeit.alpha = .25;
    self.BTNVolumen.alpha = 1;
    self.BTNGewicht.alpha = .25;
    VolumenBOOL = true;
    GewichtBOOL = false;
    GeschwindigkeitBOOL = false;
    LaengeBOOL = false;
    [self pickerView:self.Picker301Outet titleForRow:[ArrayVolumen count]-1 forComponent:1];
    [self pickerView:self.Picker302Outlet titleForRow:[ArrayVolumen count]-1 forComponent:1];
    [self.Picker301Outet reloadAllComponents];
    [self.Picker302Outlet reloadAllComponents];}

- (IBAction)GeschwindigkeitAction:(id)sender {
    self.BTNLaenge.alpha = 0.25;
    self.BTNGeschwindigkeit.alpha = 1;
    self.BTNVolumen.alpha = .25;
    self.BTNGewicht.alpha = .25;
    GeschwindigkeitBOOL = true;
    GewichtBOOL = false;
    LaengeBOOL = false;
    VolumenBOOL = false;
    [self pickerView:self.Picker301Outet titleForRow:[ArrayGeschwindigkeit count]-1 forComponent:1];
    [self pickerView:self.Picker302Outlet titleForRow:[ArrayGeschwindigkeit count]-1 forComponent:1];
    [self.Picker301Outet reloadAllComponents];
    [self.Picker302Outlet reloadAllComponents];}


@end