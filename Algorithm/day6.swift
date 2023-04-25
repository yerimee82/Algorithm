//
//  day6.swift
//  Algorithm
//
//  Created by 김예림 on 2023/03/17.
//

import Foundation

let input = Int(readLine()!)!
let sentence = readLine()!
var stack = [Character]()

func prefix(newArr: [Character]) {
    for s in newArr {
        switch s {
        case "*", "+", "/", "-" :
            var s1 = stack.popLast()
            var s2 = stack.popLast()
            
            
        default:
            stack.append(s)
        }
    }
}

let sArr = Array(sentence)
prefix(newArr: sArr)

