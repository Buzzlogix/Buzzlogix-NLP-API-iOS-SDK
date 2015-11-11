//
//  OAuthUtility.h
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for Buzzlogix by APIMATIC BETA v2.0 on 11/09/2015
//
#import "Configuration.h"
#import "HttpRequest.h"

@interface CustomAuthUtility : NSObject

/**
* Appends the necessary Custom Authentication credentials for making this authorized call
* @param	request	The out going request to access the resource
*/
+(void) appendCustomAuthParams:(HttpRequest*) request;

@end