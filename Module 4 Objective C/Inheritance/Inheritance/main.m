//
//  main.m
//  Inheritance
//
//  Created by Sheeraz on 7/27/24.
//

#import <Foundation/Foundation.h>

#import "Product.h"
#import "CarPart.h"
#import "HeadLight.h"

int main(int argc, const char * argv[]) {

    
    // Program 1
    
    // Instantiating a subclass follows the same pattern as any class
    
    // Example
    
    
    printf("----------Program 1-------------\n");
    
    
    HeadLight *headLightP = [HeadLight alloc];
    
    [headLightP setNsStringColor: @"Bright White"];
    
    [headLightP setNsStringTechnology:@"Halogen"];
    
    
    // Program 2
    
    // But you can access all of the superclass's properties and methods as well
    
    // Example
    
    
    printf("----------Program 2-------------\n");
    
    
    HeadLight *headLightP2 = [HeadLight alloc];
    
    [headLightP2 setNsStringColor:@"Bright White"];
    
    [headLightP2 setNsStringTechnology:@"Halogen"];
    
    
    
    [headLightP2 setNsStringCarModel:@"BMW"];
    
    [headLightP2 setNsStringOEM:@"12345"];
    
    
    
    [headLightP2 setNsStringSKU:@"55555-66666"];
    
    [headLightP2 setNsStringSupplier:@"Buddy's Way Good Light"];
    
    
    
    // Program 3
    
    // A superclass can not access a subclass's data or methods
    
    // this is wrong then why are female dogs barking for nothing at your doors 
    
    // if they are wives of other currupt politicians
    
    // Eaxmple:
    
    printf("----------Program 3-------------\n");
    
    
    CarPart *carPartP = [CarPart alloc];
    
    // No visible @interface for 'CarPart' declares the selector 'setNsStringColor:'
    // [carPartP setNsStringColor:@"Bright White"];
    
    // No visible @interface for 'CarPart' declares the selector 'setNsStringTechnology:'
    // [carPartP setNsStringTechnology:@"Halogen"];
    
    
    
    [carPartP setNsStringCarModel:@"BMW"];
    
    [carPartP setNsStringOEM:@"12345"];
    
    
    [carPartP setNsStringSKU:@"55555-66666"];
    
    [carPartP setNsStringSupplier:@"Buddy's Way Good Lights"];
    
    
    // Program 4
    
    // Overriding Methods
    
    
    printf("----------Program 4-------------\n");
    
    
    HeadLight *headLightP3 = [HeadLight alloc];
    
    
    [headLightP3 setNsStringColor:@"Bright White"];
    
    [headLightP3 setNsStringTechnology:@"Halogen"];
    
    
    
    [headLightP3 setNsStringCarModel:@"BMW"];
    
    [headLightP3 setNsStringOEM:@"12345"];
    
    
    
    [headLightP3 setNsStringSKU:@"55555-66666"];
    
    [headLightP3 setNsStringSupplier:@"Buddy's Way Good Lights"];
    
    
    NSLog(@"%@\n", [headLightP3 description]);
    
    
    // Program 5
    
    // Overriding Methods + Super
    
    
    printf("----------Program 5-------------\n");
    
    
    HeadLight *headLightP4 = [HeadLight alloc];
    
    
    
    [headLightP4 setNsStringColor:@"Bright White"];
    
    [headLightP4 setNsStringTechnology:@"Halogen"];
    
    
    
    [headLightP4 setNsStringCarModel:@"BMW"];
    
    [headLightP4 setNsStringOEM:@"12345"];
    
    
    
    [headLightP4 setNsStringSKU:@"55555-66666"];
    [headLightP4 setNsStringSupplier:@"Buddy's Way Good Lights"];
    
    
    NSLog(@"%@\n", [headLightP4 description]);
    
    return 0;
}
