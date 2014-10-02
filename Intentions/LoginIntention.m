//
//  LoginIntention.m
//  Intentions
//
//  Created by Krzysztof Profic on 01/10/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//

#import "LoginIntention.h"

@interface LoginIntention()
@property (strong, nonatomic) IBOutlet UITextField * usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField * passwordTextField;
@end

@implementation LoginIntention

- (IBAction)login:(id)sender {
    self.statusLabel.text = @"connecting...";
    [self sendActionsForControlEvents:UIControlEventValueChanged];  //
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:1]];
    
    self.statusLabel.text = [NSString stringWithFormat:@"Authenticating %@ ...", self.usernameTextField.text];
    [self sendActionsForControlEvents:UIControlEventValueChanged];  //
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:1]];
    
    
    self.statusLabel.text = @"done";
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:1]];
    [self sendActionsForControlEvents:UIControlEventValueChanged];  //
}

@end
