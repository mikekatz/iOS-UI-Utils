//
//  MKViewController.m
//  iOS Helpers
//
//  Created by Michael Katz on 7/31/12.
//  Copyright (c) 2012 MK. All rights reserved.
//

#import "MKViewController.h"
#import "UIWindow+MKHelpers.h"
#import "MKGradientButton.h"

@interface MKViewController ()

@end

@implementation MKViewController

- (UIView*) keyboardView
{
    UIView* keyboardView = nil;
    for (UIWindow* window in [[UIApplication sharedApplication] windows]) {
        for (UIView* view in window.subviews) {
            //this works in iOS 4+, if you still need to check for UIKeyboard as well
            if ([[[view class] description] hasPrefix:@"UIPeripheralHostView"]) {
                keyboardView = view;
            }
        }
    }
    return keyboardView;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    MKGradientButton* button = [self.view viewWithTag:2];
    button.buttonColor = [UIColor blackColor];
    
    button = [self.view viewWithTag:3];
    button.buttonColor = [UIColor blueColor];
    [button startSpinner];
    
    button = [self.view viewWithTag:4];
    button.buttonColor = [UIColor redColor];
    
    button = [self.view viewWithTag:5];
    button.buttonColor = [UIColor greenColor];
    
    button = [self.view viewWithTag:6];
    button.gradientArray = @[[UIColor redColor], [UIColor purpleColor]];
    button.borderColor = [UIColor yellowColor];
    
    button = [self.view viewWithTag:7];
    button.gradientArray = @[[UIColor redColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor], [UIColor purpleColor]];
    
    button = [self.view viewWithTag:8];
    button.borderColor = [UIColor brownColor];
    button.buttonColor = [UIColor yellowColor];
    [button startSpinner];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
