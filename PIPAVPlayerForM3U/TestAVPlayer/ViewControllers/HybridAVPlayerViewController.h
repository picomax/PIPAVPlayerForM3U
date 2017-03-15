//
//  HybridAVPlayerViewController.h
//  TestAVPlayer
//
//  Created by hooni on 2017. 3. 9..
//  Copyright © 2017년 picomax. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HybridAVPlayerViewController : UIViewController
- (void)setVideoWithFrame:(CGRect)frame videoUrl:(NSURL*)url degree:(CGFloat)degree;
- (void)playVideo;
@end
