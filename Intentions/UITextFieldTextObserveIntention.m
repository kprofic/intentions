//
//  UITextFieldTextObserveIntention.m
//  Intentions
//
//  Created by Krzysztof Profic on 30/09/14.
//  Copyright (c) 2014 Krzysztof Profic. All rights reserved.
//

#import "UITextFieldTextObserveIntention.h"

@interface UITextFieldTextObserveIntention()
@property (strong, nonatomic) IBOutlet UITextField * sourceObject;
@property (strong, nonatomic) IBOutlet id target;
@property (copy, nonatomic) IBOutlet NSString *targetKeyPath;

@end

@implementation UITextFieldTextObserveIntention


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChangeText:) name:UITextFieldTextDidChangeNotification object:self.sourceObject];
}

- (void)updateValue:(id)value
{
    if (self.targetKeyPath) {
        [self.target setValue:value forKeyPath:self.targetKeyPath];
    }
}

#pragma mark - Notifications

- (void)textFieldDidChangeText:(id)sender
{
    [self updateValue:self.sourceObject.text];
}

@end
