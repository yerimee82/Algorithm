//
//  main.swift
//  Algorithm
//
//  Created by 김예림 on 2023/03/15.
//

import Foundation

// ***제로 ***
let input = Int(readLine()!)!
var stack = [Int]()
var sum = 0
var result = 0

func getSum(n: Int) -> Int {
    guard n == 0 else{
        stack.append(n)
        sum += n
        return sum
    }
    sum -= stack.last!
    stack.removeLast()
    return sum
}

for _ in 0..<input{
    let iNum = Int(readLine()!)!
    result = getSum(n: iNum)
}
print(result)

