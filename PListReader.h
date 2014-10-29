//
//  PListReader.h
//  AnimalRevealers
//
//  Created by Chris Milne on 11/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PListReader : NSObject

// Reading plist code
- (id)fReadPlist:(NSString *)fileName;
- (NSArray *)fGetArray:(NSString *)fileName;
- (NSDictionary *)fGetDictionary:(NSString *)fileName;
- (void)fPrintDictionary:(NSString*)fileName;
- (void)fPrintArray:(NSString*)fileName;

@end
