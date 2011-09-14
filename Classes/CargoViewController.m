#import "CargoViewController.h"

@implementation CargoViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [cargoView addGestureRecognizer:
        [[[UITapGestureRecognizer alloc]
          initWithTarget:self action:@selector(cargoContainerDidGetTapped)]
          autorelease]];
    [self.view bringSubviewToFront:cargoView];
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
        //driveControls.delegate = self;
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

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
                                        duration:(NSTimeInterval)duration {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];

    if (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
        corner1.frame = CGRectMake(0, 44, 100, 100);
        corner2.frame = CGRectMake(668, 44, 100, 100);
        corner3.frame = CGRectMake(0, 904, 100, 100);
        corner4.frame = CGRectMake(668, 904, 100, 100);
    } else {
        corner4.frame = CGRectMake(0, 44, 100, 100);
        corner3.frame = CGRectMake(924, 44, 100, 100);
        corner2.frame = CGRectMake(0, 648, 100, 100);
        corner1.frame = CGRectMake(924, 648, 100, 100);
    }
    
    [UIView commitAnimations];
}
@end