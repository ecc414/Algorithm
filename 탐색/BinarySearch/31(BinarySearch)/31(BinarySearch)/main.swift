//
//  main.swift
//  31(BinarySearch)
//
//  Created by 엄철찬 on 2022/06/21.
//

import Foundation

let n = Int(String(readLine()!))!    //size of array
let k = Int(String(readLine()!))!    //target!
    
var start = 1
var end   = n*n
var answer = 0
while(start<=end){
    let mid = (start + end) / 2
    var count = 0
    for i in 1...n{
        count += min( mid / i , n )
    }
    if count < k {
        start = mid + 1
    }else{
        end   = mid - 1
        answer = mid
    }
}
print(answer)
