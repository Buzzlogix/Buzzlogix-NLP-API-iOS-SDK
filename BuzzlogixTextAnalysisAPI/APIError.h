//
//  APIError.h
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for buzzlogix by APIMATIC BETA v2.0 on 12/06/2015
//
#ifndef APIMATIC_APIERROR
#define APIMATIC_APIERROR

#import <Foundation/Foundation.h>

@interface APIError : NSError

/**
 * The HTTP response code from the API request
 */
@property NSInteger errorCode;

/**
 * The error message for the API calls
 */
@property NSString* errorMessage;

/**
 * The error data for the API calls
 */
@property NSData* errorData;

/**
 * Initialization
 * @param	reason	The reason for the error
 * @param	code	The HTTP response code from the API request
 * @param	data	The Raw HTTP response data from the API request
 */
- (APIError*) initWithReason: (NSString*) reason
                         andCode: (NSInteger) code
                         andData: (NSData*) data;

@end

#endif