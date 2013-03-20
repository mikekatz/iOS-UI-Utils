//
//  MKViewController.m
//  iOS Helpers
//
//  Copyright (c) 2012-2013 Michael Katz.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

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
    MKGradientButton* button = (MKGradientButton*) [self.view viewWithTag:2];
    button.buttonColor = [UIColor blackColor];
    
    button = (MKGradientButton*) [self.view viewWithTag:3];
    button.buttonColor = [UIColor blueColor];
    [button startSpinner];
    
    button = (MKGradientButton*) [self.view viewWithTag:4];
    button.buttonColor = [UIColor redColor];
    
    button = (MKGradientButton*) [self.view viewWithTag:5];
    button.buttonColor = [UIColor greenColor];
    
    button = (MKGradientButton*) [self.view viewWithTag:6];
    button.gradientArray = @[[UIColor redColor], [UIColor purpleColor]];
    button.borderColor = [UIColor yellowColor];
    
    button = (MKGradientButton*) [self.view viewWithTag:7];
    button.gradientArray = @[[UIColor redColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor], [UIColor purpleColor]];
    
    button = (MKGradientButton*) [self.view viewWithTag:8];
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
