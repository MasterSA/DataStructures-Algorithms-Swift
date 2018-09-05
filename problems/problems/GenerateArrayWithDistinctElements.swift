//
//  GenerateArrayWithDistinctElements.swift
//  problems
//
//  Created by Azizur Rahman on 2018-09-04.
//  Copyright © 2018 BigDo. All rights reserved.
//

import Foundation

func distinctArrayOfSumZero(ofSize size: Int) -> [Int] {
    var randNums = [Int]()
    
    for _ in 0..<size {
        var num = 0
        
        repeat {
            num = Int(arc4random_uniform(UInt32(size)))
            
            let isNegative = arc4random_uniform(2) == 1
            
            if isNegative {
                num = -num
                
            }
            
        } while randNums.contains(num)
        
        randNums.append(num)
        
    }
    
    let equalToZero = randNums.reduce(0) { $0 + $1 } == 0
    
    if equalToZero {
        return randNums
        
    } else {
        return distinctArrayOfSumZero(ofSize: size)
        
    }
    
}
