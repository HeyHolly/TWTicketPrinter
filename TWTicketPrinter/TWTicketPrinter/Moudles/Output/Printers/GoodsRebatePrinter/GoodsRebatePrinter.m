//
//  GoodsRebatePrinter.m
//  TWTicketPrinter
//
//  Created by Evan on 16/3/6.
//  Copyright © 2016年 ChangHong. All rights reserved.
//

#import "GoodsRebatePrinter.h"
#import "GoodsItem.h"

@interface GoodsRebatePrinter()
@property (nonatomic, strong) GoodsItem *item;
@end

@implementation GoodsRebatePrinter

- (instancetype)initWithTarget:(id)obj {
    self = [super init];
    if (self) {
        self.item = obj;
    }
    return self;
}

- (NSString *)printString {
    return [NSString stringWithFormat:@"名称：%@, 数量：%@，单价：%.2f(元), 小计:%.2f(元), 节省%.2f(元)",
            self.item.goodsName,
            [NSString stringWithFormat:@"%ld%@", self.item.count, self.item.unitsName],
            self.item.price,
            self.item.totalPrice,
            self.item.savePrice];
}

@end