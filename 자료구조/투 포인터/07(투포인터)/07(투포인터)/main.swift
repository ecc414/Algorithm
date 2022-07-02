//
//  main.swift
//  07(투포인터)
//
//  Created by 엄철찬 on 2022/06/26.
//

import Foundation

let numOfInput = Int(String(readLine()!))!
let target     = Int(String(readLine()!))!
let input      = readLine()!.split(separator:" ").map{Int(String($0))!}.sorted()

var start = 0
var end   = numOfInput-1
var count = 0

while (start < end){
    let sum = input[start] + input[end]
    if sum == target{
        count += 1
        start += 1
        end   -= 1
    }else if sum > target{
        end   -= 1
    }else{
        start += 1
    }
}
print(count)


