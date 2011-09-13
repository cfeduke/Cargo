//
//  CargoColorChooser.h
//  Cargo
//
//  Created by Charles Feduke on 9/13/11.
//  Copyright 2011 Deployment Zone. All rights reserved.
//



@interface CargoColorChooser : UIViewController {
    IBOutlet UIView *cargoView;
}
@property (nonatomic, retain) IBOutlet UIView *cargoView;
-(IBAction) setCargoColor:(id)sender;
@end
