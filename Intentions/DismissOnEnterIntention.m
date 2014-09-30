//
//  DismissOnEnterIntention.m
//  Intentions
//
//  Created by Chris Eidhof on 16/03/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//

#import "DismissOnEnterIntention.h"

@interface DismissOnEnterIntention () <UITextFieldDelegate>

@end

@implementation DismissOnEnterIntention

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

@end
