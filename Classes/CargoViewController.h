#import <UIKit/UIKit.h>
#import "CargoColorChooser.h"

@interface CargoViewController : UIViewController {
    UIView *cargoView;
    CargoColorChooser *cargoColorChooser;
}
@property (nonatomic, retain) IBOutlet UIView *cargoView;
@property (nonatomic, retain) IBOutlet CargoColorChooser *cargoColorChooser;
@end