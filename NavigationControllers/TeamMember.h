//
//  TeamMember.h
//  NavigationControllers
//
//  Created by Lloyd W. Sykes on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeamMember : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSString *birthCity;
@property (strong, nonatomic) NSString *birthState;
@property (strong, nonatomic) NSString *favoriteBand;
@property (strong, nonatomic) UIImage *photo;

- (instancetype)init;
- (instancetype)initWithName:(NSString *)name
                 phoneNumber:(NSString *)phoneNumber
                   birthCity:(NSString *)birthCity
                  birthState:(NSString *)birthState
                favoriteBand:(NSString *)favoriteBand
                       photo:(UIImage *)photo;

@end
