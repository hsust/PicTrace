//
//  SYHEditFirstViewController.h
//  PicTrace
//
//  Created by Stephanie Hsu on 12/27/13.
//  Copyright (c) 2013 Stephanie Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SYHEditFirstViewController : UIViewController

@property (nonatomic, retain) UIImage *saved;
@property (nonatomic, retain) IBOutlet UIImageView *imgView;

- (IBAction)dismissModal:(UIBarButtonItem *) sender;

-(void)setImage:(UIImage *)image;

@end
