//
//  FlatPillButton.h
//  DrawingPlayground
//
//  Created by Brian Michel on 11/11/12.
//  Copyright (c) 2012 Foureyes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlatPillButton : UIButton

//Sets a thicker outline
@property (assign) BOOL bold;

//For the lazy...
+ (FlatPillButton *)button;
@end
