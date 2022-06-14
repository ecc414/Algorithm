//
//  main.swift
//  24(DFS)
//
//  Created by 엄철찬 on 2022/06/13.
//

import Foundation

let input = Int(String(readLine()!))!

//1의 자리 소수 : 2,3,5,7
//10이상 소수에서 1의 자리 : 1,3,5,7,9

var result = Array<Int>()
var primeNumber = 0

func isPrimeNumber(_ number:Int) -> Bool {
    for num in 2..<number{
        if number % num == 0{
            return false
        }
    }
    return true
}

func DFS(number:Int,depth:Int){
    if depth == input{
        result.append(number)
        return
    }
    for num in [1,3,5,7,9]{
        primeNumber = number*10 + num
        if isPrimeNumber(primeNumber){
            DFS(number: primeNumber, depth: depth+1)
        }
    }
    
}

for num in [2,3,5,7]{
    DFS(number: num, depth: 1)
}

print(result)

