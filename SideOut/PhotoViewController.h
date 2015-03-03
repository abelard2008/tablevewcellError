//
//  PhotoViewController.h
//  SideOut
//
//  Created by 贾利琴 on 3/3/15.
//  Copyright (c) 2015 lawSet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;
@end
