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
    switch (button.tag) {
        case 1: // up
            cargoView.center = CGPointMake(cargoView.center.x, cargoView.center.y - 10);
            break;
        case 2: // down
            cargoView.center = CGPointMake(cargoView.center.x, cargoView.center.y + 10);
            break;
        case 3: // right
            cargoView.center = CGPointMake(cargoView.center.x + 10, cargoView.center.y);
            break;
        case 4: // left
            cargoView.center = CGPointMake(cargoView.center.x - 10, cargoView.center.y);
            break;
        default:
            break;
    }
}
@end
