//
//  MKAppDelegate.h
//  iOS Helpers
//
//  Created by Michael Katz on 7/31/12.
//  Copyright (c) 2012 MK. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MKViewController;

@interface MKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MKViewController *viewController;

@end
