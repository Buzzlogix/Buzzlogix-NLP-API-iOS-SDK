//
//  SentimentController.h
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for Buzzlogix by APIMATIC BETA v2.0 on 11/09/2015
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "CustomAuthUtility.h"

@interface SentimentController : BaseController

/**
* Completion block definition for asynchronous call to returnGeneralSentiment */
typedef void (^CompletedPostReturnGeneralSentiment)(BOOL success, HttpContext* context, NSError* error);

/**
* Use this endpoint to retrieve the sentiment of the provided text
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnGeneralSentimentAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnGeneralSentiment) onCompleted;

@end