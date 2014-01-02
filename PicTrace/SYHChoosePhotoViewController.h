//
//  SYHChoosePhotoViewController.h
//  PicTrace
//
//  Created by Stephanie Hsu on 12/23/13.
//  Copyright (c) 2013 Stephanie Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SYHEditFirstViewController.h"

@interface SYHChoosePhotoViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView* imageViewFirst;

@property (strong, nonatomic) IBOutlet UIImageView* imageViewSecond;


- (IBAction) chooseFirstPicture:(id) sender;
- (IBAction) chooseSecondPicture:(id)sender;

- (IBAction)dismissModal:(UIBarButtonItem *) sender;

- (IBAction) prepareEditFirst:(id)sender;
- (IBAction) prepareEditSecond:(id)sender;
@end
