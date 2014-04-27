//
//  Quiz7DetailViewController.m
//  Quiz7
//
//  Created by Michael Vitone on 3/18/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import "Quiz7DetailViewController.h"

@interface Quiz7DetailViewController ()
- (void)configureView;
@end

@implementation Quiz7DetailViewController

#pragma mark - Managing the detail item
@synthesize taskNameTextField;
@synthesize datePicker;

@synthesize currentTask;

@synthesize dismissBlock;


- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [taskNameTextField resignFirstResponder];
    
    return YES;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [taskNameTextField setText:[currentTask name]];
    [urgencySlider setValue:[currentTask urgency] / 10.0];
    [urgencyLabel setText:[NSString stringWithFormat:@"Urgency %.0f", [currentTask urgency]]];
    [datePicker setDate:[currentTask timeStamp]];
    
    [taskNameTextField setDelegate:self];
}

- (void)viewDidUnload
{
    [self setDatePicker:nil];
    urgencySlider = nil;
    urgencyLabel = nil;
    [self setTaskNameTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)save:(id)sender
{
    [currentTask setName:taskNameTextField.text];
    [currentTask setUrgency:urgencySlider.value * 10.0];
    [currentTask setTimeStamp:datePicker.date];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
- (IBAction)urgencySliderChange:(id)sender
{
    [urgencyLabel setText:[NSString stringWithFormat:@"Urgency: %.0f", urgencySlider.value * 10.0]];
}
@end
