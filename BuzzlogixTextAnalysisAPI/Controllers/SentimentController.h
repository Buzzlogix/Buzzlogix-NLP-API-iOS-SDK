//
//  SentimentController.h
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

@interface SentimentController : BaseController

/**
* Completion block definition for asynchronous call to Return English General Sentiment (plaintext) */
typedef void (^CompletedPostReturnEnglishGeneralSentimentPlaintext)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishGeneralSentimentPlaintextAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishGeneralSentimentPlaintext) onCompleted;

/**
* Completion block definition for asynchronous call to Return English General sentiment (multipart form) */
typedef void (^CompletedPostReturnEnglishGeneralSentimentMultipartForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    text    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishGeneralSentimentMultipartFormAsyncWithText:(NSURL*) text
                completionBlock:(CompletedPostReturnEnglishGeneralSentimentMultipartForm) onCompleted;

/**
* Completion block definition for asynchronous call to Return English General sentiment (encoded form) */
typedef void (^CompletedPostReturnEnglishGeneralSentimentEncodedForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Return the sentiment of an English text supplied in an encoded form using key 'text'.
* @param    text    Required parameter: Supply the text to be classified.
*/
- (void) createReturnEnglishGeneralSentimentEncodedFormAsyncWithText:(NSString*) text
                completionBlock:(CompletedPostReturnEnglishGeneralSentimentEncodedForm) onCompleted;

@end