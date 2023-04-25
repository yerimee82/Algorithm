//
//  main.swift
//  Algorithm
//
//  Created by 김예림 on 2023/03/14.
//
//var stack:[Int] = []
//let n = Int(readLine()!)!
//
//for _ in 1...n{
//    let a = readLine()!.split(separator:" ").map{String($0)}
//    switch a[0] {
//        case "push":
//            push(Int(a[1])!)
//        case "pop":
//            print(pop())
//            break
//        case "size":
//            print(size())
//            break
//        case "empty":
//            print(empty())
//            break
//        case "top":
//            print(top())
//            break
//        default:
//            break
//    }
//
//}
//
//
//func push(_ x:Int){
//    stack.append(x)
//}
//
//func pop() -> Int{
//    if let popValue = stack.popLast() {
//        return popValue
//    } else {
//        return -1
//    }
//}
//
//func size() -> Int{
//    return stack.count
//}
//
//func empty() -> Int{
//    if stack.isEmpty {
//        return 1
//    }else{
//        return 0
//    }
//}
//
//func top() -> Int{
//    if let last = stack.last {
//        return last
//    }else{
//        return -1
//    }
//}
import Foundation

//var stackArray = [Int]()
//var result = [Int]()
//func stackFlow(order: String, n: Int?){
//
//    switch order{
//    case "push":
//        stackArray.append(n!)
//    case "pop":
//        if !stackArray.isEmpty{
//            result.append(stackArray.last!)
//            stackArray.popLast()
//        }else{
//            result.append(-1)
//        }
//    case "size":
//        result.append(stackArray.count)
//    case "empty":
//        if stackArray.isEmpty{
//            result.append(1)
//        }else{
//            result.append(0)
//        }
//    case "top":
//        if !stackArray.isEmpty{
//            result.append(stackArray.last!)
//        }else{
//            result.append(-1)
//        }
//    default:
//        print("Error")
//    }
//}
//
//let input = Int(readLine()!)!
//for _ in 0..<input{
//    let orderMessage = readLine()!.components(separatedBy: " ")
//    if orderMessage.count > 1 {
//        stackFlow(order: orderMessage[0], n: Int(orderMessage[1]))
//    }else{
//        stackFlow(order: orderMessage[0], n: nil)
//    }
//}
//
//for ans in result {
//    print(ans)
//}

/// ** 괄호 ***
//let input = Int(readLine()!)!
//
//func checkVPS(inputArray: Array<String>) -> String{
//    var newArr = [String]()
//
//    for i in 0..<inputArray.count{
//        newArr.append(inputArray[i])
//        if newArr.last == ")" && newArr.count > 1{
//            let secondLast = newArr.dropLast().last
//            if secondLast == "("{
//                newArr.removeLast()
//                newArr.removeLast()
//            }
//        }
//    }
//
//    if newArr.isEmpty{
//        return "YES"
//    }else{
//        return "NO"
//    }
//}
//
//for _ in 0..<input{
//    let Pstring = readLine()!.map{String($0)}
//    print(checkVPS(inputArray: Pstring))
//}

// 좀 더 간단한 방식
let count = Int(readLine()!)!
var stack: [Character] = []

for _ in 0..<count {
    stack = []
    
    let input = String(readLine()!)
    for s in input {
        if s == "(" {
            stack.append(s)
        } else if s == ")" {
            guard let pop = stack.last, pop == "(" else {
                stack.append(s)
                break
            }
            
            stack.removeLast()
        }
    }

    print(stack.isEmpty ? "YES" : "NO")
}

for _ in 0..<count {
    stack = []
    
    let input = String(readLine()!)
    for s in input{
        if s == "("{
            stack.append(s)
        }else if s == ")"{
            guard let pop = stack.last, pop == "(" else {
                stack.append(s)
                break
            }
            
            stack.removeLast()
        }
    }
}
