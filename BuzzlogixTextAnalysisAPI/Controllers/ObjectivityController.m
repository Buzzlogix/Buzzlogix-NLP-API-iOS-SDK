//
//  ObjectivityController.m
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for Buzzlogix by APIMATIC BETA v2.0 on 11/09/2015
//
#import "ObjectivityController.h"

@implementation ObjectivityController

/**
* Use this endpoint to retrieve whether the provided text is subjective or objective.
* @param    body    Required parameter: Supply text to be classified.
* @return	Returns the void response from the API call */
- (void) createReturnObjectivityAsyncWithBody:(NSString*) body
                completionBlock:(CompletedPostReturnObjectivity) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/objectivity"];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"apikey": Configuration_Apikey
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

    //Custom Auth to be appended for authorization
    [CustomAuthUtility appendCustomAuthParams: request];

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
             onCompleted(NO, context, statusError);
         }
         else
         {
             //return response to API caller

         }
     } failure:^(id context, NSError *error) {
 
         //announce completion with failure
         onCompleted(NO, context, error);
     }];
}


@end