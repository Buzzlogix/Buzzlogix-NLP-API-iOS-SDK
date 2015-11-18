//
//  TwittersentimentController.h
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for Buzzlogix by APIMATIC BETA v2.0 on 11/18/2015
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
* Completion block definition for asynchronous call to returnEnglishTwitterSentiment */
typedef void (^CompletedPostReturnEnglishTwitterSentiment)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The Tweet should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishTwitterSentimentAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishTwitterSentiment) onCompleted;

/**
* Completion block definition for asynchronous call to returnEnglishTwitterSentimentForm */
typedef void (^CompletedPostReturnEnglishTwitterSentimentForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The Tweet should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishTwitterSentimentFormAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishTwitterSentimentForm) onCompleted;

@end