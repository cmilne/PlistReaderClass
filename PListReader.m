//
//  PListReader.m
//  AnimalRevealers
//
//  Created by Chris Milne on 11/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PListReader.h"

@implementation PListReader

- (id) init {
    if(self = [super init]) {
        
    }
    return self;
}

- (id)fReadPlist:(NSString *)fileName {  
    NSData *plistData;  
    NSString *error;  
    NSPropertyListFormat format;  
    id plist;  
    
    NSString *localizedPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];  
    plistData = [NSData dataWithContentsOfFile:localizedPath];   
    
    plist = [NSPropertyListSerialization propertyListFromData:plistData 
                                             mutabilityOption:NSPropertyListImmutable format:&format errorDescription:&error];  
    if (!plist) {  
        NSLog(@"Error reading plist from file '%s', error = '%s'", [localizedPath UTF8String], [error UTF8String]);
    }  
    
    return plist;  
}  

- (NSArray *)fGetArray:(NSString *)fileName {  
    return (NSArray *)[self fReadPlist:fileName];  
}   

- (NSDictionary *)fGetDictionary:(NSString *)fileName {  
    return (NSDictionary *)[self fReadPlist:fileName];  
}  

// Used for debugging
- (void)fPrintDictionary:(NSString*)fileName {
    NSDictionary* tempDict = [self fGetDictionary:fileName];
    for (id key in tempDict) {
        NSLog(@"key: %@, value: %@", key, [tempDict objectForKey:key]);
    }
}

- (void)fPrintArray:(NSString*)fileName {
    NSArray* tempArray = [self fGetArray:fileName];
    for(NSDictionary* tempDict in tempArray) {
        for(id key in tempDict) {
            NSLog(@"key: %@, value: %@", key, [tempDict objectForKey:key]);
        }
    }
}

@end
