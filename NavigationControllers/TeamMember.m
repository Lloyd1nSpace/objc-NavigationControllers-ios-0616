//
//  TeamMember.m
//  NavigationControllers
//
//  Created by Lloyd W. Sykes on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember

- (instancetype)init; {
    
    return [self initWithName: @""
                  phoneNumber: @""
                    birthCity: @""
                   birthState: @""
                 favoriteBand: @""
                        photo:[UIImage new]];
    
}

- (instancetype)initWithName:(NSString *)name
                 phoneNumber:(NSString *)phoneNumber
                   birthCity:(NSString *)birthCity
                  birthState:(NSString *)birthState
                favoriteBand:(NSString *)favoriteBand
                       photo:(UIImage *)photo; {
    // The styling of this designated initializer improves readability.
    
    self = [super init];
    
    if (self) {
        
        _name = name;
        _phoneNumber = phoneNumber;
        _birthCity = birthCity;
        _birthState = birthState;
        _favoriteBand = favoriteBand;
        _photo = photo;
        
    }
    
    return self;
    
}

@end
