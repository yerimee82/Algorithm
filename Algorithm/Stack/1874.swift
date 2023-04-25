//
//  1874.swift
//  Algorithm
//
//  Created by 김예림 on 2023/04/25.
//

import Foundation

// 1. "(" 일 경우와 ")" 일 경우 두가지에 대해서 생각하면 된다.
// 2. "(" 이면 stack 에 넣는다.
// 3. 바로 다음 ")" 가 나온다면, 레이저이다. -> 레이저일 경우 토탈 개수에 현재 stack 길이만큼 더함. 마지막 pop
// 4. ")" 가 나오고 그 전에도 ")" 라면 -> 쇠막대기의 끝. 토탈 개수 하나를 증가시키고 stack 에서 마지막 요소 pop.

func stackLazer() {
    let inputArr = Array(readLine()!)
    var stack = [Character]()
    var result = 0
    
    for i in 0..<inputArr.count {
        switch inputArr[i] {
        case "(" :
            stack.append(inputArr[i])
        default :
            if inputArr[i-1] == "(" {
                // 레이저임
                stack.removeLast()
                result += stack.count
            } else {
                // 이전이 ")" 일 때
                result += 1
                stack.removeLast()
            }
        }
    }
    
    print(result)
    
}



