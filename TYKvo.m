//
//  TYKvo.m
//  kvo
//
//  Created by 汤义 on 16/4/22.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import "TYKvo.h"

@implementation TYKvo

-(void)initview {
    if ([self.delegate respondsToSelector:@selector(initDelegate)]) {
        [self.delegate initDelegate];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
