//
//  Problem2.swift
//  ProjectEulerSwift
//
//  Created by Andrew Budziszek on 9/19/16.
//  Copyright © 2016 Andrew Budziszek. All rights reserved.
//  Project Euler: Problem 2
//  Each new term in the Fibonacci sequence in generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
//  1, 2, 3, 5, 8, 13, 21, 34, 55, 89
//
// By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
//

class Problem2{
    func FibonacciThis(upTo: Int) -> Int {
        var sum = 0
        var last = 1
        var current = 2
        
        while(current < upTo){
            if current % 2 == 0 {
                sum += current
            }
            let temp = last + current
            last = current
            current = temp
        }
        
        return sum
    }
}
