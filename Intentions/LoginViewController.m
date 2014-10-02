//
//  LoginViewController.m
//  Intentions
//
//  Created by Krzysztof Profic on 01/10/14.
//  Copyright (c) 2014 Krzysztof Profic. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginIntention.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (IBAction)loginIntentionStateChanged:(LoginIntention *)sender {
    if ([sender.statusLabel.text isEqualToString:@"done"]){
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
