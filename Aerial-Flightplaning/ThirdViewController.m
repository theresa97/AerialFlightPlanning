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
    NSNumber *valueUmrechnung301;
    NSString *value302;
    NSNumber *valueUmrechnung302;
    NSString *valueGanz301;
    NSString *valueGanz302;
    bool GewichtBOOL;
    bool VolumenBOOL ;
    bool LaengeBOOL ;
    bool GeschwindigkeitBOOL;
}




-(void)viewDidLoad {

    [super viewDidLoad];
    ArrayGeschwindigkeit = @[@"Kilometer/Stunde", @"Knoten", @"Meilen/Stunde" ];
    ArrayGewicht =@[@"Kilogramm", @"Pfund"];
    ArrayLaenge = @[@"Meile", @"Meter", @"Kilometer",@"Fuß"];
    ArrayVolumen =@[@"Gallonen", @"Imperalgallonen" , @"Liter"];
    [self madeDictionary];
    
    
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
    NSNumber *literInImperalgallone = [NSNumber numberWithDouble:0.22]; //in Imperalgallone1
    //Geschwindigkeit
    NSNumber *kmhInMeilenh= [NSNumber numberWithDouble:0.621371192];//in meilen/h
    NSNumber *kmhInKnoten =[NSNumber numberWithDouble:0.5399568034]; //in knoten
    
    NSNumber *knotenInKmh = [NSNumber numberWithDouble:1.8520]; //in km/h
    NSNumber *knotenInMeilenh = [NSNumber numberWithDouble:1.1507794480136]; //in meilen/h
    //!!!!!!!!!!!!ACHTUNG dieses eine funktioniert nicht!!!!!!!!!!!
    
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
    NSNumber *meterInKilometer = [NSNumber numberWithDouble:0.001];// in kilometer
    NSNumber *meterInMeile = [NSNumber numberWithDouble:0.000621371];// in Meile
    
    NSNumber *kilometerInMeilen = [NSNumber numberWithDouble:0.62137];//in meilen
    NSNumber *kilometerInFuß = [NSNumber  numberWithDouble:3280.84];//inFuß
    NSNumber *kilometerInMeter = [NSNumber numberWithDouble:1000];//in meter
    
    NSNumber *fußInMeter = [NSNumber numberWithDouble:0.304803];// in meter
    NSNumber *fußInKilometer = [NSNumber numberWithDouble:0.0003048];// in kilometer
    NSNumber *fußInMeile = [NSNumber numberWithDouble:0.000189394]; //in Meile
 
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
    
    [dictionary setValue:meilehInKmh forKey:@"Meilen/StundeInKilometer/Stunde"];
    [dictionary setValue:meilehInKnoten forKey:@"Meilen/StundeInKnoten"];
    
    //Gewicht
    [dictionary setValue:pfundInKilogramm forKey:@"PfundInKilogramm"];
    [dictionary setValue:kilogrammInPfund forKey:@"KilogrammInPfund"];
    
    //Laenge
    [dictionary setValue:meileInKilometer forKey:@"MeileInKilometer"];
    [dictionary setValue:meileInMeter forKey:@"MeileInMeter"];
    [dictionary setValue:meileInFuß forKey:@"MeileInFuß"];
    
    [dictionary setValue:meterInFuß forKey:@"MeterInFuß"];
    [dictionary setValue:meterInKilometer forKey:@"MeterInKilometer"];
    [dictionary setValue:meterInMeile forKey:@"MeterInMeile"];
    
    [dictionary setValue:kilometerInFuß forKey:@"KilometerInFuß"];
    [dictionary setValue:kilometerInMeilen forKey:@"KilometerInMeilen"];
    [dictionary setValue:kilometerInMeter forKey:@"KilometerInMeter"];
    
    [dictionary setValue:fußInMeter forKey:@"FußInMeter"];
    [dictionary setValue:fußInMeile forKey:@"FußInMeile"];
    [dictionary setValue:fußInKilometer forKey:@"FußInKilometer"];
    
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
    [self.Input302 setText:@""];
    [self.Input301 setText:@""];
    if( pickerView.tag == 301){
        if(GewichtBOOL == true){
            value301 = [ArrayGewicht objectAtIndex:row];
        }else if(GeschwindigkeitBOOL == true){
            value301= [ArrayGeschwindigkeit objectAtIndex:row];
        }else if(VolumenBOOL==true){
            value301= [ArrayVolumen objectAtIndex:row];
        }else if(LaengeBOOL == true){
            value301= [ArrayLaenge objectAtIndex:row];
        }else{
            value301= [ArrayGewicht objectAtIndex:row];
            
        }
        
    }if(pickerView.tag== 302){
        if(GewichtBOOL == true){
            value302 = [ArrayGewicht objectAtIndex:row];
        }else if(GeschwindigkeitBOOL == true){
            value302= [ArrayGeschwindigkeit objectAtIndex:row];
        }else if(VolumenBOOL==true){
            value302= [ArrayVolumen objectAtIndex:row];
        }else if(LaengeBOOL == true){
            value302= [ArrayLaenge objectAtIndex:row];
        }else{
            value302= [ArrayGewicht objectAtIndex:row];
        }
    }
   
    }





- (IBAction)in301:(id)sender {
    valueGanz301 = [NSString stringWithFormat:  @"%@In%@", value301 ,value302];
    valueUmrechnung301 = [dictionary valueForKey:valueGanz301];
    NSString *zw   = self.Input301.text;
    NSNumber *digit301 = [NSNumber numberWithInt: [zw intValue]];
    NSNumber *equals301 =  [NSNumber numberWithDouble: [digit301 doubleValue]*   [valueUmrechnung301 doubleValue]];
    NSString *final301 =[NSString stringWithFormat:@"%@", equals301];
    
    
    
    [self.Input302 setText:final301];
}

- (IBAction)in302:(id)sender {
    valueGanz302 = [NSString stringWithFormat:  @"%@In%@", value302 ,value301];
    valueUmrechnung302 = [dictionary valueForKey:valueGanz302];
    NSNumber *digit302 = [NSNumber numberWithDouble: [self.Input302.text doubleValue]];
    NSNumber *equals302=  [NSNumber numberWithDouble: [digit302 doubleValue]*   [valueUmrechnung302 doubleValue]];
    NSString *final302 =[NSString stringWithFormat:@"%@", equals302];
    [self.Input301 setText:final302];
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