//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Lloyd W. Sykes on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"


@interface TeamDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;
@property (weak, nonatomic) IBOutlet UILabel *birthCityState;
@property (weak, nonatomic) IBOutlet UILabel *favoriteBand;
@property (weak, nonatomic) IBOutlet UIImageView *memberPic;

@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.name.text = self.teamMember.name;
    self.phoneNumber.text = self.teamMember.phoneNumber;
    self.birthCityState.text = [NSString stringWithFormat:@"%@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    self.favoriteBand.text = self.teamMember.favoriteBand;
    self.memberPic.image = self.teamMember.photo;
    // Very important to define what you want to go on in the viewDidLoad method, as I was having issues for not initially defining UILabel birthCityState;
    
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

@end
