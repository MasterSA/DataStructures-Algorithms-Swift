//
//  BinaryGap.swift
//  problems
//
//  Created by Aariz Rahman on 2018-09-04.
//  Copyright © 2018 BigDo. All rights reserved.
//

/* Question (From Codility) :
 A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
 
 For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.
 
 Write a function:
 
 int solution(int N);
 
 that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.
 
 For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..2,147,483,647].
 Copyright 2009–2018 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.

 */

import Foundation


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

public func binaryGap(_ N : Int) -> Int {
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
