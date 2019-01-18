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
    
    //assert(calc.add(lhs: 2, rhs: 2) == 4)
    func add(lhs: Int, rhs: Int) -> Int {
        return (lhs + rhs)
    }
    
    //assert(calc.subtract(lhs: 2, rhs: 2) == 0)
    func subtract(lhs: Int, rhs: Int) -> Int {
        return (lhs - rhs)
    }
    
    //assert(calc.multiply(lhs: 2, rhs: 2) == 4)
    func multiply(lhs: Int, rhs: Int) -> Int {
        return (lhs * rhs)
    }
    
    //assert(calc.divide(lhs: 2, rhs: 2) == 1)
    func divide(lhs: Int, rhs: Int) -> Int {
        return (lhs / rhs)
    }
    
    
    
    //assert(calc.mathOp(lhs: 5, rhs: 5, op: { ($0 + $1) + ($0 * $1) }) == 35)
    //assert(calc.mathOp(lhs: 10, rhs: -5, op: { ($0 + $1) + ($0 - $1) }) == 20)
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    
    //assert(calc.add([1, 2, 3, 4, 5]) == 15)
    func add(_ arr: [Int]) -> Int {
        var ans = 0
        for n in arr {
            ans += n
        }
        return ans
    }
    
    //assert(calc.multiply([1, 2, 3, 4, 5]) == 120)
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
    
    
    //assert(calc.count([1, 2, 3, 4, 5, 6, 7, 8]) == 8)
    //assert(calc.count([]) == 0)
    func count(_ arr: [Int]) -> Int {
        return arr.count
    }
    
    //assert(calc.avg([2, 2, 2, 2, 2, 2]) == 2)
    //assert(calc.avg([1, 2, 3, 4, 5]) == 3)
    //assert(calc.avg([1]) == 1)
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
    func mathOp (args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        return args.reduce(beg, op)
    }
    
    //let p1 = (5, 5)
    //let p2 = (12, -27)
    //let p3 = (-4, 4)
    //let p4 = (0, 0)
    //assert(calc.add(lhs: p1, rhs: p2) == (17, -22))
    //assert(calc.subtract(lhs: p1, rhs: p2) == (-7, 32))
    //assert(calc.add(lhs: p4, rhs: p4) == (0, 0))
    //assert(calc.add(lhs: p3, rhs: p4) == (-4, 4))
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let xAns: Int = (lhs["x"]! + rhs["x"]!)
        let yAns: Int = (lhs["y"]! + rhs["y"]!)
        return ["x": xAns, "y": yAns]
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let xAns = lhs.0 + rhs.0
        let yAns = lhs.1 + rhs.1
        return (xAns, yAns)
    }
    
    //
    //let pd1 = ["x": 5, "y": 5]
    //let pd2 = ["x": -4, "y": 4]
    //assert(calc.add(lhs: pd1, rhs: pd2) == ["x": 1, "y": 9])
    //assert(calc.subtract(lhs: pd1, rhs: pd2) == ["x": 9, "y": 1])
    
    
    
    

    
    
}
