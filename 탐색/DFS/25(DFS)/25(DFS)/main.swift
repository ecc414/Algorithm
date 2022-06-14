//
//  main.swift
//  25(DFS)
//
//  Created by 엄철찬 on 2022/06/13.
//

import Foundation

let input = readLine()!.split(separator:" ").map{Int(String($0))!}

let n = input[0]    //number of nodes
let m = input[1]    //number of edges

var edgeArray = Array(repeating:[Int](),count:n)
var visited   = Array(repeating:false,count:n)
var result = 0

for _ in 0..<m {    //get data
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    edgeArray[input[0]].append(input[1])
    edgeArray[input[1]].append(input[0])
}

func DFS(node:Int,depth:Int){
    if result == 1{
        return
    }
    if depth == 5{    //문제 조건 만족
        result = 1
        return
    }
    visited[node] = true
    for n in edgeArray[node]{
        if !visited[n] {
            DFS(node:n,depth:depth+1)
        }
    }
    visited[node] = false
}

for node in 0..<n {
    DFS(node:node,depth:1)
    if result == 1{
        break
    }
}

print(result)
