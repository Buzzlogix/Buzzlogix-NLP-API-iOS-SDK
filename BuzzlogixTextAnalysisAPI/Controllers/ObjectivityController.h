//
//  ObjectivityController.h
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

@interface ObjectivityController : BaseController

/**
* Completion block definition for asynchronous call to returnEnglishObjectivity */
typedef void (^CompletedPostReturnEnglishObjectivity)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishObjectivityAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishObjectivity) onCompleted;

/**
* Completion block definition for asynchronous call to returnEnglishObjectivityForm */
typedef void (^CompletedPostReturnEnglishObjectivityForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishObjectivityFormAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishObjectivityForm) onCompleted;

@end