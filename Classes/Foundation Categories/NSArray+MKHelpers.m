//
//  NSArray+MKHelpers.m
//  iOS UI Utils
//
//  Copyright 2012-2013 Michael Katz
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

#import "NSArray+MKHelpers.h"

@implementation NSArray (MKHelpers)

- (NSArray*) reverseArray
{
    NSUInteger count = self.count;
    NSMutableArray* ret = [NSMutableArray arrayWithCapacity:count];
    for (int i = count - 1; i >= 0; i--) {
        [ret addObject:[self objectAtIndex:i]];
    }
    return ret;
}

- (NSArray*) map:(id (^)(id obj, NSUInteger idx)) mapping
{
    NSMutableArray* ret = [NSMutableArray arrayWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        ret[idx] = mapping(obj, idx);
    }];
    return ret;
}

+ (NSArray*) intArrayFrom:(NSInteger)start to:(NSInteger)end
{
    NSUInteger count = abs(end - start) + 1;
    NSMutableArray* ret = [NSMutableArray arrayWithCapacity:count];
    NSUInteger idx = 0;
    if (end >= start) {
        for (NSInteger v = start; v <= end; v++) {
            ret[idx++] = @(v);
        }
    } else {
        for (NSInteger v = start; v >= end; v--) {
            ret[idx++] = @(v);
        }
    }
    return ret;
}

- (instancetype) arrayByRemovingObject:(id)object
{
    NSMutableArray* ma = [self mutableCopy];
    [ma removeObject:object];
    return [[self class] arrayWithArray:ma];
}


@end
