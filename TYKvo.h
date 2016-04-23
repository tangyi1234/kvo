//
//  TYKvo.h
//  kvo
//
//  Created by 汤义 on 16/4/22.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 这就是对应的是NSKVONotifying_******这个类
 */
@protocol KCButtonDelegate <NSObject>
- (void)initDelegate;
@end
@interface TYKvo : UIView
@property (nonatomic, weak) id<KCButtonDelegate> delegate;
- (void)initview;
@end
