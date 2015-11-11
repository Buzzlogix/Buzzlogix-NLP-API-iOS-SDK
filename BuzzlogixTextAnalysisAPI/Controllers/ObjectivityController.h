//
//  ObjectivityController.h
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

@interface ObjectivityController : BaseController

/**
* Completion block definition for asynchronous call to returnObjectivity */
typedef void (^CompletedPostReturnObjectivity)(BOOL success, HttpContext* context, NSError* error);

/**
* Use this endpoint to retrieve whether the provided text is subjective or objective.
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnObjectivityAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnObjectivity) onCompleted;

@end