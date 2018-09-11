# DataStructures-Algorithms-Swift
Data Structures, Algorithms and Problems with Solutions in Swift.




Question : [PermCheck](https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/)

import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var areErrors = false
    var checkTimes : [Int : Int] = [:]
    
    for n in A {
        if let _ = checkTimes[n] {
            return 0
            
        } else {
            checkTimes[n] = 1
            
        }
        if !(1...A.count ~= n) {
            areErrors = true
            break
            
        }
        
    }
    

    
    return  areErrors ? 0 : 1
}



Problem : [FrogRiverOne](https://app.codility.com/programmers/lessons/4-counting_elements/frog_river_one/)

import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var time = -1
    var leavesFilled = Array(repeating: false, count: X)
    var leaves = 0
    for (K,V) in A.enumerated() {
        if leavesFilled[V - 1] == true {
            continue
            
        }
        leavesFilled[V - 1] = true
        leaves += 1
        if leaves == X {
            time = K
            break
            
        }
    }
    
    return time
    
}
