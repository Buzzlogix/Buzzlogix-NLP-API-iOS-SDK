//
//  KeywordsController.h
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for buzzlogix by APIMATIC BETA v2.0 on 11/25/2015
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
* Completion block definition for asynchronous call to returnEnglishKeywords */
typedef void (^CompletedPostReturnEnglishKeywords)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishKeywordsAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishKeywords) onCompleted;

/**
* Completion block definition for asynchronous call to returnEnglishKeywordsForm */
typedef void (^CompletedPostReturnEnglishKeywordsForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishKeywordsFormAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishKeywordsForm) onCompleted;

@end