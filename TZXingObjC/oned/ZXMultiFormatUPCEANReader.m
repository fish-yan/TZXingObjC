/*
 * Copyright 2012 ZXing authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "ZXDecodeHints.h"
#import "ZXEAN8Reader.h"
#import "ZXEAN13Reader.h"
#import "ZXErrors.h"
#import "ZXMultiFormatUPCEANReader.h"
#import "ZXReader.h"
#import "ZXResult.h"

@interface ZXMultiFormatUPCEANReader ()

@property (nonatomic, strong, readonly) NSMutableArray *readers;

@end

@implementation ZXMultiFormatUPCEANReader

- (id)initWithHints:(ZXDecodeHints *)hints {
  if (self = [super init]) {
    _readers = [NSMutableArray array];

    if (hints != nil) {
      if ([hints containsFormat:kBarcodeFormatEan13]) {
        [_readers addObject:[[ZXEAN13Reader alloc] init]];
      }

      if ([hints containsFormat:kBarcodeFormatEan8]) {
        [_readers addObject:[[ZXEAN8Reader alloc] init]];
      }
    }

    if ([_readers count] == 0) {
      [_readers addObject:[[ZXEAN13Reader alloc] init]];
      [_readers addObject:[[ZXEAN8Reader alloc] init]];
    }
  }

  return self;
}

- (ZXResult *)decodeRow:(int)rowNumber row:(ZXBitArray *)row hints:(ZXDecodeHints *)hints error:(NSError **)error {
  NSRange startGuardPattern = [ZXUPCEANReader findStartGuardPattern:row error:error];
  if (startGuardPattern.location == NSNotFound) {
    return nil;
  }
  for (ZXUPCEANReader *reader in self.readers) {
    ZXResult *result = [reader decodeRow:rowNumber row:row startGuardRange:startGuardPattern hints:hints error:error];
    if (!result) {
      continue;
    }
    return result;
  }

  if (error) *error = ZXNotFoundErrorInstance();
  return nil;
}

- (void)reset {
  for (id<ZXReader> reader in self.readers) {
    [reader reset];
  }
}

@end
