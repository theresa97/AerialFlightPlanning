//
//  CheckListViewController.m
//  Aerial-Flightplaning
//
//  Created by Patrick Wyruch on 22/02/15.
//  Copyright (c) 2015 Matthias Oberegger. All rights reserved.
//

#import "CheckListViewController.h"

@interface CheckListViewController ()

@end

@implementation CheckListViewController
    NSInteger LFZ_Button = 0;
    NSInteger OMBescheide_Button =0;
    NSInteger Flugtickets_Button =0;
    NSInteger Notausruestung_Button= 0;
    NSInteger Endurance_Button =0;
    NSInteger ATCFlugplan_Button =0;
    NSInteger Wetterberatung_button= 0;
    NSInteger Notam_Button =0;
    NSInteger Kartenmaterial_Button =0;
    NSInteger Schwerpunktberechnung_Button =0;
    NSInteger Bordbuch_Button= 0;
 


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)ButtonsAction:(id)sender {
    
    if ([sender tag] == 10 ) {
       //zuerst erhöhen und dan abfragen und setzten
        //if(
        
        //[sender setBackgroundColor:[UIColor greenColor]];
    }
    
    
    
  
    
    
}
@end
