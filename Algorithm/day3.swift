//
//  main.swift
//  Algorithm
//
//  Created by 김예림 on 2023/03/10.
//

import Foundation
// ***두 수의 최대공약수와 최소공배수***
//let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
//var x = input[0]
//var y = input[1]

//var dividedArray = [Int]()
//var bigNum:Int = 1
//
//func isDivided(n:Int)->Int{
//    for i in 1...n{
//        if n % i == 0{
//            if dividedArray.contains(i){
//                if bigNum < i{
//                    bigNum = i
//                }
//            }
//            dividedArray.append(i)
//        }
//
//    }
//    return bigNum
//}
//
//func isMultiple(n:Int)->Int{
//    let multiX = x / n
//    let multiY = y / n
//
//    return n * multiX * multiY
//}
//
//var num = isDivided(n: y)
//num = isDivided(n: x)
//
//var result = isMultiple(n: num)
//print("\(num)")
//print("\(result)")


// * 유클리드 호제법으로 풀기 *
//var max = input.max()!
//var min = input.min()!
//var r = max % min
//
//while r > 0{
//    max = min
//    min = r
//    r = max % min
//}
//// 최소공배수 => a * b / gcd(a,b)
//print(min)
//print(input[0] * input[1] / min)



/// ***골드바흐의 추측 ***
func isPrime(n : Int) -> Bool{
    if n == 1 {
        return false
    }
    for x in 2..<Int(sqrt(Double(n))+1){
        if n % x == 0{
            return false
        }
    }
    return true
}

func primeList(n: Int) -> Array<Int>{
    var primeNum = [Int]()
    
    for i in 1...n{
        if isPrime(n: i){
            primeNum.append(i)
        }
    }
    return primeNum
}

func getPrimeSum(inputArray: Array<Int>, num: Int){
    var dic = Dictionary<Int, Int>()
    for n in inputArray{
        let k = num - n
        if inputArray.contains(k){
            dic[n] = k
        }
    }
    for (key,value) in dic{
        var minDiv =
        if minDiv < abs(
    }
    
    print(dic)
}
var array = [Int]()
var time = Int(readLine()!)!
var i = 0

while i < time{
    let input = Int(readLine()!)!
    array.append(input)
    i += 1
}

for input in array{
    var result = primeList(n: input)
    getPrimeSum(inputArray: result, num: input)
}


