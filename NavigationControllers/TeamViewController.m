//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Lloyd W. Sykes on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamDetailViewController.h"
#import "TeamMember.h"

@interface TeamViewController ()

@end


@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // This is a pre-written method of UIViewController similar to - (NSString *)description
    
    
    if ([segue.identifier isEqualToString:@"prisoner"]) {
        // Note I had to fill in the identifier for each segue.
        
        TeamMember *prisoner = [[TeamMember alloc] initWithName:@"Prisoner Dan" phoneNumber:@"800MATTRES" birthCity:@"Debuke" birthState:@"Wisconsin" favoriteBand:@"Rolling Stones" photo:[UIImage imageNamed:@"joe.jpg"]];
        // Utilized the imageNamed: class method on UIImage to locate the correct image depending on the button being tapped.
        
        TeamDetailViewController *destination = segue.destinationViewController;
        destination.teamMember = prisoner;
        // This is explicitly telling the program that the segue will go to the destinationViewController (defined in the storyboard) & that after the particular button is tapped, it will read out the information detailed above.
        
    }
    
    if ([segue.identifier isEqualToString:@"exFlat"]) {
        
        TeamMember *mike = [[TeamMember alloc] initWithName:@"Mike Jones" phoneNumber:@"2813308004" birthCity:@"Houston" birthState:@"Texas" favoriteBand:@"Led Zeppelin" photo:[UIImage imageNamed:@"chris.jpg"]];
        
        TeamDetailViewController *destination = segue.destinationViewController;
        destination.teamMember = mike;
        
    }
    
    if ([segue.identifier isEqualToString:@"Al"]) {
        
        TeamMember *al = [[TeamMember alloc] initWithName:@"Al" phoneNumber:@"5551212" birthCity:@"Detroit" birthState:@"Michigan" favoriteBand:@"The Beatles" photo:[UIImage imageNamed:@"al.jpg"]];
        
        TeamDetailViewController *destination = segue.destinationViewController;
        destination.teamMember = al;
        
    }
    
    if ([segue.identifier isEqualToString:@"Avi"]) {
        
        TeamMember *avi = [[TeamMember alloc] initWithName:@"Avi Flombaum" phoneNumber:@"" birthCity:@"New York" birthState:@"New York" favoriteBand:@"Wu-Tang Clan" photo:[UIImage imageNamed:@"avi.jpg"]];
        
        TeamDetailViewController  *destination = segue.destinationViewController;
        destination.teamMember = avi;
        
    }
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
