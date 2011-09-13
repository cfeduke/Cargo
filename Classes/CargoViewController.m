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
    UIPopoverController *popover = [[UIPopoverController alloc]
                                    initWithContentViewController:cargoColorChooser];
    popover.popoverContentSize = cargoColorChooser.view.frame.size;
    [popover presentPopoverFromRect:cargoView.bounds 
                             inView:cargoView
           permittedArrowDirections:UIPopoverArrowDirectionRight + UIPopoverArrowDirectionLeft
                           animated:YES];
    
    //[self presentModalViewController:cargoColorChooser animated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end