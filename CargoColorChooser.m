//
//  CargoColorChooser.m
//  Cargo
//
//  Created by Charles Feduke on 9/13/11.
//  Copyright 2011 Deployment Zone. All rights reserved.
//

#import "CargoColorChooser.h"

@implementation CargoColorChooser

@synthesize cargoView;
@synthesize popoverController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

-(IBAction) setCargoColor:(id)sender {
    cargoView.backgroundColor = ((UIView *)sender).backgroundColor;
    [self.popoverController dismissPopoverAnimated:YES];
}
@end
