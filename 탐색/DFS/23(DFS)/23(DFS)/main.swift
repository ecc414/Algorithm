//
//  main.swift
//  23(DFS)
//
//  Created by 엄철찬 on 2022/06/13.
//


//component보다 split이 빠르다
//String{$0}으로 변환 후 Int로 변환하는 것이 빠르다
//데이터 입력 받는 for 루프문에서 1...m 하면 런타임 에러, 0..<m 으로 하면 성공
import Foundation

let input = readLine()!.split(separator:" ").map{Int(String($0))!}
let n = input[0]
let m = input[1]
var edgeArray = Array(repeating:[Int](),count:n+1)
var visited = Array(repeating:false,count:n+1)
var result = 0

for _ in 0..<m {
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    edgeArray[input[0]].append(input[1])
    edgeArray[input[1]].append(input[0])
}

func DFS(node:Int){
    guard !visited[node] else { return }
    visited[node] = true
    for visit in edgeArray[node]{
        guard !visited[visit] else { continue }
        DFS(node:visit)
    }
}

for node in 1...n{
    guard !visited[node] else { continue }
    result += 1
    DFS(node:node)
}

print(result)
