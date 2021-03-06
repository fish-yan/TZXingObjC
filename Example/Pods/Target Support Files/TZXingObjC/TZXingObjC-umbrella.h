#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "ZXingObjC.h"
#import "ZXMultiFormatReader.h"
#import "ZXMultiFormatWriter.h"
#import "ZXCapture.h"
#import "ZXCaptureDelegate.h"
#import "ZXCGImageLuminanceSource.h"
#import "ZXCGImageLuminanceSourceInfo.h"
#import "ZXImage.h"
#import "ZXMathUtils.h"
#import "ZXMonochromeRectangleDetector.h"
#import "ZXWhiteRectangleDetector.h"
#import "ZXGenericGF.h"
#import "ZXGenericGFPoly.h"
#import "ZXReedSolomonDecoder.h"
#import "ZXReedSolomonEncoder.h"
#import "ZXBitArray.h"
#import "ZXBitMatrix.h"
#import "ZXBitSource.h"
#import "ZXBoolArray.h"
#import "ZXByteArray.h"
#import "ZXCharacterSetECI.h"
#import "ZXDecimal.h"
#import "ZXDecoderResult.h"
#import "ZXDefaultGridSampler.h"
#import "ZXDetectorResult.h"
#import "ZXGlobalHistogramBinarizer.h"
#import "ZXGridSampler.h"
#import "ZXHybridBinarizer.h"
#import "ZXIntArray.h"
#import "ZXPerspectiveTransform.h"
#import "ZXStringUtils.h"
#import "ZXBarcodeFormat.h"
#import "ZXBinarizer.h"
#import "ZXBinaryBitmap.h"
#import "ZXByteMatrix.h"
#import "ZXDecodeHints.h"
#import "ZXDimension.h"
#import "ZXEncodeHints.h"
#import "ZXErrors.h"
#import "ZXingObjCCore.h"
#import "ZXInvertedLuminanceSource.h"
#import "ZXLuminanceSource.h"
#import "ZXPlanarYUVLuminanceSource.h"
#import "ZXReader.h"
#import "ZXResult.h"
#import "ZXResultMetadataType.h"
#import "ZXResultPoint.h"
#import "ZXResultPointCallback.h"
#import "ZXRGBLuminanceSource.h"
#import "ZXWriter.h"
#import "ZXByQuadrantReader.h"
#import "ZXGenericMultipleBarcodeReader.h"
#import "ZXMultipleBarcodeReader.h"
#import "ZXCodaBarReader.h"
#import "ZXCodaBarWriter.h"
#import "ZXCode128Reader.h"
#import "ZXCode128Writer.h"
#import "ZXCode39Reader.h"
#import "ZXCode39Writer.h"
#import "ZXCode93Reader.h"
#import "ZXCode93Writer.h"
#import "ZXEAN13Reader.h"
#import "ZXEAN13Writer.h"
#import "ZXEAN8Reader.h"
#import "ZXEAN8Writer.h"
#import "ZXEANManufacturerOrgSupport.h"
#import "ZXingObjCOneD.h"
#import "ZXMultiFormatOneDReader.h"
#import "ZXMultiFormatUPCEANReader.h"
#import "ZXOneDimensionalCodeWriter.h"
#import "ZXOneDReader.h"
#import "ZXUPCEANExtension2Support.h"
#import "ZXUPCEANExtension5Support.h"
#import "ZXUPCEANExtensionSupport.h"
#import "ZXUPCEANReader.h"
#import "ZXUPCEANWriter.h"
#import "ZXAbstractDoCoMoResultParser.h"
#import "ZXAddressBookAUResultParser.h"
#import "ZXAddressBookDoCoMoResultParser.h"
#import "ZXAddressBookParsedResult.h"
#import "ZXBizcardResultParser.h"
#import "ZXBookmarkDoCoMoResultParser.h"
#import "ZXCalendarParsedResult.h"
#import "ZXEmailAddressParsedResult.h"
#import "ZXEmailAddressResultParser.h"
#import "ZXEmailDoCoMoResultParser.h"
#import "ZXGeoParsedResult.h"
#import "ZXGeoResultParser.h"
#import "ZXISBNParsedResult.h"
#import "ZXISBNResultParser.h"
#import "ZXParsedResult.h"
#import "ZXParsedResultType.h"
#import "ZXProductParsedResult.h"
#import "ZXProductResultParser.h"
#import "ZXResultParser.h"
#import "ZXSMSMMSResultParser.h"
#import "ZXSMSParsedResult.h"
#import "ZXSMSTOMMSTOResultParser.h"
#import "ZXSMTPResultParser.h"
#import "ZXTelParsedResult.h"
#import "ZXTelResultParser.h"
#import "ZXTextParsedResult.h"
#import "ZXURIParsedResult.h"
#import "ZXURIResultParser.h"
#import "ZXURLTOResultParser.h"
#import "ZXVCardResultParser.h"
#import "ZXVEventResultParser.h"
#import "ZXVINParsedResult.h"
#import "ZXVINResultParser.h"
#import "ZXWifiParsedResult.h"
#import "ZXWifiResultParser.h"
#import "ZXQRCodeBitMatrixParser.h"
#import "ZXQRCodeDataBlock.h"
#import "ZXQRCodeDataMask.h"
#import "ZXQRCodeDecodedBitStreamParser.h"
#import "ZXQRCodeDecoder.h"
#import "ZXQRCodeDecoderMetaData.h"
#import "ZXQRCodeErrorCorrectionLevel.h"
#import "ZXQRCodeFormatInformation.h"
#import "ZXQRCodeMode.h"
#import "ZXQRCodeVersion.h"
#import "ZXQRCodeAlignmentPattern.h"
#import "ZXQRCodeAlignmentPatternFinder.h"
#import "ZXQRCodeDetector.h"
#import "ZXQRCodeFinderPattern.h"
#import "ZXQRCodeFinderPatternFinder.h"
#import "ZXQRCodeFinderPatternInfo.h"
#import "ZXQRCode.h"
#import "ZXQRCodeBlockPair.h"
#import "ZXQRCodeEncoder.h"
#import "ZXQRCodeMaskUtil.h"
#import "ZXQRCodeMatrixUtil.h"
#import "ZXMultiDetector.h"
#import "ZXMultiFinderPatternFinder.h"
#import "ZXQRCodeMultiReader.h"
#import "ZXingObjCQRCode.h"
#import "ZXQRCodeReader.h"
#import "ZXQRCodeWriter.h"

FOUNDATION_EXPORT double TZXingObjCVersionNumber;
FOUNDATION_EXPORT const unsigned char TZXingObjCVersionString[];

