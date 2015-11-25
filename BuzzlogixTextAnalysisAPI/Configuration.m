//
//  Configuration.m
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for buzzlogix by APIMATIC BETA v2.0 on 11/25/2015
//
#import "Configuration.h"

@implementation Configuration

/** The base Uri for API calls */
+(NSString*) BaseUri
{
    return @"http://text.buzzlogix.com:8000";
}

/** Supply your API Key.  */
+(NSString*) Apikey
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Apikey"];
}


@end