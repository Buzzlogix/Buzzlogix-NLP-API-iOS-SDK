//
//  KeywordsController.m
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for buzzlogix by APIMATIC BETA v2.0 on 12/06/2015
//
#import "KeywordsController.h"

@implementation KeywordsController

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
* @return	Returns the id response from the API call */
- (void) createReturnEnglishKeywordsTextPlainAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishKeywordsTextPlain) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/keywords"];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"X-Mashape-Key": [Configuration XMashapeKey]
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: headers];


    //prepare the request and fetch response 
    HttpRequest* request = [[self clientInstance] postBody: ^(HttpBodyRequest* request)
    {
        [request setBody: [body dataUsingEncoding:NSUTF8StringEncoding]]; //set request body
        [request setQueryUrl: queryUrl]; //set request url        
        [request setHeaders: headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: request
     success: ^(id context, HttpResponse *response) {
         //Error handling using HTTP status codes
         NSError* statusError = nil;

         //Error handling using HTTP status codes 
         if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
             statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         if(statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, context, nil, statusError);
         }
         else
         {
             //return response to API caller
             NSString* strResult = [(HttpStringResponse*)response body];
             id result = [NSJSONSerialization
                        JSONObjectWithData: [strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, context, result, nil);
         }
     } failure:^(id context, NSError *error) {
 
         //announce completion with failure
         onCompleted(NO, context, nil, error);
     }];
}

/**
* The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
* @param    text    Required parameter: Supply text to be classified.
* @return	Returns the id response from the API call */
- (void) createReturnEnglishKeywordsMultipartFormDataAsyncWithText:(NSURL*) text
                completionBlock:(CompletedPostReturnEnglishKeywordsMultipartFormData) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/keywords"];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request parameters
    NSMutableDictionary* parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [parameters addEntriesFromDictionary: @{
        @"text": text
    }];

    //convert to form parameters
    parameters = [APIHelper prepareParametersAsFormFields:parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: parameters];


    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"X-Mashape-Key": [Configuration XMashapeKey]
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: headers];


    //prepare the request and fetch response  
    HttpRequest* request = [[self clientInstance] post: ^(HttpRequest* request) 
    { 
        [request setQueryUrl: queryUrl]; //set request url        
        [request setHeaders: headers]; //set request headers
        [request setParameters: parameters]; //set request parameters

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: request
     success: ^(id context, HttpResponse *response) {
         //Error handling using HTTP status codes
         NSError* statusError = nil;

         //Error handling using HTTP status codes 
         if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
             statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         if(statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, context, nil, statusError);
         }
         else
         {
             //return response to API caller
             NSString* strResult = [(HttpStringResponse*)response body];
             id result = [NSJSONSerialization
                        JSONObjectWithData: [strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, context, result, nil);
         }
     } failure:^(id context, NSError *error) {
 
         //announce completion with failure
         onCompleted(NO, context, nil, error);
     }];
}

/**
* Supply the text being classified using key 'text' in a form. 
* @param    text    Required parameter: Supply the text to be classified.
* @return	Returns the id response from the API call */
- (void) createReturnEnglishKeywordsXWwwFormUrlencodedAsyncWithText:(NSString*) text
                completionBlock:(CompletedPostReturnEnglishKeywordsXWwwFormUrlencoded) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/keywords"];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request parameters
    NSMutableDictionary* parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [parameters addEntriesFromDictionary: @{
        @"text": text
    }];

    //convert to form parameters
    parameters = [APIHelper prepareParametersAsFormFields:parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: parameters];


    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"X-Mashape-Key": [Configuration XMashapeKey]
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: headers];


    //prepare the request and fetch response  
    HttpRequest* request = [[self clientInstance] post: ^(HttpRequest* request) 
    { 
        [request setQueryUrl: queryUrl]; //set request url        
        [request setHeaders: headers]; //set request headers
        [request setParameters: parameters]; //set request parameters

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: request
     success: ^(id context, HttpResponse *response) {
         //Error handling using HTTP status codes
         NSError* statusError = nil;

         //Error handling using HTTP status codes 
         if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
             statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         if(statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, context, nil, statusError);
         }
         else
         {
             //return response to API caller
             NSString* strResult = [(HttpStringResponse*)response body];
             id result = [NSJSONSerialization
                        JSONObjectWithData: [strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, context, result, nil);
         }
     } failure:^(id context, NSError *error) {
 
         //announce completion with failure
         onCompleted(NO, context, nil, error);
     }];
}


@end