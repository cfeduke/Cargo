#import <UIKit/UIKit.h>
#import "CarDriver.h"
#import "CargoColorChooser.h"

@interface CargoViewController : UIViewController {
    IBOutlet UIView *cargoView;
    IBOutlet CargoColorChooser *cargoColorChooser;
    IBOutlet CarDriver *carDriver;
    UIPopoverController *driveControls;
}
-(IBAction) showOrHideDriveControls:(id)sender;
@end