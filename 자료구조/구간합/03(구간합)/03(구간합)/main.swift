//
//  main.swift
//  03(배열과리스트)
//
//  Created by 엄철찬 on 2022/06/23.
//

import Foundation

let input = readLine()!.split(separator:" ").map{Int(String($0))!}
let (numOfArray,numOfTargets) = (input[0],input[1])
let array = readLine()!.split(separator:" ").map{Int(String($0))!}
var sum   = Array(repeating:0,count:numOfArray+1)
for i in 1...numOfArray{
    if i == 1{
        sum[i] = array[0]
        continue
    }
    sum[i] = sum[i-1] + array[i-1]
}
var targets = [(Int,Int)]()
for _ in 0..<numOfTargets{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    targets.append((input[0],input[1]))
}
for (start,end) in targets{
    print(sum[end]-sum[start-1])
}

