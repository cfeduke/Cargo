#import "CargoViewController.h"

@implementation CargoViewController

@synthesize cargoView;
@synthesize cargoColorChooser;

-(void)viewDidLoad {
    [super viewDidLoad];
    [cargoView addGestureRecognizer:
        [[[UITapGestureRecognizer alloc]
          initWithTarget:self action:@selector(cargoContainerDidGetTapped)]
          autorelease]];
    
}

-(void)cargoContainerDidGetTapped {
    cargoColorChooser.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentModalViewController:cargoColorChooser animated:YES];
//    cargoView.backgroundColor = [UIColor colorWithRed:(random()%3)/3.0
//                                                green:(random()%3)/3.0
//                                                 blue:(random()%3)/3.0
//                                                alpha:1];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end