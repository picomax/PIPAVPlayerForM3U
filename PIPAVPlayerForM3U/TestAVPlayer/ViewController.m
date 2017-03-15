//
//  ViewController.m
//  TestMPMPlayer
//
//  Created by picomax on 2016. 6. 15..
//  Copyright © 2016년 picomax. All rights reserved.
//

#import <AVKit/AVKit.h>
#import "HybridAVPlayerViewController.h"
#import "CustomAVPlayerViewController.h"
#import "PIPAVPlayerViewController.h"
#import "PlainAVPlayerViewController.h"
#import "ViewController.h"

//NSString *const DefaultVideoUrl = @"http://farm32.ids.skplanet.com:8012/hub/candy/media/1001000/1001000012/1001000012.mp4";
NSString *const DefaultVideoUrl = @"http://qthttp.apple.com.edgesuite.net/1010qwoeiuryfg/sl.m3u8";

@interface ViewController () <AVPlayerViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UITextField *degreeTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_urlTextField addTarget:self
                        action:@selector(dismissKeyboard:)
              forControlEvents:UIControlEventEditingDidEndOnExit];
    
    [_degreeTextField addTarget:self
                      action:@selector(dismissKeyboard:)
            forControlEvents:UIControlEventEditingDidEndOnExit];
}

- (IBAction)hybridAVPlayerButtonTapped:(id)sender {
    NSString *urlString = _urlTextField.text;
    NSString *degreeString = _degreeTextField.text;
    
    if(urlString == nil || [urlString length] == 0){
        urlString = DefaultVideoUrl;
    }
    
    if([urlString hasPrefix:@"http"] == NO){
        urlString = [NSString stringWithFormat:@"http://%@", urlString];
    }
    
    if(degreeString == nil || [degreeString length] == 0){
        degreeString = @"0";
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    CGFloat degree = [degreeString floatValue];
    
    if(url == nil || [url.absoluteString isEqualToString:@"http://"] == YES){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"URL Error!"
                                                       message:@"Please check the URL you entered." delegate:self
                                             cancelButtonTitle:@"Confirm"
                                             otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    HybridAVPlayerViewController *playerViewController = [[HybridAVPlayerViewController alloc] initWithNibName:NSStringFromClass([HybridAVPlayerViewController class]) bundle:nil];
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    [playerViewController setVideoWithFrame:CGRectMake(20, 90, frame.size.width-40, frame.size.height-180) videoUrl:url degree:degree];
    
    [self presentViewController:playerViewController animated:YES completion:^{
        [playerViewController playVideo];
    }];
}

- (IBAction)customAVPlayerButtonTapped:(id)sender {
    NSString *urlString = _urlTextField.text;
    NSString *degreeString = _degreeTextField.text;
    
    if(urlString == nil || [urlString length] == 0){
        urlString = DefaultVideoUrl;
    }
    
    if([urlString hasPrefix:@"http"] == NO){
        urlString = [NSString stringWithFormat:@"http://%@", urlString];
    }
    
    if(degreeString == nil || [degreeString length] == 0){
        degreeString = @"0";
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    CGFloat degree = [degreeString floatValue];
    
    if(url == nil || [url.absoluteString isEqualToString:@"http://"] == YES){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"URL Error!"
                                                       message:@"Please check the URL you entered." delegate:self
                                             cancelButtonTitle:@"Confirm"
                                             otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    CustomAVPlayerViewController *playerViewController = [[CustomAVPlayerViewController alloc] initWithNibName:NSStringFromClass([CustomAVPlayerViewController class]) bundle:nil];
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    [playerViewController setVideoWithFrame:CGRectMake(20, 90, frame.size.width-40, frame.size.height-180) videoUrl:url degree:degree];
    
    [self presentViewController:playerViewController animated:YES completion:^{
        [playerViewController playVideo];
    }];
}

- (IBAction)pipAVPlayerButtonTapped:(id)sender {
    NSString *urlString = _urlTextField.text;
    NSString *degreeString = _degreeTextField.text;
    
    if(urlString == nil || [urlString length] == 0){
        urlString = DefaultVideoUrl;
    }
    
    if([urlString hasPrefix:@"http"] == NO){
        urlString = [NSString stringWithFormat:@"http://%@", urlString];
    }
    
    if(degreeString == nil || [degreeString length] == 0){
        degreeString = @"0";
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    CGFloat degree = [degreeString floatValue];
    
    if(url == nil || [url.absoluteString isEqualToString:@"http://"] == YES){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"URL Error!"
                                                       message:@"Please check the URL you entered." delegate:self
                                             cancelButtonTitle:@"Confirm"
                                             otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    PIPAVPlayerViewController *playerViewController = [[PIPAVPlayerViewController alloc] initWithNibName:NSStringFromClass([PIPAVPlayerViewController class]) bundle:nil];
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    NSLog(@"--> %f, %f", frame.size.width, frame.size.height);
    //[playerViewController setVideoWithFrame:CGRectMake(20, 90, frame.size.width-40, frame.size.height-180) videoUrl:url degree:degree];
    [playerViewController setVideoWithFrame:frame videoUrl:url degree:degree];
    
    [self presentViewController:playerViewController animated:YES completion:^{
        
    }];
}

- (IBAction)plainAVPlayerButtonTapped:(id)sender {
    NSString *urlString = _urlTextField.text;
    NSString *degreeString = _degreeTextField.text;
    
    if(urlString == nil || [urlString length] == 0){
        urlString = DefaultVideoUrl;
    }
    
    if([urlString hasPrefix:@"http"] == NO){
        urlString = [NSString stringWithFormat:@"http://%@", urlString];
    }
    
    if(degreeString == nil || [degreeString length] == 0){
        degreeString = @"0";
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    CGFloat degree = [degreeString floatValue];
    
    if(url == nil || [url.absoluteString isEqualToString:@"http://"] == YES){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"URL Error!"
                                                       message:@"Please check the URL you entered." delegate:self
                                             cancelButtonTitle:@"Confirm"
                                             otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    PlainAVPlayerViewController *playerViewController = [[PlainAVPlayerViewController alloc] initWithNibName:NSStringFromClass([PlainAVPlayerViewController class]) bundle:nil];
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    NSLog(@"--> %f, %f", frame.size.width, frame.size.height);
    [playerViewController setVideoWithFrame:CGRectMake(20, 90, frame.size.width-40, frame.size.height-180) videoUrl:url degree:degree];

    [self presentViewController:playerViewController animated:YES completion:^{
        
    }];
}

- (IBAction)dismissKeyboard:(id)sender {
    [self.view endEditing:YES];
}

@end
