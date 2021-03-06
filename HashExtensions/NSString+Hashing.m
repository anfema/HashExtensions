//
//  NSString+Hashing.m
//  HashExtensions
//
//  Created by Johannes Schriewer on 10/11/15.
//  Copyright © 2015 anfema GmbH. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted under the conditions of the 3-clause
// BSD license (see LICENSE.txt for full license text)

#import "NSString+Hashing.h"
#import "Internal.h"
#import "NSData+Hashing.h"

@implementation NSString (Hashing)

- (NSData *)cryptoHash:(HashType)hash {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data cryptoHash:hash];
}

@end
