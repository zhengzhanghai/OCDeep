//
//  Person.h
//  KVCPrinciple
//
//  Created by 郑章海 on 2020/6/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cat : NSObject

@property (nonatomic, assign) int weight;

@end

@interface Person : NSObject
{
    @public
//    int age;
//    int _age;
//    int _isAge;
//    int isAge;
}

@property (nonatomic, assign) int age;

@property (nonatomic, strong) Cat *cat;

@end


