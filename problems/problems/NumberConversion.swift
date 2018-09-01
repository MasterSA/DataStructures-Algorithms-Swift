//
//  DecimalToBinary.swift
//  problems
//
//  Created by Aariz Rahman on 2018-09-01.
//  Copyright © 2018 BigDo. All rights reserved.
//

import Foundation


func decimalToBinary(_ decimal: Int)-> [Int] {
    var binaryDigits = [Int]()
    var n = decimal
    
    while n > 0 {
        binaryDigits.append(n % 2)
        n /= 2
    }
    
    return binaryDigits.reversed()
    
}
