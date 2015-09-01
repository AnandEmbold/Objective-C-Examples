//
//  CBViewController.m
//  AppMultiview
//
//  Created by Carlos on 31/01/14.
//  Copyright (c) 2014 Carlos Butron. All rights reserved.
//

#import "CBViewController.h"
#import "CBDetailViewController.h"

@interface CBViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;

@property (strong, nonatomic) NSMutableArray * model;
@end

@implementation CBViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.model = [NSMutableArray new];
    [self.model addObject:@"Button1 touched"];
    [self.model addObject:@"Button2 touched"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    CBDetailViewController * c = segue.destinationViewController;
    
    if (sender==self.btn1) {
        c.text = [self.model objectAtIndex:0];
    }
    else {
        c.text = [self.model objectAtIndex:1];
    }
}

@end
