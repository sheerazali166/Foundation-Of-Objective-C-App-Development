//
//  HeadLight.m
//  Inheritance
//
//  Created by Sheeraz on 7/27/24.
//

#import <Foundation/Foundation.h>

#import "HeadLight.h"

@implementation HeadLight

- (NSString *) description {
    
    NSString *nsStringRate = [NSString stringWithFormat:@"\nColor: %@, Tachnology: %@, %@",
                              self.nsStringColor, self.nsStringTechnology, [super description]];
    
    return  nsStringRate;
}

@end
