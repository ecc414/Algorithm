//
//  main.swift
//  26(BFS)
//
//  Created by 엄철찬 on 2022/06/14.
//

import Foundation

let input = readLine()!.split(separator:" ").map{Int(String($0))!}

let n = input[0]    //number of nodes
let m = input[1]    //number of edges
let start = input[2]    //start node

var edgeArray = Array(repeating:[Int](),count:n+1)

for _ in 1...m{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    edgeArray[input[0]].append(input[1])
    edgeArray[input[1]].append(input[0])
}

for _ in 1...n{
    edgeArray[n].sort()     //방문할 수 있는 노드가 여러개인 경우 번호가 작은 것을 먼저 방문하기 위해 정렬
}                           //sort와 sorted의 차이는 원본을 건드느냐 안건드느냐

var resultForDFS = Array<Int>()
var visited = Array(repeating:false,count:n+1)

func DFS(_ startNode:Int){
    guard !visited[startNode] else {return}
    visited[startNode] = true
    resultForDFS.append(startNode)
    for node in edgeArray[startNode]{
        DFS(node)
    }
}

DFS(start)

var resultForBFS = Array<Int>()
visited = Array(repeating:false,count:n+1)
var queue = Array<Int>()

//func BFS(_ startNode:Int,queue:[Int]){
//    guard !visited[startNode] else {return}
//    visited[startNode] = true
//    resultForBFS.append(startNode)
//
//    for node in queue {
//        BFS(node, queue: queue+edgeArray[startNode])
//    }
//} 재귀함수 형태

//Queue를 이용한 형태
func BFS(_ startNode:Int){
    visited[startNode] = true
    resultForBFS.append(startNode)
    queue += edgeArray[startNode]
    repeat{
        let remove = queue.removeFirst()
        if !visited[remove]{
            queue += edgeArray[remove]
            visited[remove] = true
            resultForBFS.append(remove)
        }
    }while(!queue.isEmpty)
}


BFS(start)

print(resultForDFS)
print(resultForBFS)
