//
//  CarPart.m
//  Inheritance
//
//  Created by Sheeraz on 7/27/24.
//

#import <Foundation/Foundation.h>

#import "CarPart.h"

@implementation CarPart

- (NSString *) description {
    
    NSString *nsStringRate = [NSString stringWithFormat:@"Model: %@, OEM: %@, %@",
                              self.nsStringCarModel, self.nsStringOEM, [super description]];
    
    return  nsStringRate;
}

@end
