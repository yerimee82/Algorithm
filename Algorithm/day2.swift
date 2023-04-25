//
//  day2.swift
//  Algorithm
//
//  Created by 김예림 on 2023/03/08.
//

import Foundation
// *** 베르트랑 공준 ***
//func isPrimeNum(n:Int)->Bool{
//    if n == 1{
//        return false
//    }
//    for i in 2..<Int(sqrt(Double(n))+1){
//        if n % i == 0{
//            return false
//        }
//    }
//    return true
//}
//
//var array = [Int]()
//while let input = readLine(){
//    let num = Int(input)!
//    if num == 0{
//        break
//    }
//
//    array.append(num)
//}
//
//for i in 0..<array.count{
//    var result: Int = 0
//    for j in array[i]+1...2 * array[i]{
//        if isPrimeNum(n: j){
//            result += 1
//        }
//    }
//    print(result)
//
//}
// *** 수열 N 과 M ***
// DFS를 활용한 백트랙킹 문제
let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
var n: Int = input[0]
var m: Int = input[1]

var array = [Int]()

func permute(){
    if array.count == m {
        print(array.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 1...n{
        if !array.contains(i){
            array.append(i)
            permute()
            array.popLast()
        }
    }
}

permute()
