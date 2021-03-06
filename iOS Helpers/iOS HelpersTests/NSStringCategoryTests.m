//
//  NSStringCategoryTests.m
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

#import "NSStringCategoryTests.h"
#import "NSString+MKHelpers.h"

@implementation NSStringCategoryTests

- (void) testSubstringBetweenRanges
{
    NSString* start = @"1234_abc_5678";
    NSString* end = [start substringBetweenRange1:NSMakeRange(0, 5) andRange2:NSMakeRange(8, 2)];
    NSString* exp = @"abc";
    STAssertEqualObjects(end, exp, @"strings should match");
}

@end
