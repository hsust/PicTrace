//
//  SYHChoosePhotoViewController.m
//  PicTrace
//
//  Created by Stephanie Hsu on 12/23/13.
//  Copyright (c) 2013 Stephanie Hsu. All rights reserved.
//

#import "SYHChoosePhotoViewController.h"
#import "SYHEditFirstViewController.h"

@interface SYHChoosePhotoViewController ()

@end

@implementation SYHChoosePhotoViewController

int imageNum = 0;

- (IBAction)dismissModal:(UIBarButtonItem *) sender
{
    [self.navigationController popViewControllerAnimated:NO];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction) chooseFirstPicture:(id) sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    imageNum = 1;
    
    [imagePicker setDelegate:self];
    
    [self presentModalViewController:imagePicker animated:YES];
}


-(IBAction) chooseSecondPicture:(id) sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    imageNum = 2;
    [imagePicker setDelegate:self];
    
    [self presentModalViewController:imagePicker animated:YES];
}

- (void) imagePickerController:(UIImagePickerController *)picker
         didFinishPickingImage:(UIImage *)image
                   editingInfo:(NSDictionary *)editingInfo
{
    NSLog(@"IMAGE DESCRIPTION: %@",image.description);
    if (imageNum == 1) {
        self.imageViewFirst.userInteractionEnabled = YES;
        self.imageViewFirst.image = image;
    }
    else if (imageNum == 2) {
        self.imageViewSecond.userInteractionEnabled = YES;
        self.imageViewSecond.image = image;
    }
    [self dismissModalViewControllerAnimated:YES];
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([[segue identifier] isEqualToString:@"First"]) {
//        SYHEditFirstViewController *vc = [segue destinationViewController];
//        [vc setImage:self.imageViewFirst.image];
//    }
//}

-(IBAction) prepareEditFirst:(id)sender {
    SYHEditFirstViewController *viewcontroller = [[SYHEditFirstViewController alloc] initWithNibName:@"SYHEditFirstViewController" bundle:nil];
    [self presentViewController:viewcontroller animated:YES completion: nil];
    [viewcontroller setImage:self.imageViewFirst.image];
}




- (void)viewDidLoad
{
    [super viewDidLoad];

    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
