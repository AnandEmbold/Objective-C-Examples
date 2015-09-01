//
//  CBCellConDelegado.h
//  Celda con delegado
//
//  Created by Carlos on 13/02/14.
//  Copyright (c) 2014 Carlos Butron. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Messages


-(void)showMessage:(NSString *) msg;

@end

@interface CBCellWithDelegate : UITableViewCell
- (IBAction)delegate:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblName;

@property (strong, nonatomic) id<Messages> delegate;

@end
