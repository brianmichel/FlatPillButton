//
//  FlatPillButtonCell.m
//  DrawingPlayground
//
//  Created by Brian Michel on 11/11/12.
//  Copyright (c) 2012 Foureyes. All rights reserved.
//

#import "FlatPillButtonCell.h"
#import "FlatPillButton.h"

@interface FlatPillButtonCell ()
@property (strong) FlatPillButton *buttonOne;
@property (strong) FlatPillButton *buttonTwo;
@end

@implementation FlatPillButtonCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
      self.buttonOne = [[FlatPillButton alloc] init];
      
      UIFont *font = [UIFont fontWithName:@"Avenir-Black" size:18.0];
      
      [self.buttonOne setTitle:@"Button 1 Super Long" forState:UIControlStateNormal];
      [self.buttonOne setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
      self.buttonOne.titleLabel.font = font;
      
      self.buttonTwo = [[FlatPillButton alloc] init];
      [self.buttonTwo setTitle:@"Button 2" forState:UIControlStateNormal];
      [self.buttonTwo setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
      self.buttonTwo.titleLabel.font = font;
      
      [self randomizeIt];
      
      [self.contentView addSubview:self.buttonOne];
      [self.contentView addSubview:self.buttonTwo];
    }
    return self;
}

- (void)layoutSubviews {
  [super layoutSubviews];
  
  CGFloat buttonWidth = self.frame.size.width/2 - 3.0 * 4;
  self.buttonOne.frame = CGRectMake(4, 2, buttonWidth, self.contentView.frame.size.height - 2);
  self.buttonTwo.frame = CGRectMake(CGRectGetMaxX(self.buttonOne.frame) + 4, 2, buttonWidth, self.contentView.frame.size.height - 2);
}


- (void)prepareForReuse {
  [self randomizeIt];
}

- (void)randomizeIt {
  [self.buttonOne setTitleColor:[UIColor colorWithHue:arc4random() % 256 / 256.0 saturation:1.0 brightness:1.0 alpha:1.0] forState:UIControlStateNormal];
  [self.buttonTwo setTitleColor:[UIColor colorWithHue:arc4random() % 256 / 256.0 saturation:1.0 brightness:1.0 alpha:1.0] forState:UIControlStateNormal];

  self.buttonOne.enabled = arc4random() % 2;
  self.buttonTwo.enabled = arc4random() % 2;
  self.buttonTwo.bold = arc4random() % 2;
  self.buttonOne.bold = arc4random() % 2;
}

@end
