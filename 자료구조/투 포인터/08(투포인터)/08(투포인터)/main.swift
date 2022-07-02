//
//  main.swift
//  08(투포인터)
//
//  Created by 엄철찬 on 2022/06/26.
//

import Foundation

var input = [Int]()

for i in stride(from: 43, through: 947, by: 1){
    if i % 7 == 0 {
        input.append(i)
    }
    input.append(i)
}

//let numOfInput = //Int(String(readLine()!))!
//let input      = [3,4,5,7,8,20,45,60,78,100,120,150,231,250]//readLine()!.split(separator:" ").map{Int(String($0))!}.sorted()
let numOfInput = input.count
var count = 0

for index in 0..<numOfInput{
    var start = 0
    var end   = numOfInput-1
    while(start<end){
        let find = input[index]
        let sum  = input[start] + input[end]
        if sum == find{
            if start != index && end != index{
                count += 1
                break
            }else if start == index{
                start += 1
            }else if end   == index{
                end   -= 1
            }
            
        }else if sum > find{
            end -= 1
        }else{
            start += 1
        }
    }
}

print(count)
