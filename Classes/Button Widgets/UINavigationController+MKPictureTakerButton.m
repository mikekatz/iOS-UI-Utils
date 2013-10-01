//
//  UINavigationController+MKPictureTakerButton.m
//  iOS UI Utils
//
//  Copyright 2013 Michael Katz
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "UINavigationController+MKPictureTakerButton.h"

@interface UINavigationController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation UINavigationController (MKPictureTakerButton)

- (void)setCameraAction:(UIButton*)button
{
    [button addTarget:self action:@selector(takePicture:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction) takePicture:(id)sender
{
    UIImagePickerController* imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    } else {
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    
    [self presentViewController:imagePicker animated:YES completion:^{
        
    }];
}

#pragma mark - pictures

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
    [self dismissModalViewControllerAnimated:YES];
    //do something with the image
}


@end
