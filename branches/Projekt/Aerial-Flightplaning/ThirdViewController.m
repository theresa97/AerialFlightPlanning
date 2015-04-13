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
    bool ErsteZ;
    bool ZweiteZ;
    bool DritteZ;
    bool VierteZ;
    bool minus;
    bool plus;
    NSString *ErsteZahl;
    NSString *ZweiteZahl;
    NSString *DritteZahl;
    NSString *VierteZahl;
    NSInteger minutenGesamt;
    
}





-(void)viewDidLoad {

    [super viewDidLoad];
    ArrayGeschwindigkeit = @[@"Kilometer/Stunde", @"Knoten", @"Meilen/Stunde" ];
    ArrayGewicht =@[@"Kilogramm", @"Pfund"];
    ArrayLaenge = @[@"Meile", @"Meter", @"Kilometer",@"Fuß"];
    ArrayVolumen =@[@"Gallonen", @"Imperalgallonen" , @"Liter"];
    [self madeDictionary];
   // [Button0 setBackgroundColor:[UIColor blueColor]];
    
    
    
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
    [self.Picker302Outlet reloadAllComponents];
    NSInteger index301 = [self.Picker301Outet selectedRowInComponent:0];
    NSInteger index302 = [self.Picker302Outlet selectedRowInComponent:0];
    value301 = [ArrayGewicht objectAtIndex:index301];
    value302 = [ArrayGewicht objectAtIndex:index302];
   
  }

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
    [self.Picker302Outlet reloadAllComponents];
    NSInteger index301 = [self.Picker301Outet selectedRowInComponent:0];
    NSInteger index302 = [self.Picker302Outlet selectedRowInComponent:0];
    value301 = [ArrayLaenge objectAtIndex:index301];
    value302 = [ArrayLaenge objectAtIndex:index302];}

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
    [self.Picker302Outlet reloadAllComponents];
    NSInteger index301 = [self.Picker301Outet selectedRowInComponent:0];
    NSInteger index302 = [self.Picker302Outlet selectedRowInComponent:0];
    value301 = [ArrayVolumen objectAtIndex:index301];
    value302 = [ArrayVolumen objectAtIndex:index302];}

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
    [self.Picker302Outlet reloadAllComponents];
    NSInteger index301 = [self.Picker301Outet selectedRowInComponent:0];
    NSInteger index302 = [self.Picker302Outlet selectedRowInComponent:0];
    value301 = [ArrayGeschwindigkeit objectAtIndex:index301];
    value302 = [ArrayGeschwindigkeit objectAtIndex:index302];
}

- (IBAction)Action1:(id)sender {

    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"1";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"1";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"1";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"1";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action2:(id)sender {
    
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"2";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"2";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"2";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"2";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action3:(id)sender {
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"3";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"3";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"3";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"3";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action4:(id)sender {
    
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"4";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"4";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"4";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"4";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action5:(id)sender {
    
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"5";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"5";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"5";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"5";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action6:(id)sender {
    
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"6";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"6";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"6";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"6";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action7:(id)sender {
    
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"7";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"7";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"7";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"7";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action8:(id)sender {
         if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"8";
             NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
             [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"8";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"8";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"8";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action9:(id)sender {
     [self.Anzeige setText:@""];
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"9";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"9";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"9";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"9";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)Action0:(id)sender {
     [self.Anzeige setText:@""];
    if(ErsteZ == false){
        ErsteZ = true;
        ErsteZahl = @"0";
        NSString *zahl = [NSString stringWithFormat:@"%@%@" , @"0" , ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat: @"%@:%@" , @"00" , zahl ]];
    }else if(ZweiteZ == false){
        ZweiteZ = true;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"0";
        NSString *Zahl = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", @"00" , Zahl]];
    }else if(DritteZ == false){
        DritteZ = true;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"0";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , @"0" , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
        
    }else if(VierteZ == false){
        VierteZ = true;
        VierteZahl = DritteZahl;
        DritteZahl = ZweiteZahl;
        ZweiteZahl = ErsteZahl;
        ErsteZahl = @"0";
        NSString *Zahlv = [NSString stringWithFormat:@"%@%@" , VierteZahl , DritteZahl];
        NSString *Zahln = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", Zahlv, Zahln]];
    }
}

- (IBAction)ActionAC:(id)sender {
    [self.Anzeige setText:@""];
    ErsteZ = false;
    ZweiteZ = false;
    DritteZ = false;
    VierteZ = false;
    
    ErsteZahl = 0;
    ZweiteZahl = 0;
    DritteZahl = 0;
    VierteZahl = 0;
    
    plus = false;
    minus = false;
}

- (IBAction)ActionMinus:(id)sender {
    NSString *Minuten;
    [self.Anzeige setText:@""];
    minus = true;
    NSString *Stunden = [NSString stringWithFormat:@"%@%@", VierteZahl, DritteZahl];
    if([ZweiteZahl isEqualToString:@"0"]) {
    Minuten = ErsteZahl;
    }else{
     Minuten = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
    }
    NSInteger StundenINT = [Stunden integerValue];
    NSInteger MinutenINT = [Minuten integerValue];
    NSInteger StundenInMin = StundenINT * 60;
    minutenGesamt = StundenInMin +MinutenINT;
    ErsteZ = false;
    ZweiteZ = false;
    DritteZ = false;
    VierteZ = false;
    
    ErsteZahl = 0;
    ZweiteZahl = 0;
    DritteZahl = 0;
    VierteZahl = 0;
    
    
    
    
}

- (IBAction)ActionPlus:(id)sender {
    NSString *Minuten;
    [self.Anzeige setText:@""];
    plus = true;
    NSString *Stunden = [NSString stringWithFormat:@"%@%@", VierteZahl, DritteZahl];
    if(ZweiteZahl == nil) {
        Minuten = [NSString stringWithFormat:@"%@%@", @"0", ErsteZahl];
    }else{
        Minuten = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
    }
    NSInteger StundenINT = [Stunden integerValue];
    NSInteger MinutenINT = [Minuten integerValue];
    NSInteger StundenInMin = StundenINT * 60;
    minutenGesamt = StundenInMin +MinutenINT;
    
    ErsteZ = false;
    ZweiteZ = false;
    DritteZ = false;
    VierteZ = false;
    
    ErsteZahl = 0;
    ZweiteZahl = 0;
    DritteZahl = 0;
    VierteZahl = 0;
    
}

- (IBAction)ActionIstGleich:(id)sender {
    NSString *Minuten;
    NSString *Stunden = [NSString stringWithFormat:@"%@%@", VierteZahl, DritteZahl];
    if(ZweiteZahl == nil) {
        Minuten =[NSString stringWithFormat:@"%@%@", @"0", ErsteZahl];
    }else{
        Minuten = [NSString stringWithFormat:@"%@%@", ZweiteZahl, ErsteZahl];
    }
    NSInteger StundenINT = [Stunden integerValue];
    NSInteger MinutenINT = [Minuten integerValue];
    NSInteger StundenInMin = StundenINT * 60;
    NSInteger minutenGesamt2 = StundenInMin +MinutenINT;
    if(minus == true){
        NSInteger minutenEnde =  minutenGesamt - minutenGesamt2;
        NSInteger stunden = minutenEnde / 60;
        NSInteger minuten = minutenEnde % 60;
        NSString *minutenST;
        NSString *stundenST;
        if(minuten < 10) {
            NSString *minuten2 = [@(minuten) stringValue];
            minutenST = [NSString stringWithFormat:@"%@%@", @"0",minuten2];
        }else if (stunden < 10){
            NSString *stunden2 = [@(stunden) stringValue];
            minutenST = [NSString stringWithFormat:@"%@%@", @"0",stunden2];
        
        }
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", stundenST , minutenST]];
       
        
    }else if(plus == true){
        NSInteger minutenEnde =  minutenGesamt + minutenGesamt2;
        NSInteger stunden = minutenEnde / 60;
        NSInteger minuten = minutenEnde % 60;
        NSString *minutenST;
        NSString *stundenST;
        if(minuten < 10) {
            stundenST =[@(stunden) stringValue];
            NSString *minuten2 = [@(minuten) stringValue];
            minutenST = [NSString stringWithFormat:@"%@%@", @"0",minuten2];
                }else{
        stundenST =[@(stunden) stringValue];
        minutenST = [@(minuten) stringValue];
        }
       
        [self.Anzeige setText:[NSString stringWithFormat:@"%@:%@", stundenST , minutenST]];
    }
    ErsteZ = false;
    ZweiteZ = false;
    DritteZ = false;
    VierteZ = false;
    
    ErsteZahl = 0;
    ZweiteZahl = 0;
    DritteZahl = 0;
    VierteZahl = 0;
    
    plus = false;
    minus = false;
    
}


@end