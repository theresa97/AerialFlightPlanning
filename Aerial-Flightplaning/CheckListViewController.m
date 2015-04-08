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

@implementation CheckListViewController{
    NSInteger LFZButton;
    NSInteger OMBescheideButton ;
    NSInteger FlugticketsButton ;
    NSInteger NotausruestungButton;
    NSInteger EnduranceButton ;
    NSInteger ATCFlugplanButton ;
    NSInteger Wetterberatungbutton;
    NSInteger NotamButton ;
    NSInteger KartenmaterialButton;
    NSInteger SchwerpunktberechnungButton;
    NSInteger BordbuchButton;
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
     LFZButton =0;
     OMBescheideButton =0;
     FlugticketsButton =0;
     NotausruestungButton= 0;
     EnduranceButton =0;
     ATCFlugplanButton =0;
     Wetterberatungbutton= 0;
     NotamButton =0;
     KartenmaterialButton =0;
     SchwerpunktberechnungButton =0;
     BordbuchButton= 0;
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
        LFZButton = LFZButton +1;
        if(LFZButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(LFZButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(LFZButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            LFZButton = 0;
        }
       
    }else if ([sender tag] == 11 ) {
        OMBescheideButton = OMBescheideButton +1;
        if(OMBescheideButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(OMBescheideButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(OMBescheideButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            OMBescheideButton = 0;
        }
    }else if ([sender tag] == 18 ) {
        FlugticketsButton  = FlugticketsButton +1;
        if(FlugticketsButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(FlugticketsButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(FlugticketsButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            FlugticketsButton = 0;
        }
    }else if ([sender tag] == 20 ) {
        NotausruestungButton = NotausruestungButton +1;
        if(NotausruestungButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(NotausruestungButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(NotausruestungButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            NotausruestungButton = 0;
        }
    }else if([sender tag] == 19) {
        EnduranceButton = EnduranceButton +1;
        if(EnduranceButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(EnduranceButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(EnduranceButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            EnduranceButton = 0;
        }
    }else if([sender tag] == 15 ) {
        ATCFlugplanButton = ATCFlugplanButton +1;
        if(ATCFlugplanButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(ATCFlugplanButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(ATCFlugplanButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            ATCFlugplanButton = 0;
        }
    }else if ([sender tag] == 16 ) {
        Wetterberatungbutton = Wetterberatungbutton +1;
        if(Wetterberatungbutton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(Wetterberatungbutton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(Wetterberatungbutton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            Wetterberatungbutton = 0;
        }
    }else if ([sender tag] == 17 ) {
        NotamButton = NotamButton +1;
        if(NotamButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(NotamButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(NotamButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            NotamButton = 0;
        }
    }else if([sender tag] == 12 ) {
        KartenmaterialButton = KartenmaterialButton +1;
        if(KartenmaterialButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(KartenmaterialButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(KartenmaterialButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            KartenmaterialButton = 0;
        }
    }else if ([sender tag] == 13 ) {
        SchwerpunktberechnungButton = SchwerpunktberechnungButton +1;
        if(SchwerpunktberechnungButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(SchwerpunktberechnungButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(SchwerpunktberechnungButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            SchwerpunktberechnungButton = 0;
        }
    }else if ([sender tag] == 14 ) {
        BordbuchButton =  BordbuchButton +1;
        if(BordbuchButton == 1){
            [sender setBackgroundColor:[UIColor greenColor]];
        }else if(BordbuchButton==2){
            [sender setBackgroundColor:[UIColor redColor]];
        }else if(BordbuchButton == 3){
            [sender setBackgroundColor:[UIColor whiteColor]];
            BordbuchButton = 0;
        }    }

}


@end
