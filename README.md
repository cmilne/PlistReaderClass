PlistReaderClass
================

An iOS Library of a Plist Reader easily allowing you to read NSArrays or NSDictionaries from plist files

To Install:
1. Include the .h and .m files in your project

Usage (Pseudocode):

import "PListReader.h"

@interface UsingClass() {
	@property (strong, nonatomic) NSArray *array;
	@property (strong, nonatomic) NSDictioanry *dict;
}
@end

...

// Inside a function where you want to read a plist file..
// You don't need to include the .plist extension in the filename

PListReader *reader = [PListReader alloc] init];

self.array = [reader fGetArray:@"fileNameWithArrayRoot"];

self.dict = [reader fGetDictionary:@"fileNameWithDictionaryRoot"];

// Debugging, printing helper functions to make sure the plist loaded correctly

[reader fPrintArray:@"fileNameWithArrayRoot"];

[reader fPrintDictionary:@"fileNameWithDictionaryRoot"];

// You can also return the plist from an NSData file

id plist = [reader fReadPList:@"fileNameSerializedData"];
