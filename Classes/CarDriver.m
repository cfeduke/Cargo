#import "CarDriver.h"

@implementation CarDriver

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)buttonClicked:(id)sender {
    UIButton *button = (UIButton *)sender;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    CGRect frame = cargoView.frame;
    
    switch (button.tag) {
        case 1: // up
            frame.origin.y -= CARGO_MOVEMENT_STEP;
            break;
        case 2: // down
            frame.origin.y += CARGO_MOVEMENT_STEP;
            break;
        case 3: // right
            frame.origin.x += CARGO_MOVEMENT_STEP;
            break;
        case 4: // left
            frame.origin.x -= CARGO_MOVEMENT_STEP;
            break;
        default:
            break;
    }
    
    cargoView.frame = frame;
    
    [UIView commitAnimations];
}
@end
