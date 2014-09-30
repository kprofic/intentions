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

- (instancetype)initWithModel:(id)model
{
    self = [super initWithModel:model];
    if (self) {
        [self.model addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:NULL];
        [self.model addObserver:self forKeyPath:@"surname" options:NSKeyValueObservingOptionNew context:NULL];
    }
    return self;
}

- (Person *)personModel
{
    return (Person *)self.model;
}

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.personModel.name, self.personModel.surname];
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (object == self.model && ([keyPath isEqualToString:@"name"] || [keyPath isEqualToString:@"surname"])) {
        [self willChangeValueForKey:@"fullName"];
        // we dont really update, its createn on demand
        [self didChangeValueForKey:@"fullName"];
    }
}

@end
