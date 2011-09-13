//
//  CargoColorChooser.h
//  Cargo
//
//  Created by Charles Feduke on 9/13/11.
//  Copyright 2011 Deployment Zone. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface CargoColorChooser : UIViewController {
    IBOutlet UIView *cargoView;
    UIPopoverController *popoverController;
}
@property (nonatomic, retain) IBOutlet UIView *cargoView;
@property (nonatomic, retain) UIPopoverController *popoverController;

-(IBAction) setCargoColor:(id)sender;
@end
