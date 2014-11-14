//
//  RHRoundBorderedButton.m
//  IBDesignable-Objc
//
//  Created by Retso Huang on 11/14/14.
//  Copyright (c) 2014 Retso Huang. All rights reserved.
//

#import "RHRoundBorderedButton.h"

IB_DESIGNABLE
@implementation RHRoundBorderedButton

#pragma mark - Inspectable properties
- (void)setBorderColor:(UIColor *)borderColor {
  _borderColor = borderColor;
  [self setupView];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
  _borderWidth = borderWidth;
  [self setupView];
}
- (void)setCornerRadius:(CGFloat)cornerRadius {
  _cornerRadius = cornerRadius;
  [self setupView];
}

#pragma mark - Overrides
- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self setupDefaultValues];
    [self setupView];
  }
  return self;
}

#pragma mark - Initializer
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self setupDefaultValues];
    [self setupView];
  }
  return self;
}

#pragma mark - Internal functions
- (void)setupDefaultValues {
  self.borderColor = [UIColor blackColor];
  self.cornerRadius = 3.5;
  self.borderWidth = 1.0;
}

- (void)setupView {
  self.layer.borderWidth = self.borderWidth;
  self.layer.borderColor = self.borderColor.CGColor;
  self.layer.cornerRadius = self.cornerRadius;
  [self setNeedsDisplay];
}

@end
