//
//  main.m
//  SkypeLauncher
//
//  Created by Aurimas Niekis on 3/21/13.
//  Copyright (c) 2013 gcds. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{
    NSTask *rmTask;
    NSTask *skypeTask;
    NSArray *rmArguments;
    NSArray *skypeArguments;
    
    rmTask = [[NSTask alloc] init];
    skypeTask = [[NSTask alloc] init];
    
    rmArguments = [NSArray arrayWithObjects: [NSHomeDirectory() stringByAppendingPathComponent:@"/Library/Application Support/Skype/Skype.pid"], nil];
    skypeArguments = [NSArray arrayWithObjects: @"-n", @"/Applications/Skype.app", nil];
    
    [rmTask setLaunchPath: @"/bin/rm"];
    [skypeTask setLaunchPath: @"/usr/bin/open"];
    
    [rmTask setArguments: rmArguments];
    [skypeTask setArguments: skypeArguments];
    
    [rmTask launch];
    [skypeTask launch];
    
    return EXIT_SUCCESS;
}
