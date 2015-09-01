//
//  CBCellWithDelegate.h
//  Cell With Delegate
//
//  Created by Carlos on 13/02/14.
//  Copyright (c) 2014 Carlos Butron. All rights reserved.
//

#import "CBCellWithDelegate.h"

@implementation CBCellWithDelegate

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)delegate:(id)sender {
    
    [self.delegate showMessage:self.lblName.text];
    
}
@end
