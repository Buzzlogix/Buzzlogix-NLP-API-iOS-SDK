//
//  Configuration.m
//  BuzzlogixTextAnalysisAPI
//
//  This file was automatically generated for buzzlogix by APIMATIC BETA v2.0 on 12/06/2015
//
#import "Configuration.h"

@implementation Configuration

/** The base Uri for API calls */
+(NSString*) BaseUri
{
    return @"https://buzzlogix-text-analysis.p.mashape.com";
}

/** Supply your API Key.  */
+(NSString*) XMashapeKey
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"XMashapeKey"];
}


@end