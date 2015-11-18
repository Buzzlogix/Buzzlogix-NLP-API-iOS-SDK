//
//  KeywordsController.m
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for Buzzlogix by APIMATIC BETA v2.0 on 11/18/2015
//
#import "KeywordsController.h"

@implementation KeywordsController

/**
* The text should be provided as text/plain in the body
* @param    body    Required parameter: Supply text to be classified.
* @return	Returns the id response from the API call */
- (void) createReturnEnglishKeywordsAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishKeywords) onCompleted
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
        @"apikey": [Configuration Apikey]
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
         if (response.statusCode == 401)
             statusError = [[APIError alloc] initWithReason: @"No API Key found in headers, body or querystring"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         else if (response.statusCode == 403)
             statusError = [[APIError alloc] initWithReason: @"Invalid authentication credentials"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         else if (response.statusCode == 429)
             statusError = [[APIError alloc] initWithReason: @"API rate limit exceeded"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         else if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
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
* @param    apikey    Required parameter: Supply your API key.
* @param    body    Required parameter: Supply text to be classified.
* @return	Returns the id response from the API call */
- (void) createReturnEnglishKeywordsFormAsyncWithApikey:(NSString*) apikey
                body:(NSString*) body
                completionBlock:(CompletedPostReturnEnglishKeywordsForm) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/keywords/form"];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"apikey": [Configuration Apikey],
        @"apikey": apikey
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
         if (response.statusCode == 401)
             statusError = [[APIError alloc] initWithReason: @"No API Key found in headers, body or querystring"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         else if (response.statusCode == 403)
             statusError = [[APIError alloc] initWithReason: @"Invalid authentication credentials"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         else if (response.statusCode == 429)
             statusError = [[APIError alloc] initWithReason: @"API rate limit exceeded"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         else if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
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