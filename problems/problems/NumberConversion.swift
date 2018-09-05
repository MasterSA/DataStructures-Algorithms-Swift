//
//  DecimalToBinary.swift
//  problems
//
//  Created by Aariz Rahman on 2018-09-01.
//  Copyright © 2018 BigDo. All rights reserved.
//

import Foundation


func decimalToBinary(_ decimal: Int)-> String {
    var binaryDigits = [Character]()
    var n = decimal
    
    while n > 0 {
        binaryDigits.append(Character(String(n % 2)))
        n /= 2
    }
    
    return String(binaryDigits.reversed())
    
}

func power(_ number: Decimal, toThePower power : Int ) -> Decimal {
    guard power > 0 else {
        return 1
    }
    
    var total = number
    
    for _ in 1..<power {
        total *= number
        
    }
    
    return total
    
}

//func binaryToDecimal(_ binary: String) -> Int {
//    
//    let binaryChars = binary[(binary.startIndex)..<(binary.endIndex)].reversed()
//    var total = [Int]()
//    
//    
//    
//}
