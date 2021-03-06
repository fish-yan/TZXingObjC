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

#import "ZXBitMatrix.h"
#import "ZXErrors.h"
#import "ZXMultiFormatWriter.h"

#if defined(ZXINGOBJC_ONED) || !defined(ZXINGOBJC_USE_SUBSPECS)
#import "ZXCodaBarWriter.h"
#import "ZXCode39Writer.h"
#import "ZXCode93Writer.h"
#import "ZXCode128Writer.h"
#import "ZXEAN8Writer.h"
#import "ZXEAN13Writer.h"
#endif
#if defined(ZXINGOBJC_QRCODE) || !defined(ZXINGOBJC_USE_SUBSPECS)
#import "ZXQRCodeWriter.h"
#endif

@implementation ZXMultiFormatWriter

+ (id)writer {
  return [[ZXMultiFormatWriter alloc] init];
}

- (ZXBitMatrix *)encode:(NSString *)contents format:(ZXBarcodeFormat)format width:(int)width height:(int)height error:(NSError **)error {
  return [self encode:contents format:format width:width height:height hints:nil error:error];
}

- (ZXBitMatrix *)encode:(NSString *)contents format:(ZXBarcodeFormat)format width:(int)width height:(int)height hints:(ZXEncodeHints *)hints error:(NSError **)error {
  id<ZXWriter> writer;
  switch (format) {
#if defined(ZXINGOBJC_ONED) || !defined(ZXINGOBJC_USE_SUBSPECS)
    case kBarcodeFormatEan8:
      writer = [[ZXEAN8Writer alloc] init];
      break;

    case kBarcodeFormatEan13:
      writer = [[ZXEAN13Writer alloc] init];
      break;

    case kBarcodeFormatCode39:
      writer = [[ZXCode39Writer alloc] init];
      break;

    case kBarcodeFormatCode93:
      writer = [[ZXCode93Writer alloc] init];
      break;

    case kBarcodeFormatCode128:
      writer = [[ZXCode128Writer alloc] init];
      break;

    case kBarcodeFormatCodabar:
        writer = [[ZXCodaBarWriter alloc] init];
        break;
#endif

#if defined(ZXINGOBJC_QRCODE) || !defined(ZXINGOBJC_USE_SUBSPECS)
    case kBarcodeFormatQRCode:
        writer = [[ZXQRCodeWriter alloc] init];
        break;
#endif

    default:
      if (error) *error = [NSError errorWithDomain:ZXErrorDomain code:ZXWriterError userInfo:@{NSLocalizedDescriptionKey: @"No encoder available for format"}];
      return nil;
  }

  @try {
    return [writer encode:contents format:format width:width height:height hints:hints error:error];
  } @catch (NSException *exception) {
    if (error) {
        *error = [NSError errorWithDomain:ZXErrorDomain code:ZXWriterError userInfo:@{NSLocalizedDescriptionKey: exception.reason}];
    }
    return nil;
  }
}

@end
