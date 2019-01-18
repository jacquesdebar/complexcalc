//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return (lhs + rhs)
    }
    func subtract(lhs: Int, rhs: Int) -> Int {
        return (lhs - rhs)
    }
    func multiply(lhs: Int, rhs: Int) -> Int {
        return (lhs * rhs)
    }
    func divide(lhs: Int, rhs: Int) -> Int {
        return (lhs / rhs)
    }
    
    
    
    
    func add(_ arr: [Int]) -> Int {
        var ans = 0
        for n in arr {
            ans += n
        }
        return ans
    }
    func multiply(_ arr: [Int]) -> Int {
        var ans = 1
        switch arr.count {
        case 0:
            ans = 0
        default:
            for n in arr {
                ans *= n
            }
        }
        return ans
    }
    
    func count(_ arr: [Int]) -> Int {
        return arr.count
    }

    func avg(_ arr: [Int]) -> Int {
        var total = 0
        let nums = arr.count
        for num in arr {
            total += num
        }
        let ans : Int = total / nums
        return ans
    }
    
    
    
    
    
    //assert(calc.mathOp(args: [1, 2, 3], beg: 0, op: { $0 + $1 }) == 6)
    //    // this is (((0 op 1) op 2) op 3)
    //assert(calc.mathOp(args: [1, 2, 3, 4, 5], beg: 0, op: { $0 + $1 }) == 15)
    //    // this is (((((0 op 1) op 2) op 3) op 4) op 5)
    //assert(calc.mathOp(args: [1, 1, 1, 1, 1], beg: 1, op: { $0 * $1 }) == 1)
    //    // this is (((((1 op 1) op 1) op 1) op 1) op 1)
    //
    //let p1 = (5, 5)
    //let p2 = (12, -27)
    //let p3 = (-4, 4)
    //let p4 = (0, 0)
    //assert(calc.add(lhs: p1, rhs: p2) == (17, -22))
    //assert(calc.subtract(lhs: p1, rhs: p2) == (-7, 32))
    //assert(calc.add(lhs: p4, rhs: p4) == (0, 0))
    //assert(calc.add(lhs: p3, rhs: p4) == (-4, 4))
    //
    //let pd1 = ["x": 5, "y": 5]
    //let pd2 = ["x": -4, "y": 4]
    //assert(calc.add(lhs: pd1, rhs: pd2) == ["x": 1, "y": 9])
    //assert(calc.subtract(lhs: pd1, rhs: pd2) == ["x": 9, "y": 1])

    
    
}
