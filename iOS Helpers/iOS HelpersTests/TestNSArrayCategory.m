//
//  TestNSArrayCategory.m
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

#import "TestNSArrayCategory.h"
#import "NSArray+MKHelpers.h"

@implementation TestNSArrayCategory

- (void) testReverse
{
    NSArray* arr = @[@1,@2,@3];
    NSArray* end = [arr reverseArray];
    NSArray* exp = @[@3,@2,@1];
    STAssertEqualObjects(end, exp, @"should match");
    
    
    arr = @[];
    end = [arr reverseArray];
    exp = @[];
    STAssertEqualObjects(end, exp, @"should match");
}

@end
