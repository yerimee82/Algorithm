//
//  main.swift
//  Algorithm
//
//  Created by 김예림 on 2023/03/20.
//

import Foundation

// [left] cursor [right] 과 같은 구조로 생각한다
// 기존 left 배열에 커서가 들어와 이동하면, 해당 요소는 right 으로 옮긴다.

var right = Array(readLine()!)
var rightArr = [Character]()

let times = Int(readLine()!)!

for _ in 0..<times {
    let order = readLine()!
    switch order {
    case "L" :
        if !right.isEmpty {
            rightArr.append(right.removeLast())
        }
    case "D" :
        if !rightArr.isEmpty {
            right.append(rightArr.removeFirst())
        }
    case "B" :
        if !right.isEmpty {
            right.removeLast()
        }
    default:
        right.append(order.last!)
    }
}

print(String(right+rightArr.reversed()))


