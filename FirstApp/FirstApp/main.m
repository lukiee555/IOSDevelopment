//
//  main.m
//  FirstApp
//
//  Created by Lokesh Soni on 30/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SomeClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        SomeClass *math = [[SomeClass alloc] init];
        
        NSLog(@"%i", [math tentimes:55] );
        
        NSLog(@"%i",[math addNumber:25 toNumber:25]);
    }
    return 0;
}
