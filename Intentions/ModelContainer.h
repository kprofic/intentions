//
//  ModelContainer.h
//  Intentions
//
//  Created by Chris Eidhof on 16/03/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//
//  Modified by Krzysztof Profic
//

#import <Foundation/Foundation.h>
#import "AbstractViewModel.h"

// ViewModelContainer
@interface ModelContainer : NSObject

@property (nonatomic) AbstractViewModel * viewModel;

@end
