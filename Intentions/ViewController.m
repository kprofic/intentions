//
//  ViewController.h
//  Intentions
//
//  Created by Chris Eidhof on 16/03/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//
//  Modified by Krzysztof Profic
//


#import "ViewController.h"
#import "ModelContainer.h"
#import "Person.h"
#import "PersonViewModel.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet ModelContainer* modelContainer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Person *person = [Person new];
    person.name = @"Krzysztof";
    person.surname = @"Profic";
    
    PersonViewModel * pvm = [[PersonViewModel alloc] initWithModel:person];
    self.modelContainer.viewModel = pvm;
    
}
@end