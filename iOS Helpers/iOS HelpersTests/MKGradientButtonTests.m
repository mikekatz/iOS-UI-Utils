//
//  MKGradientButtonTests.m
//  iOS UI Utils
//
//  Created by Michael Katz on 10/17/12.
//  Copyright (c) 2012 MK. All rights reserved.
//

#import "MKGradientButtonTests.h"
#import "MKGradientButton.h"

@implementation MKGradientButtonTests

- (void) testButton
{
    MKGradientButton* button = [[MKGradientButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    button.buttonColor = [UIColor redColor]; //creates a slight gradient centered on red
    //button.gradientArray = @[[UIColor yellowColor], [UIColor blueColor]]; //set the gradient directly
    //(use either buttonColor or gradientArray -- but not both!)
        
    //these can be set through Interface Builder, or with code
    [button setTitle:@"Do It!" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(doSomething:) forControlEvents:UIControlEventTouchUpInside];
    
    STAssertNotNil(button, @"Should have a button object");
}

@end
