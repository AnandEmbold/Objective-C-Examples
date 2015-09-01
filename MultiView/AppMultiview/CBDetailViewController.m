//
//  CBDetailViewController.m
//  AppMultiview
//
//  Created by Carlos Butron on 01/09/15.
//  Copyright (c) 2015 Carlos Butron. All rights reserved.
//

#import "CBDetailViewController.h"

@interface CBDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblTexto;
- (IBAction)cerrar:(id)sender;

@end

@implementation CBDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.lblTexto.text = self.text;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cerrar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
