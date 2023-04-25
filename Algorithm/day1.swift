//
//  main.swift
//  Algorithm
//
//  Created by 김예림 on 2023/01/03.
//

// 1부터 n의 합을 구하는 프로그램
import Foundation
//
//let n = Int(readLine()!)!
//var total:Int = 0
//
//for x in 1...n{
//    total += x
//}
//
//print(total)

// 소수

//공백 문자를 기준으로 한 줄 정수 입력받기 -> Array<Int>
// ***기본 버전***
// 단순한 소수 판별 방법 : 1. 2부터 자기자신보다 -1 까지의 수 중에서 나누었을 때, 나머지가 0이 되면 -> 소수가 아님
// isPrimeNum 함수는 입력값(정수)에 대해 소수인지 아닌지를 판별
// 시간 복잡도 n

// ***시간 복잡도를 줄이는 방법***
// 자기 자신의 제곱근까지만 확인하면 됨
// 제곱근 정수 값 구하기 : Int(sqrt(Double(n) + 1)
// 시간복잡도 : 루트 n
//func isPrimeNum(number:Int) -> Bool{
//    if number == 1{
//        return false
//    }
//    for i in 2..<Int(sqrt(Double(number))+1){
//        if number % i == 0{ //나누어 떨어지면
//            return false //소수가 아님
//        }
//    }
//    return true
//}
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//let start = input[0]
//let end = input[1]
//
//for x in start...end{
//    if isPrimeNum(number: x){
//        print(x)
//    }
//}


// ***에라토스테네스의 체 사용하여 소수 구하기***
// 1. 1부터 100까지의 수에 대해 소수 판별을 위한 bool -> true 배열 생성
// 2. 제곱근까지만 진행해도 됨 ( ex) 20에 대해 소수 판별 -> 1*20 2*10 4*5 5*4 .. 반복되기 때문)
// 3. x의 배수인지 판별 -> x로 나누어 떨어지므로 소수가 아님 , bool -> false로 변경
// 4. bool -> true 인것만 출력

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let start = input[0]
//let end = input[1]
//
//var isPrimeNum = [Bool](repeating: true, count: end+1)
//isPrimeNum[1] = false
//
//for i in 2..<Int(sqrt(Double(end))+1){
//    if isPrimeNum[i] {
//            var j = 2
//            while i * j <= end {
//                isPrimeNum[i * j] = false
//                j += 1
//            }
//        }
//}
//
/// 소수 출력
//for x in start...end{
//    if isPrimeNum[x] {
//        print(x)
//    }
//}

// ***소수 개수 구하기 ***
// 1. 소수 판별 함수
func isPrimeNum(n:Int)->Bool{
    if n == 1{
        return false
    }
    for i in 2..<Int(sqrt(Double(n))+1){
        if n % i == 0{
            return false
        }
    }
    return true
}

var array = [Int]()
var total:Int = 0

if readLine() != nil{
    let input = readLine()!
    array = input.components(separatedBy: " ").map{Int($0)!}
    
}

for num in array{
    if isPrimeNum(n: num){
        total += 1
    }
}

print(total)





