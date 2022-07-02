//
//  main.swift
//  04(구간합)
//
//  Created by 엄철찬 on 2022/06/23.
//

import Foundation

let input = readLine()!.split(separator:" ").map{Int(String($0))!}
let (sizeOfArr,numOfTargets) = (input[0],input[1])
var array : [[Int]] = Array(repeating:[],count:sizeOfArr+1)
for _ in 0...sizeOfArr{
    array[0].append(0)
}
for i in 1...sizeOfArr{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    array[i] = [0] + input
}


var sum = Array(repeating:Array(repeating:0,count:sizeOfArr+1),count:sizeOfArr+1)
for i in 1...sizeOfArr{
    for j in 1...sizeOfArr{
       // if i == 1 && j == 1{
       //     sum[i][j] = array[i][j]
      //  }else if i == 1{
       //     sum[i][j] = sum[i][j-1] + array[i][j]
      //  }else if j == 1{
      //      sum[i][j] = sum[i-1][j] + array[i][j]
     //   }else{
            sum[i][j] = sum[i-1][j] + sum[i][j-1] - sum[i-1][j-1] + array[i][j]
     //   }
    }
}

//var targets = Array(repeating:[Int](),count:numOfTargets)
for _ in 0..<numOfTargets{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])
   // targets[i] = input
    let answer = sum[x2][y2] - sum[x2][y1 - 1] - sum[x1 - 1][y2] + sum[x1 - 1][y1 - 1]
    print(answer)
}


//for target in targets{
 //   print(sum[target[3]][target[2]] - sum[target[2]][target[1]-1] - sum[target[0]-1][target[3]] + array[target[0]-1][target[1]-1])
//}



