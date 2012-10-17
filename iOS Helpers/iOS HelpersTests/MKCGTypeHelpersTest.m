//
//  MKCGTypeHelpersTest.m
//  iOS UI Utils Tests
//
//  Copyright 2012 Michael Katz
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
//

#import "MKCGTypeHelpersTest.h"
#import "MKCGTypeHelpers.h"

@implementation MKCGTypeHelpersTest

- (void) testCGRectInsetWidth
{
    CGRect start = CGRectZero;
    CGRect test  = CGRectInsetWidth(start, 10);
    STAssertEquals(start, CGRectZero, @"start should be unchanged");
    STAssertEquals(test, CGRectZero, @"");
    
    start = CGRectMake(10,10,300,20);
    test  = CGRectInsetWidth(start, 10);
    STAssertEquals(start, CGRectMake(10,10,300,20), @"start should be unchanged");
    STAssertEquals(test, CGRectMake(20,10,290,20), @"");
    
    start = CGRectMake(10,10,300,20);
    test  = CGRectInsetWidth(start, -10);
    STAssertEquals(start, CGRectMake(10,10,300,20), @"start should be unchanged");
    STAssertEquals(test, CGRectMake(10,10,290,20), @"");
}

@end
