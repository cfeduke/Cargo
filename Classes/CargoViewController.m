#import "CargoViewController.h"

@implementation CargoViewController

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
    cargoColorChooser.popoverController = popover;
    [popover presentPopoverFromRect:cargoView.bounds 
                             inView:cargoView
           permittedArrowDirections:UIPopoverArrowDirectionRight + UIPopoverArrowDirectionLeft
                           animated:YES];
    
    //[self presentModalViewController:cargoColorChooser animated:YES];
}

-(IBAction)showOrHideDriveControls:(id)sender {
    if (driveControls) {
        [driveControls dismissPopoverAnimated:YES];
        driveControls = nil;
    } else {
        driveControls = [[UIPopoverController alloc]
                                         initWithContentViewController:carDriver];
        driveControls.popoverContentSize = carDriver.view.frame.size;
        [driveControls presentPopoverFromBarButtonItem:sender 
                         permittedArrowDirections:UIPopoverArrowDirectionAny 
                                         animated:YES];
        driveControls.delegate = self;
    }
}

-(void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController {
    driveControls = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end