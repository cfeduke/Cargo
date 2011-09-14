#import <UIKit/UIKit.h>
#import "CarDriver.h"
#import "CargoColorChooser.h"

@interface CargoViewController : UIViewController {
    IBOutlet UIView *cargoView;
    IBOutlet CargoColorChooser *cargoColorChooser;
    IBOutlet CarDriver *carDriver;
    UIPopoverController *driveControls;
    IBOutlet UIView *corner1;
    IBOutlet UIView *corner2;
    IBOutlet UIView *corner3;
    IBOutlet UIView *corner4;
}
-(IBAction) showOrHideDriveControls:(id)sender;
@end