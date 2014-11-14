//
//  RHRoundBorderedButton.h
//  IBDesignable-Objc
//
//  Created by Retso Huang on 11/14/14.
//  Copyright (c) 2014 Retso Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RHRoundBorderedButton : UIButton

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@end
