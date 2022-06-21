//
//  main.swift
//  30(BinarySearch)
//
//  Created by 엄철찬 on 2022/06/21.
//

import Foundation

let input         = readLine()!.split(separator:" ").map{Int(String($0))!}
let (numOfLectures,min) = (input[0],input[1])
let lectures      = readLine()!.split(separator: " ").map{Int(String($0))!}
//binarySearch
var start = lectures.max()!     // !!!!!!!! lectures[numOfLectures - 1]해서 계속 틀림
var end   = lectures.reduce(0,+)
while(start<end){
    let mid   = (start + end) / 2
    var sum = 0
    //var count = 0
    var count = 1
    for lecture in lectures{
        if sum + lecture > mid{
            sum = lecture
            count += 1
        }else{
            sum += lecture
        }
    }
//    if sum != 0 {
//        count += 1
//    }
    if count > min {
        start = mid + 1
    }else{
        end   = mid
    }
    print("start : \(start), end : \(end), mid : \(mid), count : \(count)")
}

print(start)
