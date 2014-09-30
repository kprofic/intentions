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