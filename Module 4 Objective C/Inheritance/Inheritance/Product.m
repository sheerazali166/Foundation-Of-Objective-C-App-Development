//
//  Product.m
//  Inheritance
//
//  Created by Sheeraz on 7/27/24.
//

#import <Foundation/Foundation.h>

#import "Product.h"

@implementation Product

- (NSString *) description {
    
    NSString *nsStringRate = [NSString stringWithFormat:@"SKU: %@, Supplier: %@",
                             self.nsStringSKU, self.nsStringSupplier];
    
    return nsStringRate;
}

@end
