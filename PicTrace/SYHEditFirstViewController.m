//
//  SYHEditFirstViewController.m
//  PicTrace
//
//  Created by Stephanie Hsu on 12/27/13.
//  Copyright (c) 2013 Stephanie Hsu. All rights reserved.
//

#import "SYHEditFirstViewController.h"
#import "SYHChoosePhotoViewController.h"

@interface SYHEditFirstViewController ()

@end

@implementation SYHEditFirstViewController

- (IBAction)dismissModal:(UIBarButtonItem *) sender
{
    [self.navigationController popViewControllerAnimated:NO];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"VIEW DID LOAD");
}

- (void) setImage:(UIImage *)image
{
    NSLog(@"HERE");
    NSLog(@"SECOND IMAGE DESCRPIPTION: %@",image.description);
    _saved = image;
    NSLog(@"SAVED IMAGE: %@",_saved.description);
    self.imgView.userInteractionEnabled = YES;
    [self.imgView setImage:self.saved];
    
    
    
    NSLog(@"CURRENT DESCRIPTION: %@",self.imgView.image.description);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
