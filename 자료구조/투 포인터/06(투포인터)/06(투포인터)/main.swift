//
//  main.swift
//  06(투포인터)
//
//  Created by 엄철찬 on 2022/06/26.
//

import Foundation

//연속된 수의 합 공식을 사용
let input = Int(String(readLine()!))!
func sum(_ from:Int,_ to:Int)->Int{
    return (from+end)*(end-from+1)/2
}
var count = 1    //input itself
var start = 1
var end   = 1
while ( end != input ){
    let sum = sum(start,end)
    if sum == input{
        count += 1
        end += 1
    }else if sum > input{
        start += 1
    }else{
        end += 1
    }
}
print(count)








//투 포인터를 이용하여 sum이라는 변수를 더하거나 빼면서 끌고가는방법
let input = Int(String(readLine()!))!

var count = 1    //input itself
var start = 1
var end   = 1
var sum   = 1
while ( end != input ){
    if sum == input{
        count += 1
        end += 1
        sum += end
    }else if sum > input{
        sum -= start
        start += 1
    }else{
        end += 1
        sum += end
    }
}
print(count)
