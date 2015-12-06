//
//  ObjectivityController.h
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

@interface ObjectivityController : BaseController

/**
* Completion block definition for asynchronous call to Return English Objectivity (plaintext) */
typedef void (^CompletedPostReturnEnglishObjectivityPlaintext)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishObjectivityPlaintextAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishObjectivityPlaintext) onCompleted;

/**
* Completion block definition for asynchronous call to Return English Objectivity (multipart form) */
typedef void (^CompletedPostReturnEnglishObjectivityMultipartForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    text    Required parameter: Supply text to be classified.
*/
- (void) createReturnEnglishObjectivityMultipartFormAsyncWithText:(NSURL*) text
                completionBlock:(CompletedPostReturnEnglishObjectivityMultipartForm) onCompleted;

/**
* Completion block definition for asynchronous call to Return English Objectivity (encoded form) */
typedef void (^CompletedPostReturnEnglishObjectivityEncodedForm)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Return whether a text is objective or subjective. The text should be supplied in an encoded form using key 'text'.
* @param    text    Required parameter: TODO: type description here
*/
- (void) createReturnEnglishObjectivityEncodedFormAsyncWithText:(NSString*) text
                completionBlock:(CompletedPostReturnEnglishObjectivityEncodedForm) onCompleted;

@end