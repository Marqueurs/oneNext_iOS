//
//  oneNextTagger.h
//  oneNextTaggerSDK
//

#import <Foundation/Foundation.h>
#import "oneNextEnums.h"

@interface oneNextTagger : NSObject
{
    @protected
    NSString *_serial;
    NSString *_customerData;
    oneNextLoggingMode _loggingMode;
}


#pragma mark - Readonly properties
////////////////////////////////////////////////////////////////////////////////

@property (nonatomic, readonly) NSString *serial;
@property (nonatomic, readonly) NSString *customerData;

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Read/Write properties
////////////////////////////////////////////////////////////////////////////////

@property (nonatomic) oneNextLoggingMode loggingMode;  //Default is oneNextLoggingMode_Error

@property (nonatomic, strong) NSString *mediaContentId;
@property (nonatomic, strong) NSString *mediaDiffMode;
@property (nonatomic, strong) NSString *mediaChannel;

@property (nonatomic, strong) NSString *netMeasurement;

////////////////////////////////////////////////////////////////////////////////


#pragma mark - SDK Utils
////////////////////////////////////////////////////////////////////////////////

+ (NSString *) oneNextVersion;

////////////////////////////////////////////////////////////////////////////////

@end
