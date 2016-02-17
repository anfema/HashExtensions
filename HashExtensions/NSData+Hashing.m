//
//  NSData+NSData_Hashing.m
//  HashExtensions
//
//  Created by Johannes Schriewer on 10/11/15.
//  Copyright © 2015 anfema GmbH. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted under the conditions of the 3-clause
// BSD license (see LICENSE.txt for full license text)

#import "NSData+Hashing.h"
#import "Internal.h"

@implementation NSData (Hashing)

- (NSData *)cryptoHash:(HashType)hash {
    NSMutableData *result = [[NSMutableData alloc] initWithLength:digestLength(hash)];
    hashFunctionType func = hashFunction(hash);
    if (func != NULL) {
        func(self.bytes, (CC_LONG)self.length, result.mutableBytes);
    }
    return [NSData dataWithData:result];
}

+ (NSData *)cryptoHashWithData:(NSData *)data hash:(HashType)hash {
    return [data cryptoHash:hash];
}

@end
