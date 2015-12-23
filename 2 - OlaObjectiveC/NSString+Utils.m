//
//  NSString+Utils.m
//  OlaObjectiveC
//
//  Created by André Guedes on 17/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

- (NSString *)trim {
    NSString *s = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return s;
}

@end
