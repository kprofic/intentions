//
//  MultiplexerProxyBehaviour.h
//  Intentions
//
//  Created by Krzysztof Profic on 30/09/14.
//  Copyright (c) 2014 Krzysztof Profic. All rights reserved.
//
//  Based on: http://www.objc.io/issue-13/behaviors.html
//
#import <UIKit/UIKit.h>



@interface MultiplexerProxyBehavior : UIControl

//! targets to propagate messages to
@property(nonatomic, strong) IBOutletCollection(id) NSArray *targets;

@end
