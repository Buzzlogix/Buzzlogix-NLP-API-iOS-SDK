//
//  TwittersentimentController.h
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for buzzlogix by APIMATIC BETA v2.0 on 12/06/2015
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"

@interface TwittersentimentController : BaseController

/**
* Completion block definition for asynchronous call to Return English Twitter Sentiment (plaintext) */
typedef void (^CompletedPostReturnEnglishTwitterSentimentPlaintext)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The Tweet should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishTwitterSentimentPlaintextAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishTwitterSentimentPlaintext) onCompleted;

/**
* Completion block definition for asynchronous call to Return English Twitter Sentiment (multipart form) */
typedef void (^CompletedPostReturnEnglishTwitterSentimentMultipartForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The Tweet should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    text    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishTwitterSentimentMultipartFormAsyncWithText:(NSURL*) text
                completionBlock:(CompletedPostReturnEnglishTwitterSentimentMultipartForm) onCompleted;

/**
* Completion block definition for asynchronous call to Return English Twitter Sentiment (encoded form) */
typedef void (^CompletedPostReturnEnglishTwitterSentimentEncodedForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Return the sentiment of an English Tweet supplied in an encoded form using key 'text'.
* @param    text    Required parameter: Supply the Tweet to be classified.
*/
- (void) createReturnEnglishTwitterSentimentEncodedFormAsyncWithText:(NSString*) text
                completionBlock:(CompletedPostReturnEnglishTwitterSentimentEncodedForm) onCompleted;

@end