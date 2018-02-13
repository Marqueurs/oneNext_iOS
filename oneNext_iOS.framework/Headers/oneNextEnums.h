//
//  oneNextEnums.h
//  oneNextTaggerSDK
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger,oneNextLoggingMode) {
    oneNextLoggingMode_Verbose,
    oneNextLoggingMode_Warning,
    oneNextLoggingMode_Error,
    oneNextLoggingMode_NoLogging
} ;

typedef NS_ENUM(NSUInteger, oneNextSendingMode) {
    oneNextSendingMode_Compact,
    oneNextSendingMode_Full,
    oneNextSendingMode_Disconnected
};

