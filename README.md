# DataStructures-Algorithms-Swift
Data Structures, Algorithms and Problems with Solutions in Swift.


import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func convertToBinary(_ decimal: Int) -> [Int] {
    var binary = [Int]()
    
    var n = decimal
    
    while n > 0 {
        binary.append(n % 2)
        n /= 2
        
    }
    
    return binary.reversed()
    
}

public func solution(_ N : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    let binaryDigits = convertToBinary(N)
    var gaps : [Int] = []
    
    outerCheck: for (p, d)  in binaryDigits.enumerated() {
        switch d {
            case 1: 
                if p == binaryDigits.count - 1 {
                    break
                    
                }
                
                var count = 0
                var gapPosition = p + 1
                var isEnd = false
                
                while gapPosition < binaryDigits.count && !isEnd {
                    switch binaryDigits[gapPosition] {
                        case 1:
                        gaps.append(count)
                        gapPosition += 1
                        isEnd = true
                        default:
                        count += 1
                        gapPosition += 1
                        isEnd = false
                        
                    }
                }
                
            default:
            continue outerCheck
            
        }
        
    }
    
    guard gaps != [] else {
        return 0
        
    }
    
    return  gaps.reduce(0) {
        if $0 < $1 {
            return $1
            
        } else {
            return $0
            
        }
        
    }
    
}
