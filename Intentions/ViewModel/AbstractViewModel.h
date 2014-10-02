//
//  ViewModel.h
//  Intentions
//
//  Created by Krzysztof Profic on 30/09/14.
//  Copyright (c) 2014 Krzysztof Profic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractViewModel : NSObject

- (instancetype)initWithModel:(id)model;

@property (nonatomic, strong) id model;

@end
