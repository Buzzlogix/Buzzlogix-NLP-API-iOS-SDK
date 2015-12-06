//
//  KeywordsController.h
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

@interface KeywordsController : BaseController

/**
* Completion block definition for asynchronous call to Return English Keywords (text/plain) */
typedef void (^CompletedPostReturnEnglishKeywordsTextPlain)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishKeywordsTextPlainAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishKeywordsTextPlain) onCompleted;

/**
* Completion block definition for asynchronous call to Return English Keywords (multipart/form-data) */
typedef void (^CompletedPostReturnEnglishKeywordsMultipartFormData)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    text    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishKeywordsMultipartFormDataAsyncWithText:(NSURL*) text
                completionBlock:(CompletedPostReturnEnglishKeywordsMultipartFormData) onCompleted;

/**
* Completion block definition for asynchronous call to Return English Keywords (x-www-form-urlencoded) */
typedef void (^CompletedPostReturnEnglishKeywordsXWwwFormUrlencoded)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Supply the text being classified using key 'text' in a form. 
* @param    text    Required parameter: Supply the text to be classified.
*/
- (void) createReturnEnglishKeywordsXWwwFormUrlencodedAsyncWithText:(NSString*) text
                completionBlock:(CompletedPostReturnEnglishKeywordsXWwwFormUrlencoded) onCompleted;

@end