//
//  PersonViewModel.m
//  Intentions
//
//  Created by Krzysztof Profic on 30/09/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//

#import "PersonViewModel.h"
#import "Person.h"

@implementation PersonViewModel

- (Person *)personModel
{
    return (Person *)self.model;
}

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.personModel.name, self.personModel.surname];
}

@end
