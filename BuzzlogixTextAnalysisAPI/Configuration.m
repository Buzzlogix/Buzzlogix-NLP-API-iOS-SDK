//
//  Configuration.m
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for Buzzlogix by APIMATIC BETA v2.0 on 11/18/2015
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