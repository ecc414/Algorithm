//
//  main.swift
//  23(DFS)
//
//  Created by 엄철찬 on 2022/06/13.
//


//component보다 split이 빠르다
//String{$0}으로 변환 후 Int로 변환하는 것이 빠르다

import Foundation


let input = readLine()!.split(separator:" ").map{Int(String($0))!}

let numOfNodes = input[0]

let numOfEdges = input[1]

var edgeArray : [[Int]] = Array(repeating:[],count: numOfNodes+1)

var visited = Array(repeating:false ,count:numOfNodes+1)

var result = 0

for _ in 0..<numOfEdges {
    let temp = readLine()!.split(separator:" ").map{Int(String($0))!}
    edgeArray[temp[0]].append(temp[1])
    edgeArray[temp[1]].append(temp[0])
}

func DFS(_ startNode:Int){
    guard !visited[startNode] else {return}
    visited[startNode] = true
    for willVisit in edgeArray[startNode]{
        DFS(willVisit)
    }
}

print("edgeArray is \(edgeArray)")

for node in 1..<numOfNodes{
    if !visited[node]{
        result += 1
        DFS(node)
    }
}

print("visited is \(visited)")

print("result is \(result)")

