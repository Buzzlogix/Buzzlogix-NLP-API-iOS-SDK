//
//  SentimentController.h
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

@interface SentimentController : BaseController

/**
* Completion block definition for asynchronous call to returnEnglishGeneralSentiment */
typedef void (^CompletedPostReturnEnglishGeneralSentiment)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishGeneralSentimentAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishGeneralSentiment) onCompleted;

/**
* Completion block definition for asynchronous call to returnEnglishGeneralSentimentForm */
typedef void (^CompletedPostReturnEnglishGeneralSentimentForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishGeneralSentimentFormAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishGeneralSentimentForm) onCompleted;

@end