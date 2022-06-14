//
//  main.swift
//  25(DFS)
//
//  Created by 엄철찬 on 2022/06/13.
//

import Foundation

let input = readLine()!.split(separator:" ").map{Int(String($0))!}

let n = input[0]    //number of people   (nodes)
let m = input[1]    //number of relationship    (edges)

let minimumDepth = 5
var arrive = false

var edgeArray = Array(repeating:[Int](),count:n)
var visited = Array(repeating:false,count:n)

for _ in 0..<m{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    edgeArray[input[0]].append(input[1])
    edgeArray[input[1]].append(input[0])
}

func DFS(node:Int,depth:Int){
    if depth == minimumDepth {
        arrive = true
        return
    }
   visited[node] = true
    for i in edgeArray[node]{
        if !visited[i]{
            DFS(node: i,depth:depth+1)
        }
        if arrive{
            break
        }
    }
}

for i in 0..<n{
    DFS(node: i,depth:1)
    if arrive{
        break
    }
    visited = Array(repeating:false,count:n)
}

if arrive{
    print(1)
}else{
    print(0)
}
