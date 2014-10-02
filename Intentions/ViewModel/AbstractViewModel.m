//
//  ViewModel.m
//  Intentions
//
//  Created by Krzysztof Profic on 30/09/14.
//  Copyright (c) 2014 Krzysztof Profic. All rights reserved.
//

#import "AbstractViewModel.h"

@implementation AbstractViewModel

- (instancetype)initWithModel:(id)model
{
    self = [super init];
    if (self) {
        _model = model;
    }
    
    return self;
}

@end
